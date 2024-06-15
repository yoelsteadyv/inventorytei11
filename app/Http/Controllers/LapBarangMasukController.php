<?php

namespace App\Http\Controllers;

use App\Models\BarangMasuk;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Carbon\Carbon;

class LapBarangMasukController extends Controller
{
    public function index(Request $request)
    {
        $tanggalAwal = $request->input('tanggal_awal');
        $tanggalAkhir = $request->input('tanggal_akhir');

        $laporanBarangMasukList = BarangMasuk::with('barang', 'supplier')
            ->when($tanggalAwal && $tanggalAkhir, function ($query) use ($tanggalAwal, $tanggalAkhir) {
                $query->whereDate('tgl_masuk', '>=', Carbon::parse($tanggalAwal))
                    ->whereDate('tgl_masuk', '<=', Carbon::parse($tanggalAkhir));
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

        return view('page.laporan.laporanmasuk.index', compact('laporanBarangMasukList'));
    }

    public function pdf(Request $request)
    {
        // Ambil parameter dari session
        $tanggalAwal = session('tanggal_awal');
        $tanggalAkhir = session('tanggal_akhir');

        $laporanBarangMasukList = BarangMasuk::with('barang', 'supplier')
            ->when($tanggalAwal && $tanggalAkhir, function ($query) use ($tanggalAwal, $tanggalAkhir) {
                $query->whereDate('tgl_masuk', '>=', $tanggalAwal)
                    ->whereDate('tgl_masuk', '<=', $tanggalAkhir);
            })
            ->orderByDesc('created_at')
            ->get();

        // Load view PDF dengan menggunakan data yang sudah difilter
        $pdf = PDF::loadView('page.laporan.laporanmasuk.pdf', compact('laporanBarangMasukList', 'tanggalAwal', 'tanggalAkhir'));

        // Download atau tampilkan PDF
        return $pdf->stream('laporanmasuk.pdf');
    }
}
