<x-layout title="Stok">
    <div class="page-heading">
        <h3>Stok</h3>
    </div>
    <section class="section">
        <div class="card">

            <div class="card-body">

                <table class="table table-striped" id="table1">
                    <div class="d-lg-flex gap-1">
                        <div class="col-12 pb-2 col-lg-4 ">
                            <div class="input-group mandatory">
                                {{-- <label for="harga-barang" class="form-label">
                                    Filter</label> --}}
                                <input type="date" class="form-control flatpickr-range" placeholder="Select date..">
                                <button class="btn btn-outline-warning" type="button" id="button-addon2"><i
                                        class="bi bi-funnel"></i>
                                    Filter</button>
                            </div>
                        </div>
                        <div class="">

                            <button type="button" class="btn btn-outline-info" data-bs-toggle="modal"
                                data-bs-target="#defaultSize-tambah"><i class="bi bi-printer"></i>
                                Print
                            </button>
                            <a href="{{ url('/stok/pdf') }}?export=pdf" type="button" class="btn btn-outline-danger"
                                target="_blank"><i class="bi bi-filetype-pdf"></i>
                                PDF
                            </a>
                        </div>
                    </div>

                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Kode Barang</th>
                            <th>Barang</th>
                            <th>Jumlah Masuk</th>
                            <th>Jumlah Keluar</th>
                            <th>Total Stok</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($stoks as $item)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $item->barang->kd_barang }}</td>
                                <td>{{ $item->barang->nama_brg }}</td>
                                <td>{{ number_format($item->brg_masuk) }}</td>
                                <td>{{ number_format($item->brg_keluar) }}</td>
                                <td>{{ number_format($item->stok) }}</td>

                            </tr>
                        @endforeach
                        {{-- {{ dd($barang) }} --}}
                    </tbody>
                </table>
            </div>
        </div>

    </section>
</x-layout>
