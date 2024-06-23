<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
        $data = User::query()->latest()->get();
        // dd($data);
        return view("page.user.index", compact("data"));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validasi data yang diterima dari request
        $request->validate([
            "name" => "required|min:4",
            "email" => "required|email|unique:users,email",
            "role" => "required",
            "password" => "required|min:8",
        ], [
            'name.required' => 'Nama harus diisi.',
            'name.min' => 'Nama harus memiliki minimal 4 karakter.',
            'email.required' => 'Email harus diisi.',
            'email.email' => 'Format email tidak valid.',
            'email.unique' => 'Email sudah terdaftar.',
            'role.required' => 'Peran harus diisi.',
            'password.required' => 'Password harus diisi.',
            'password.min' => 'Password harus memiliki minimal 8 karakter.',
        ]);
        // dd($request);
        $data = [
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'role' => $request->input('role'),
            'password' => $request->input('password'),
        ];
        User::create($data);
        return redirect('/user')->with('success', 'Berhasil simpan data');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // Validasi data yang diterima dari request
        $request->validate([
            "name" => "required|min:4",
            "email" => "required|email",
            "role" => "required",
            "password" => "required|min:8",
        ], [
            'name.required' => 'Nama harus diisi.',
            'name.min' => 'Nama harus memiliki minimal 5 karakter.',
            'email.required' => 'Email harus diisi.',
            'email.email' => 'Format email tidak valid.',
            'role.required' => 'Peran harus diisi.',
            'password.required' => 'Password harus diisi.',
            'password.min' => 'Password harus memiliki minimal 8 karakter.',
        ]);
        $data = [
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'role' => $request->input('role'),
            'password' => Hash::make($request->input('password')),
        ];
        User::where('id', $id)->update($data);
        // dd($id);
        return redirect('/user')->with('success', 'berhasil menyimpan perubahan data');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        User::where('id', $id)->delete();
        return redirect('/user')->with('success', 'data berhasil didelete');
    }
}
