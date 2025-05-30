<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Accommodation extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'accommodations';
    protected $primaryKey = 'id';

    protected $fillable = [
        'name',
        'roomtype'
    ];
}
