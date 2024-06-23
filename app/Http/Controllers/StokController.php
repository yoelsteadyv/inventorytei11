<?php

namespace App\Http\Controllers;

use App\Models\Stok;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;

class StokController extends Controller
{
    public function index()
    {
        $stoks = Stok::with('barang')->get();

        return view("page.laporan.stok.index", compact("stoks"));
    }

    public function pdf(Request $request)
    {
        $stoks = Stok::with('barang')->get();
        if ($request->get('export') == 'pdf') {
            $pdf = Pdf::loadView('page.laporan.stok.pdf', compact("stoks", "request"));
            return $pdf->stream(date('Y-m-d') . '_stok.pdf');
        }
    }
}
