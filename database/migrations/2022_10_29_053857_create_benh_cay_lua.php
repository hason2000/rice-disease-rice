<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBenhCayLua extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('benh_cay_lua', function (Blueprint $table) {
            $table->string('id_name')->primary();
            $table->string('color')->nullable();
            $table->string('position')->nullable();
            $table->string('shape')->nullable();
            $table->string('stage')->nullable();
            $table->string('symptom')->nullable();
            $table->string('weather')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('benh_cay_lua');
    }
}
