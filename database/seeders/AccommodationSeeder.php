<?php

namespace Database\Seeders;

use App\Models\Accommodation;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class AccommodationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $Accommodations = [
            [
                'name' => 'SENCILLA',
                'roomtype' => '1',
            ],
            [
                'name' => 'DOBLE',
                'roomtype' => '1',
            ],
            [
                'name' => 'TRIPLE',
                'roomtype' => '2',
            ],
            [
                'name' => 'CUÁDRUPLE',
                'roomtype' => '2',
            ],
            [
                'name' => 'SENCILLA',
                'roomtype' => '3',
            ],
            [
                'name' => 'DOBLE',
                'roomtype' => '3',
            ],
            [
                'name' => 'TRIPLE',
                'roomtype' => '3',
            ]
        ];

        foreach ($Accommodations as $Accommodation) {
            $Accom = Accommodation::create($Accommodation);
        }
    }
}
