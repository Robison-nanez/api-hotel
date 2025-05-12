<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('hotelsdetails', function (Blueprint $table) {
            $table->id();
            $table->integer('hotel');
            $table->foreign('hotel')->references('id')->on('hotels');
            $table->integer('roomtype');
            $table->foreign('roomtype')->references('id')->on('roomtypes');
            $table->integer('accommodation');
            $table->foreign('accommodation')->references('id')->on('accommodations');
            $table->integer('quantity');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('hotelsdetails');
    }
};
