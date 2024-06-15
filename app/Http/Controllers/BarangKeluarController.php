<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use App\Models\BarangKeluar;
use App\Models\MainCustomer;
use App\Models\Stok;
use Illuminate\Http\Request;

class BarangKeluarController extends Controller
{
    public function index()
    {
        $barangKeluarList = BarangKeluar::with('barang', 'customer')->get()->sortByDesc('created_at');
        $barangList = Barang::with('jenis', 'satuan')->get();
        $customerList = MainCustomer::all();

        // dd($barang);
        // return view("page.barangkeluar.index", compact("barang_keluar", "barang", "customer"));
        return view("page.barangkeluar.index", compact("barangKeluarList", "barangList", "customerList"));
    }
    public function tambah()
    {
        $barangKeluarList = BarangKeluar::with('barang', 'customer')->get()->sortByDesc('created_at');
        $barangList = Barang::with('jenis', 'satuan')->get();
        $customerList = MainCustomer::all();

        return view("page.barangkeluar.tambah", compact("barangKeluarList", "barangList", "customerList"));
    }
    public function store(Request $request)
    {

        $request->validate([
            'kd_brg_keluar' => 'required|unique:barang_keluars',
            'tgl_keluar' => 'required|date',
            'barang_id' => 'required',
            'customer_id' => 'required',
            'brg_keluar' => 'required|integer',
        ]);

        $barangKeluar = BarangKeluar::create($request->all());

        $stok = Stok::where('barang_id', $barangKeluar->barang_id)->first();
        $stok->stok -= $barangKeluar->brg_keluar;
        $stok->brg_keluar += $barangKeluar->brg_keluar;
        $stok->save();

        return redirect('/barangkeluar')->with('success', 'Barang keluar berhasil ditambahkan');
    }
    public function update(Request $request, $kd_brg_keluar)
    {
        // Temukan BarangMasuk berdasarkan kd_brg_masuk
        $barangKeluar = BarangKeluar::where('kd_brg_keluar', $kd_brg_keluar)->first();

        if (!$barangKeluar) {
            return redirect('/barangmasuk')->with('error', 'Data tidak ditemukan');
        }

        // Simpan data lama untuk perhitungan selisih
        $oldQuantity = $barangKeluar->brg_keluar;

        // Validasi request
        $request->validate([
            'kd_brg_keluar' => 'required|unique:barang_keluars,kd_brg_keluar,' . $barangKeluar->id,
            'tgl_keluar' => 'required|date',
            'barang_id' => 'required',
            'customer_id' => 'required',
            'brg_keluar' => 'required|integer',
        ]);

        // Update data BarangMasuk
        $barangKeluar->update($request->all());

        // Hitung selisih brg_keluar
        $newQuantity = $request->brg_keluar;
        $difference = $newQuantity - $oldQuantity;

        // Update stok pada tabel Stok
        $stok = Stok::where('barang_id', $request->barang_id)->first();

        if ($stok) {
            $stok->stok -= $difference;
            $stok->brg_keluar += $difference;
            $stok->save();
        } else {
            Stok::create([
                'barang_id' => $request->barang_id,
                'stok' => $difference,
                'brg_keluar' => $difference,
                'brg_masuk' => 0,
            ]);
        }
        // Redirect ke halaman /barangkeluar dengan pesan sukses
        return redirect('/barangkeluar')->with('success', 'Berhasil simpan perubahan data');
    }

    public function destroy($kd_brg_keluar)
    {
        // Temukan BarangMasuk berdasarkan kd_brg_masuk
        $barangKeluar = BarangKeluar::where('kd_brg_keluar', $kd_brg_keluar)->first();

        if (!$barangKeluar) {
            return redirect('/barangkeluar')->with('error', 'Data tidak ditemukan');
        }

        // Simpan jumlah barang masuk yang perlu dikembalikan
        $quantity = $barangKeluar->brg_keluar;

        // Hapus BarangMasuk
        $barangKeluar->delete();

        // Kurangi stok pada tabel Stok
        $stok = Stok::where('barang_id', $barangKeluar->barang_id)->first();

        if ($stok) {
            $stok->stok -= $quantity;
            $stok->brg_keluar -= $quantity;

            if ($stok->stok < 0) {
                // Jika stok negatif, atur ke 0 untuk menghindari stok negatif
                $stok->stok = 0;
            }

            if ($stok->brg_keluar < 0) {
                // Jika brg_keluar negatif, atur ke 0 untuk menghindari nilai yang tidak valid
                $stok->brg_keluar = 0;
            }

            $stok->save();
        }

        return redirect('/barangkeluar')->with('success', 'Data berhasil dihapus');
    }
}
