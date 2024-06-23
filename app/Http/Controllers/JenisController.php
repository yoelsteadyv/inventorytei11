<?php

namespace App\Http\Controllers;

use App\Models\Jenis;
use Illuminate\Http\Request;

class JenisController extends Controller
{
    public function index()
    {
        $jenis_brg = Jenis::query()->latest()->get();
        return view("page.masterbarang.jenisbarang.index", compact("jenis_brg"));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'jenis_brg' => 'required',
        ], [
            'jenis_brg.required' => 'Jenis barang harus diisi',
        ]);

        $jenis_brg = [
            'jenis_brg' => $request->input('jenis_brg'),
            'keterangan' => $request->input('keterangan'),
        ];
        Jenis::create($jenis_brg);
        return redirect('/jenisbarang')->with('success', 'Berhasil simpan data');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $jenis_brg = [
            'jenis_brg' => $request->input('jenis_brg'),
            'keterangan' => $request->input('keterangan'),
        ];
        Jenis::where('id', $id)->update($jenis_brg);
        // dd($id);
        return redirect('/jenisbarang')->with('success', 'berhasil menyimpan perubahan data');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $jenis_brg = Jenis::where('id', $id);
        if ($jenis_brg) {
            $jenis_brg->delete();
            return redirect('/jenisbarang')->with('success', 'Data berhasil dihapus');
        }
        return redirect('/jenisbarang')->with('error', 'Data tidak ditemukan');
    }
}
