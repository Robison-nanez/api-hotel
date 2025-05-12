<?php

namespace Database\Seeders;

use App\Models\Hotel;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class HotelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $Hotels = [
            [
                'name' => 'DECAMERON CARTAGENA',
                'address' => 'CALLE 23 58-25',
                'city' => 'CARTAGENA',
                'nit' => '12345678-9',
                'totalRooms' => 42
            ]
        ];

        foreach ($Hotels as $Hotel) {
            $hotel = Hotel::create($Hotel);
        }

    }
}
