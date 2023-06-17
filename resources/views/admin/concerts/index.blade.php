@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1>Concerts</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Concert ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Image</th>
                            <th scope="col">Location</th>
                            <th scope="col">Date</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($concerts as $concert)
                            <tr>
                                <td>{{ $concert->id }}</td>
                                <td>{{ $concert->name }}</td>
                                <td>
                                    <img src="{{ $concert->image }}" alt="{{ $concert->name }}" class="img-thumbnail"
                                        width="100">
                                </td>
                                <td>{{ $concert->location }}</td>
                                <td>{{ $concert->date }}</td>
                                <td>
                                    <form action="{{ route('admin.concerts.destroy', ['concert' => $concert]) }}"
                                        method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm">Cancel</button>
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="5">No concerts found.</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>

                {{ $concerts->links() }}
            </div>

        </div>
    </div>
@endsection
