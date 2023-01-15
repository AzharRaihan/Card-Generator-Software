<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCardBackgroundsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('card_backgrounds', function (Blueprint $table) {
            $table->id();
            $table->string('background_title', 100)->nullable();
            $table->string('background_img', 100)->nullable();
            $table->string('del_status', 10)->default('Live');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('card_backgrounds');
    }
}
