<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Hotel extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'hotels';
    protected $primaryKey = 'id';

    protected $fillable = [
        'name',
        'address',
        'city',
        'nit',
        'totalRooms'
    ];

    /**
     * Get the hoteldeatail
     */
    public function hoteldetail(): HasMany
    {
        return $this->hasMany(Hoteldetail::class, 'hotel', 'id');
    }
}
