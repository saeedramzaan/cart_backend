<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TableItemMasters extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('item_masters', function (Blueprint $table) {
            $table->id();
            $table->String('user_id');
            $table->String('user_name');
            $table->String('date');
            $table->String('g_total');
            $table->String('d_charge');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('item_masters');
    }
}
