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
        // $barang = Barang::query()
        //     ->join('jenis', 'barangs.id_jenis', '=', 'jenis.id_jenis')
        //     ->join('satuans', 'barangs.id_satuan', '=', 'satuans.id_satuan')
        //     ->latest('barangs.created_at')
        //     ->get(['barangs.*', 'jenis.jenis_brg', 'satuans.satuan_brg', 'barangs.kd_barang']);

        // dd($barang);
        return view("page.masterbarang.barang.index", compact("barangList", "jenisList", "satuanList"));
    }

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

    public function update(Request $request,  $id)
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
