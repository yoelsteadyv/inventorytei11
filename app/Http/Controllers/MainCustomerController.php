<?php

namespace App\Http\Controllers;

use App\Models\MainCustomer;
use Illuminate\Http\Request;

class MainCustomerController extends Controller
{
    public function index()
    {
        $customerList = MainCustomer::query()->latest()->get();
        // dd($barang);
        return view("page.maincustomer.index", compact("customerList"));
    }
    public function store(Request $request)
    {
        $customerAdd = [
            'kd_customer' => $request->input('kd_customer'),
            'pt_customer' => $request->input('pt_customer'),
            'telp' => $request->input('telp'),
            'alamat' => $request->input('alamat'),
            'email' => $request->input('email'),
            'person' => $request->input('person'),
        ];
        MainCustomer::create($customerAdd);
        return redirect('/maincustomer')->with('success', 'Berhasil simpan data');
    }
    public function update(Request $request, $id)
    {
        $customerUpdate = [
            'kd_customer' => $request->input('kd_customer'),
            'pt_customer' => $request->input('pt_customer'),
            'telp' => $request->input('telp'),
            'alamat' => $request->input('alamat'),
            'email' => $request->input('email'),
            'person' => $request->input('person'),
        ];
        MainCustomer::where('id', $id)->update($customerUpdate);
        return redirect('maincustomer')->with('success', 'data berhasil di update');
    }
    public function destroy($id)
    {
        MainCustomer::destroy($id);
        return redirect('maincustomer')->with('success', 'Data berhasil dihapus');
    }
}
