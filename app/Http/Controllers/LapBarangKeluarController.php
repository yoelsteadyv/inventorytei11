<?php

namespace App\Http\Controllers;

use App\Models\BarangKeluar;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Illuminate\Http\Request;

class LapBarangKeluarController extends Controller
{
    public function index(Request $request)
    {
        $tanggalAwal = $request->input('tanggal_awal');
        $tanggalAkhir = $request->input('tanggal_akhir');

        $laporanBarangKeluarList = BarangKeluar::with('barang', 'customer')
            ->when($tanggalAwal && $tanggalAkhir, function ($query) use ($tanggalAwal, $tanggalAkhir) {
                $query->whereDate('tgl_keluar', '>=', Carbon::parse($tanggalAwal))
                    ->whereDate('tgl_keluar', '<=', Carbon::parse($tanggalAkhir));
            })
            ->orderByDesc('created_at')
            ->get();

        // Simpan parameter ke session jika ada
        if ($tanggalAwal && $tanggalAkhir) {
            session(['tanggal_awal' => $tanggalAwal, 'tanggal_akhir' => $tanggalAkhir]);
        } else {
            // Hapus parameter dari session jika tidak ada
            session()->forget(['tanggal_awal', 'tanggal_akhir']);
        }

        return view('page.laporan.laporankeluar.index', compact('laporanBarangKeluarList'));
    }
    public function pdf(Request $request)
    {
        // Ambil parameter dari session
        $tanggalAwal = session('tanggal_awal');
        $tanggalAkhir = session('tanggal_akhir');

        $laporanBarangKeluarList = BarangKeluar::with('barang', 'customer')
            ->when($tanggalAwal && $tanggalAkhir, function ($query) use ($tanggalAwal, $tanggalAkhir) {
                $query->whereDate('tgl_keluar', '>=', $tanggalAwal)
                    ->whereDate('tgl_keluar', '<=', $tanggalAkhir);
            })
            ->orderByDesc('created_at')
            ->get();

        // Load view PDF dengan menggunakan data yang sudah difilter
        $pdf = PDF::loadView('page.laporan.laporankeluar.pdf', compact('laporanBarangKeluarList', 'tanggalAwal', 'tanggalAkhir'));

        // Download atau tampilkan PDF
        return $pdf->stream('laporankeluar.pdf');
    }
}
