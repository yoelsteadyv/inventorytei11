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
        Schema::create('main_customers', function (Blueprint $table) {
            $table->id();
            $table->string('kd_customer', 16)->unique();
            $table->string('pt_customer', 32);
            $table->string('alamat', 255);
            $table->string('telp', 16);
            $table->string('email', 32);
            $table->string('person', 32);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('main_customers');
    }
};
