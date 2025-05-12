<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Database\Seeders\HotelSeeder;
use Database\Seeders\RoomtypeSeeder;
use Database\Seeders\HoteldetailSeeder;
use Database\Seeders\AccommodationSeeder;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();
        $this->call([
            RoomtypeSeeder::class,
            AccommodationSeeder::class,
            HotelSeeder::class,
            HoteldetailSeeder::class
        ]);
    }
}
