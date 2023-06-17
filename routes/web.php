<?php

use App\Http\Controllers\Admin\AdminConcertController;
use App\Http\Controllers\Admin\AdminReservationController;
use App\Http\Controllers\ConcertController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ReservationController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Auth::routes();

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', [HomeController::class, 'index'])->name('home');

Route::resource('/concerts', ConcertController::class);
Route::post(
    '/concerts/{concert}/reserve-ticket',
    [ConcertController::class, 'reserveTicket']
)->name('concerts.reserve-ticket');

Route::resource('/reservations', ReservationController::class);

Route::name('admin.')->group(function () {
    Route::resource('/admin/concerts', AdminConcertController::class)
        ->middleware('can:visitAdminPages');

    Route::resource('/admin/reservations', AdminReservationController::class)
        ->middleware('can:visitAdminPages');
});
