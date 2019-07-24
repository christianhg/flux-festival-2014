<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateConcertsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('concerts', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('title')->nullable();
			$table->enum('day', array('torsdag', 'fredag', 'lørdag'));
			$table->datetime('time')->nullable();
			$table->integer('venue_id')->nullable();
			$table->integer('festival_id')->nullable();
			$table->text('info')->nullable();
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
		Schema::drop('concerts');
	}

}
