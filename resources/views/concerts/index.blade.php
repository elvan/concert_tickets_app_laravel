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
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 mb-3">
                    @forelse ($concerts as $concert)
                        <div class="col">
                            <div class="card shadow-sm">
                                <img src="{{ $concert->image }}" class="card-img-top" alt="{{ $concert->name }}">
                                <div class="card-body">
                                    <h5 class="card-title">{{ $concert->name }}</h5>
                                    <p class="card-text">{{ $concert->description }}</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <a href="{{ route('concerts.show', ['concert' => $concert]) }}" type="button"
                                                class="btn btn-sm btn-outline-secondary">View</a>
                                        </div>
                                        <div class="text-body-secondary">Rp{{ $concert->price }}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @empty
                        <div class="col">
                            <div class="card shadow-sm">
                                <div class="card-body">
                                    <p class="card-text">No concerts found.</p>
                                </div>
                            </div>
                        </div>
                    @endforelse
                </div>

                {{ $concerts->links() }}
            </div>

        </div>
    </div>
@endsection
