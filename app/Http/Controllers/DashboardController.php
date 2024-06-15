<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use App\Models\BarangKeluar;
use App\Models\BarangMasuk;
use App\Models\MainCustomer;
use App\Models\MainSupplier;
use App\Models\Stok;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $data = [
            'user' => User::count(),
            'barang' => Barang::count(),
            'customer' => MainCustomer::count(),
            'supplier' => MainSupplier::count(),
            'barangmasuk' => Stok::sum('brg_masuk'),
            'barangkeluar' => Stok::sum('brg_keluar'),
            // 'isActive' => 'active'
        ];
        return view("page.dashboard", $data);
    }
}
