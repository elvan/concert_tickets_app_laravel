<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreConcertRequest;
use App\Http\Requests\StoreReservationRequest;
use App\Http\Requests\UpdateConcertRequest;
use App\Models\Concert;
use Illuminate\Http\Request;

class ConcertController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $concerts = Concert::query()->paginate(6);

        return view('concerts.index', [
            'concerts' => $concerts,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreConcertRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Concert $concert)
    {
        return view('concerts.show', [
            'concert' => $concert,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Concert $concert)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateConcertRequest $request, Concert $concert)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Concert $concert)
    {
        //
    }

    /**
     * Reserve a ticket for the specified resource.
     */
    public function reserveTicket(Request $request, Concert $concert)
    {
        $fields = $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'email' => [
                'required',
                'string',
                'email',
                'max:255',
            ],
            'phone' => 'required|string|max:50',
        ]);

        if ($concert->reservations()->where('user_id', auth()->id())->exists()) {
            return redirect()
                ->route('concerts.show', [
                    'concert' => $concert,
                ])->with('error', 'You have already reserved a ticket for this concert!');
        }

        $concert->reservations()->create([
            'user_id' => auth()->id(),
            'code' => uniqid(),
            'first_name' => $fields['first_name'],
            'last_name' => $fields['last_name'],
            'email' => $fields['email'],
            'phone' => $fields['phone'],
        ]);

        return redirect()
            ->route('concerts.index')
            ->with('success', 'Ticket reserved successfully!');
    }
}
