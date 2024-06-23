<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use App\Models\MainCustomer;
use App\Models\MainSupplier;
use App\Models\Stok;
use App\Models\User;

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
        ];
        return view("page.dashboard", $data);
    }
}
