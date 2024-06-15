@foreach ($customerList as $item)
    <!--Default size Modal -->
    <div class="modal fade text-left" id="defaultSize-edit-{{ $item->id }}" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel18" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel18">Edit Customer</h4>
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
                                            <form action="{{ url('/maincustomer/' . $item->id) }}" method="POST"
                                                class="form" data-parsley-validate>
                                                @csrf
                                                @method('put')
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <label for="kd_customer" class="form-label">
                                                                Kode Customer</label>
                                                            <div class="form-group ">
                                                                <input readonly type="text" name="kd_customer"
                                                                    class="form-control"
                                                                    value="{{ $item->kd_customer }}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-group mandatory">
                                                            <label for="pt_customer" class="form-label">
                                                                Nama Customer</label>
                                                            <input type="text" id="pt_customer" class="form-control"
                                                                placeholder="" name="pt_customer"
                                                                value="{{ $item->pt_customer }}"
                                                                data-parsley-required="true" />
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-group mandatory">
                                                            <label for="telp" class="form-label">
                                                                Telepon</label>
                                                            <input type="text" id="telp" class="form-control"
                                                                placeholder="" name="telp"
                                                                value="{{ $item->telp }}"
                                                                data-parsley-required="true" />
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-group mandatory">
                                                            <label for="alamat" class="form-label">Alamat</label>
                                                            <textarea class="form-control" id="alamat-customer" name="alamat" rows="3" data-parsley-required="true">{{ $item->alamat }}</textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-group mandatory">
                                                            <label for="email" class="form-label">
                                                                Email</label>
                                                            <input type="email" id="email" class="form-control"
                                                                placeholder="" name="email"
                                                                value="{{ $item->email }}"
                                                                data-parsley-required="true" />
                                                        </div>
                                                    </div>

                                                    <div class="col-12">
                                                        <div class="form-group mandatory">
                                                            <label for="person" class="form-label">
                                                                Person</label>
                                                            <input type="text" id="person" class="form-control"
                                                                placeholder="" name="person"
                                                                value="{{ $item->person }}"
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
@endforeach
