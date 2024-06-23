<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use App\Models\Jenis;
use App\Models\Satuan;
use Illuminate\Http\Request;

class BarangController extends Controller
{
    public function index()
    {
        $barangList = Barang::with('jenis', 'satuan')->get()->sortByDesc('created_at');
        $jenisList = Jenis::all();
        $satuanList = Satuan::all();

        // dd($barang);
        return view("page.masterbarang.barang.index", compact("barangList", "jenisList", "satuanList"));
    }

    // Fungsi store untuk menyimpan data barang baru
    public function store(Request $request)
    {
        $barangAdd = [
            'kd_barang' => $request->input('kd_barang'),
            'nama_brg' => $request->input('nama_brg'),
            'jenis_id' => $request->input('jenis_id'),
            'satuan_id' => $request->input('satuan_id'),
        ];
        Barang::create($barangAdd);
        // dd($barangs);
        return redirect('/barang')->with('success', 'Berhasil simpan data');
    }

    // Fungsi update untuk mengubah data barang berdasarkan ID
    public function update(Request $request, $id)
    {
        $barangUpdate = [
            'kd_barang' => $request->input('kd_barang'),
            'nama_brg' => $request->input('nama_brg'),
            'jenis_id' => $request->input('jenis_id'),
            'satuan_id' => $request->input('satuan_id'),
        ];
        // dd($barang);
        Barang::where('id', $id)->update($barangUpdate);
        return redirect('/barang')->with('success', 'Berhasil simpan perubahan data');
    }

    public function destroy($id)
    {
        Barang::destroy($id);
        return redirect('/barang')->with('success', 'data berhasil didelete');
    }
}
