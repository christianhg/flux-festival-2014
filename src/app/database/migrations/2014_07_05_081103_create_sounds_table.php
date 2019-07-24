<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSoundsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sounds', function(Blueprint $table)
		{
			$table->increments('id');
			$table->enum('type', array('soundcloud', 'youtube'));
			$table->string('link');
			$table->integer('artist_id');
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
		Schema::drop('sounds');
	}

}
