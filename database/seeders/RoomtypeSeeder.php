<?php

namespace Database\Seeders;

use App\Models\Roomtype;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class RoomtypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $Roomtypes = [
            [
                'name' => 'ESTANDAR',
            ],
            [
                'name' => 'JUNIOR',
            ],
            [
                'name' => 'SUITE',
            ]
        ];

        foreach ($Roomtypes as $Roomtype) {
            $Room_Type = Roomtype::create($Roomtype);
        }

    }
}
