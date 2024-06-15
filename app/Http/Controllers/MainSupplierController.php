<?php

namespace App\Http\Controllers;

use App\Models\MainSupplier;
use Illuminate\Http\Request;

class MainSupplierController extends Controller
{
    public function index()
    {
        $supplierList = MainSupplier::query()->latest()->get();
        // dd($barang);
        return view("page.mainsupplier.index", compact("supplierList"));
    }
    public function store(Request $request)
    {
        $supplierAdd = [
            'kd_supplier' => $request->input('kd_supplier'),
            'pt_supplier' => $request->input('pt_supplier'),
            'telp' => $request->input('telp'),
            'alamat' => $request->input('alamat'),
            'email' => $request->input('email'),
            'person' => $request->input('person'),
        ];
        MainSupplier::create($supplierAdd);
        return redirect('/mainsupplier')->with('success', 'Berhasil simpan data');
    }
    public function update(Request $request, $id)
    {
        $supplierUpdate = [
            'kd_supplier' => $request->input('kd_supplier'),
            'pt_supplier' => $request->input('pt_supplier'),
            'telp' => $request->input('telp'),
            'alamat' => $request->input('alamat'),
            'email' => $request->input('email'),
            'person' => $request->input('person'),
        ];
        MainSupplier::where('id', $id)->update($supplierUpdate);
        return redirect('/mainsupplier')->with('success', 'data berhasil di update');
    }
    public function destroy($id)
    {
        MainSupplier::destroy($id);
        return redirect('/mainsupplier')->with('success', 'Data berhasil dihapus');
    }
}
