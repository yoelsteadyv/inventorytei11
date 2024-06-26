<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use App\Models\BarangMasuk;
use App\Models\MainSupplier;
use App\Models\Stok;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class BarangMasukController extends Controller
{
    public function index()
    {
        $barangMasukList = BarangMasuk::with('barang', 'supplier')->get()->sortByDesc('created_at');
        $barangList = Barang::with('jenis', 'satuan')->get();
        $supplierList = MainSupplier::all();

        // dd($barang_masuk);
        return view("page.barangmasuk.index", compact("barangMasukList", "supplierList", "barangList"));
    }
    public function tambah()
    {
        $barangMasukList = BarangMasuk::with('barang', 'supplier')->get()->sortByDesc('created_at');
        $barangList = Barang::with('jenis', 'satuan')->get();
        $supplierList = MainSupplier::all();
        return view("page.barangmasuk.tambah", compact("barangMasukList", "supplierList", "barangList"));
    }

    // Metode untuk menyimpan data barang masuk ke database
    public function store(Request $request)
    {
        $request->validate([
            'kd_brg_masuk' => 'required',
            'tgl_masuk' => 'required|date',
            'barang_id' => 'required',
            'supplier_id' => 'required',
            'brg_masuk' => 'required|numeric',
        ]);

        $barangMasuk = BarangMasuk::create($request->all());

        $stok = Stok::firstOrNew(['barang_id' => $barangMasuk->barang_id]);
        $stok->brg_masuk += $barangMasuk->brg_masuk;
        $stok->stok += $barangMasuk->brg_masuk;
        $stok->save();

        return redirect('/barangmasuk')->with('success', 'Barang masuk berhasil ditambahkan');
    }

    public function update(Request $request, $kd_brg_masuk)
    {
        // Temukan BarangMasuk berdasarkan kd_brg_masuk
        $barangMasuk = BarangMasuk::where('kd_brg_masuk', $kd_brg_masuk)->first();

        if (!$barangMasuk) {
            return redirect('/barangmasuk')->with('error', 'Data tidak ditemukan');
        }

        // Simpan data lama untuk perhitungan selisih
        $oldQuantity = $barangMasuk->brg_masuk;

        // Validasi request
        $request->validate([
            'kd_brg_masuk' => 'required|unique:barang_masuks,kd_brg_masuk,' . $barangMasuk->id,
            'tgl_masuk' => 'required|date',
            'barang_id' => 'required',
            'supplier_id' => 'required',
            'brg_masuk' => 'required|integer',
        ]);

        // Update data BarangMasuk
        $barangMasuk->update($request->all());

        // Hitung selisih brg_masuk
        $newQuantity = $request->brg_masuk;
        $difference = $newQuantity - $oldQuantity;

        // Update stok pada tabel Stok
        $stok = Stok::where('barang_id', $request->barang_id)->first();

        if ($stok) {
            $stok->stok += $difference;
            $stok->brg_masuk += $difference;
            $stok->save();
        } else {
            Stok::create([
                'barang_id' => $request->barang_id,
                'stok' => $difference,
                'brg_masuk' => $difference,
                'brg_keluar' => 0,
            ]);
        }

        return redirect('/barangmasuk')->with('success', 'Berhasil simpan perubahan data');
    }

    public function destroy($kd_brg_masuk)
    {
        // Temukan BarangMasuk berdasarkan kd_brg_masuk
        $barangMasuk = BarangMasuk::where('kd_brg_masuk', $kd_brg_masuk)->first();

        if (!$barangMasuk) {
            return redirect('/barangmasuk')->with('error', 'Data tidak ditemukan');
        }

        // Simpan jumlah barang masuk yang perlu dikembalikan
        $quantity = $barangMasuk->brg_masuk;

        // Hapus BarangMasuk
        $barangMasuk->delete();

        // Kurangi stok pada tabel Stok
        $stok = Stok::where('barang_id', $barangMasuk->barang_id)->first();

        if ($stok) {
            $stok->stok -= $quantity;
            $stok->brg_masuk -= $quantity;

            if ($stok->stok < 0) {
                // Jika stok negatif, atur ke 0 untuk menghindari stok negatif
                $stok->stok = 0;
            }

            if ($stok->brg_masuk < 0) {
                // Jika brg_masuk negatif, atur ke 0 untuk menghindari nilai yang tidak valid
                $stok->brg_masuk = 0;
            }

            $stok->save();
        }


        return redirect('/barangmasuk')->with('success', 'Data berhasil dihapus');
    }
}
