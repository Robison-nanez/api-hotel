<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Hoteldetail extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'hotelsdetails';
    protected $primaryKey = 'id';

    protected $fillable = [
        'hotel',
        'roomtype',
        'accommodation',
        'quantity'
    ];

    /**
     * Get the accommodation.
     */
    public function accommodation(): HasOne
    {
        return $this->hasOne(Accommodation::class, 'id');
    }

    /**
     * Get the roomtype.
     */
    public function roomtype(): HasOne
    {
        return $this->hasOne(Roomtype::class, 'id');
    }
}
