<?php

namespace App\Models;

use App\Models\Artist;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Concert extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'image',
        'location',
        'description',
        'date',
    ];

    protected $dates = [
        'date',
    ];

    public function reservations()
    {
        return $this->hasMany(Reservation::class);
    }
}
