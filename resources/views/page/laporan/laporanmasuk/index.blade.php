<x-layout title="Laporan Barang Masuk">
    <div class="page-heading">
        <h3>Laporan Barang Masuk</h3>
    </div>
    <section class="section">
        <div class="card">

            <div class="card-body">

                <table class="table table-striped" id="table1">
                    <div class="d-lg-flex gap-1">
                        <div class="col-12 pb-2 col-lg-4 ">
                            <div class="input-group mandatory">

                                <form action="{{ url('/laporanmasuk/filter') }}?export=pdf" method="GET"
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
                            <a href="{{ url('/laporanmasuk/pdf') }}?export=pdf" type="button"
                                class="btn btn-outline-danger" target="_blank"><i class="bi bi-filetype-pdf"></i>
                                PDF
                            </a>
                        </div>
                    </div>

                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Tanggal Masuk</th>
                            <th>Kode Barang Masuk</th>
                            <th>Kode Barang</th>
                            <th>Supplier</th>
                            <th>Barang</th>
                            <th>Jumlah Masuk</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($laporanBarangMasukList as $item)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ \Carbon\Carbon::parse($item->tgl_masuk)->format('d F Y') }}</td>
                                <td>{{ $item->kd_brg_masuk }}</td>
                                <td>{{ $item->barang->kd_barang }}</td>
                                <td>{{ $item->supplier->pt_supplier }}</td>
                                <td>{{ $item->barang->nama_brg }}</td>
                                <td>{{ number_format($item->brg_masuk) }}</td>
                            </tr>
                        @endforeach
                        {{-- {{ dd($barang_masuk) }} --}}
                    </tbody>
                </table>
            </div>
        </div>

    </section>

    <script>
        document.getElementById('resetFilter').addEventListener('click', function() {
            window.location.href = '{{ url('/laporanmasuk/filter') }}';
        });
    </script>



    {{-- @section('scripts')
        <script>
            $(document).ready(function() {
                var table = $('#table1').DataTable({
                    // Konfigurasi DataTables Anda
                });

                $('#filterButton').click(function() {
                    var startDate = $('#startDate').val();
                    var endDate = $('#endDate').val();

                    table.draw(); // Memanggil fungsi draw() untuk memperbarui tabel
                });

                // Fungsi untuk menambahkan filter berdasarkan range tanggal
                $.fn.dataTable.ext.search.push(
                    function(settings, data, dataIndex) {
                        var min = startDate.val();
                        var max = endDate.val();
                        var date = new Date(data[1]); // Index 1 adalah kolom Tanggal Masuk

                        if (
                            (min === "" || max === "") ||
                            (min === "" && max === "") ||
                            (min <= date && max >= date)
                        ) {
                            return true;
                        }
                        return false;
                    }
                );
            });
        </script>
    @endsection --}}

</x-layout>
