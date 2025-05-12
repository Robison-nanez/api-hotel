<?php

namespace Database\Seeders;

use App\Models\Hoteldetail;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class HoteldetailSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $Hoteldetails = [
            [
                'hotel' => 1,
                'roomtype' => 1,
                'accommodation' => 1,
                'quantity' => 25
            ],
            [
                'hotel' => 1,
                'roomtype' => 2,
                'accommodation' => 3,
                'quantity' => 12
            ],
            [
                'hotel' => 1,
                'roomtype' => 1,
                'accommodation' => 2,
                'quantity' => 5
            ]
        ];

        foreach ($Hoteldetails as $Hoteldetail) {
            $hotel_detail = Hoteldetail::create($Hoteldetail);
        }
    }
}
