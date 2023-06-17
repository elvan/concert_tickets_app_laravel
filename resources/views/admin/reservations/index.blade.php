@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1>Reservations</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Ticket #</th>
                            <th scope="col">User Name</th>
                            <th scope="col">First Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Concert</th>
                            <th scope="col">Date</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($reservations as $reservation)
                            <tr>
                                <td>{{ $reservation->code }}</td>
                                <td>{{ $reservation->user->name }}</td>
                                <td>{{ $reservation->first_name }}</td>
                                <td>{{ $reservation->last_name }}</td>
                                <td>{{ $reservation->email }}</td>
                                <td>{{ $reservation->phone }}</td>
                                <td>{{ $reservation->concert->name }}</td>
                                <td>{{ $reservation->concert->date }}</td>
                                <td>
                                    <form action="{{ route('reservations.destroy', ['reservation' => $reservation]) }}"
                                        method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm">Cancel</button>
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="9">No reservations found.</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>

                {{ $reservations->links() }}
            </div>

        </div>
    </div>
@endsection
