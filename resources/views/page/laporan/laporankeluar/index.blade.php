<x-layout title="Laporan Barang Keluar">
    <div class="page-heading">
        <h3>Laporan Barang Keluar</h3>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-body">
                <table class="table table-striped" id="table1">
                    <div class="d-lg-flex gap-1">
                        <div class="col-12 pb-2 col-lg-4 ">
                            <div class="input-group mandatory">
                                <form action="{{ url('/laporankeluar/filter') }}?export=pdf" method="GET"
                                    id="filterForm">
                                    <input type="date" class="form-control flatpickr-no-config"
                                        placeholder="Tanggal Awal" name="tanggal_awal">
                                    <input type="date" class="form-control flatpickr-no-config"
                                        placeholder="Tanggal Akhir" name="tanggal_akhir">
                                    <button type="submit" class="btn btn-outline-warning">
                                        <i class="bi bi-funnel"></i> Filter
                                    </button>
                                    <button type="button" class="btn btn-outline-secondary" id="resetFilter">
                                        <i class="bi bi-x-circle"></i> Reset
                                    </button>
                                </form>
                            </div>
                        </div>
                        <div class="">
                            <a href="{{ url('/laporankeluar/pdf') }}?export=pdf" type="button"
                                class="btn btn-outline-danger" target="_blank"><i class="bi bi-filetype-pdf"></i>
                                PDF
                            </a>
                        </div>
                    </div>
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Tanggal Keluar</th>
                            <th>Kode Barang Keluar</th>
                            <th>Kode Barang</th>
                            <th>Customer</th>
                            <th>Barang</th>
                            <th>Jumlah Keluar</th>
                            <th>Tujuan</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($laporanBarangKeluarList as $item)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ \Carbon\Carbon::parse($item->tgl_keluar)->format('d F Y') }}</td>
                                <td>{{ $item->kd_brg_keluar }}</td>
                                <td>{{ $item->barang->kd_barang }}</td>
                                <td>{{ $item->customer->pt_customer }}</td>
                                <td>{{ $item->barang->nama_brg }}</td>
                                <td>{{ number_format($item->brg_keluar) }}</td>
                                <td>{{ $item->customer->alamat }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </section>
    <script>
        document.getElementById('resetFilter').addEventListener('click', function() {
            window.location.href = '{{ url('/laporankeluar/filter') }}';
        });
    </script>
</x-layout>
