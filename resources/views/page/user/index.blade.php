<x-layout title="User">
    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <div class="page-heading">
        <h3>User</h3>
    </div>
    <section class="section">
        <div class="card">

            <div class="card-body">
                <div class="d-flex justify-content-end mb-3 me-2">
                    <button type="button" class="btn btn-outline-success" data-bs-toggle="modal"
                        data-bs-target="#defaultSize-tambah"><i class="bi bi-plus"></i>
                        Tambah Data
                    </button>
                </div>
                <table class="table table-striped" id="table1">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data as $item)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $item->name }}</td>
                                <td>{{ $item->email }}</td>
                                <td>{{ $item->role }}</td>
                                <td>
                                    <div class="d-flex gap-2 ">
                                        @if ($item->role !== 'admin')
                                            <button data-bs-toggle="modal"
                                                data-bs-target="#defaultSize-edit-{{ $item->id }}"
                                                class="btn icon btn-sm btn-warning"><i
                                                    class="bi bi-pencil-square"></i></button>
                                            <form action="{{ url('/user/' . $item->id) }}" method="POST">
                                                @csrf
                                                @method('delete')
                                                <button class="btn icon btn-sm btn-danger"><i
                                                        class="bi bi-trash"></i></button>
                                            </form>
                                        @endif
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        @include('page.user.tambah')
        @include('page.user.edit')
    </section>
</x-layout>
