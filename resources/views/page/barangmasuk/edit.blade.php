@foreach ($barangMasukList as $item)
    <div id="edit-section">
        <div class="modal fade text-left" id="defaultSize-edit-{{ $item->id }}" tabindex="-1" role="dialog"
            aria-labelledby="myModalLabel18" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel18">Edit Barang masuk</h4>
                        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                            <i data-feather="x"></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <section id="multiple-column-form">
                            <div class="row match-height">
                                <div class="col-12">
                                    <div class="card">
                                        <div class="card-content">
                                            <div class="card-body">
                                                <form action="{{ url('/barangmasuk/' . $item->kd_brg_masuk) }}"
                                                    method="POST" class="form" data-parsley-validate>
                                                    @csrf
                                                    @method('put')
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label for="kd_brg_masuk" class="form-label">
                                                                    Kode Barang Masuk</label>
                                                                <div class="form-group ">
                                                                    <input readonly type="text" name="kd_brg_masuk"
                                                                        class="form-control"
                                                                        value="{{ $item->kd_brg_masuk }}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group mandatory">
                                                                <label for="tgl_masuk" class="form-label">
                                                                    Tanggal Barang Masuk</label>
                                                                <div class="form-group ">
                                                                    <input type="date" name="tgl_masuk"
                                                                        class="form-control flatpickr-no-config"
                                                                        placeholder="{{ $item->tgl_masuk }}"
                                                                        data-parsley-required="true"
                                                                        value="{{ $item->tgl_masuk }}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group mandatory">
                                                                <label for="supplier_id" class="form-label">PT
                                                                    Supplier</label>
                                                                <div class="form-group">
                                                                    <select class="choices form-select"
                                                                        name="supplier_id" data-parsley-required="true">
                                                                        <option hidden value="{{ $item->supplier_id }}">
                                                                            {{ $item->supplier->pt_supplier }}</option>
                                                                        @foreach ($supplierList as $supplier)
                                                                            <option value="{{ $supplier->id }}">
                                                                                {{ $supplier->pt_supplier }}
                                                                            </option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group mandatory">
                                                                <label for="barang_id" class="form-label">Kode
                                                                    Barang</label>
                                                                <div class="form-group">
                                                                    <input type="hidden" name="barang_id"
                                                                        id="barang_id_hidden"
                                                                        value="{{ $item->barang->id }}">
                                                                    <select disabled class="choices form-select"
                                                                        id="barang_id" name="barang_id"
                                                                        data-parsley-required="true">
                                                                        <option hidden value="{{ $item->barang_id }}">
                                                                            {{ $item->barang->kd_barang }}
                                                                            - {{ $item->barang->nama_brg }}</option>
                                                                        @foreach ($barangList as $barang)
                                                                            <option value="{{ $barang->id }}">
                                                                                {{ $barang->kd_barang }} -
                                                                                {{ $barang->nama_brg }}</option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        {{-- <pre>{{ $item->barang_id }}</pre> --}}
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label for="nama_brg" class="form-label">Nama
                                                                    Barang</label>
                                                                <input class="form-control" name="barang"
                                                                    id="nama_brg"
                                                                    value="{{ $item->barang->nama_brg }}" />
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label for="jenis_brg" class="form-label">Jenis</label>
                                                                <input class="form-control" id="jenis_brg"
                                                                    name="jenis_brg"
                                                                    value="{{ $item->barang->jenis->jenis_brg }}" />
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label for="satuan_brg"
                                                                    class="form-label">Satuan</label>
                                                                <input class="form-control" id="satuan_brg"
                                                                    name="satuan_brg"
                                                                    value="{{ $item->barang->satuan->satuan_brg }}" />
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group mandatory">
                                                                <label for="brg_masuk" class="form-label">
                                                                    Barang Masuk</label>
                                                                <input type="number" id="brg_masuk"
                                                                    class="form-control"
                                                                    value="{{ $item->brg_masuk }}" name="brg_masuk"
                                                                    data-parsley-required="true" />
                                                            </div>
                                                        </div>
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary me-1 mb-1">
                            Submit
                        </button>
                        <button type="reset" class="btn btn-light-secondary me-1 mb-1">
                            Reset
                        </button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Data barang dari server
            var barangData = @json($barangList);
            console.log('Barang Data:', barangData); //debugging

            var kodeBarangElement = document.getElementById('barang_id');
            var namaBarangElement = document.getElementById('nama_brg');
            var jenisBarangElement = document.getElementById('jenis_brg');
            var satuanBarangElement = document.getElementById('satuan_brg');

            kodeBarangElement.addEventListener('change', function() {
                var kodeBarang = parseInt(kodeBarangElement.value); // tipe data id adalah integer
                console.log('Selected Kode Barang:', kodeBarang); //debugging

                // Mencari data barang berdasarkan kode barang
                var selectedBarang = barangData.find(function(item) {
                    return item.id === kodeBarang;
                });
                console.log('Selected Barang:', selectedBarang); //debugging

                if (selectedBarang) {
                    namaBarangElement.value = selectedBarang.nama_brg;
                    jenisBarangElement.value = selectedBarang.jenis.jenis_brg;
                    satuanBarangElement.value = selectedBarang.satuan.satuan_brg;
                } else {
                    namaBarangElement.value = '';
                    jenisBarangElement.value = '';
                    satuanBarangElement.value = '';
                }
            });
        });
    </script>
@endforeach
