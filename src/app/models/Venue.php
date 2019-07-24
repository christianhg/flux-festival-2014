<?php

class Venue extends \Eloquent {
	protected $fillable = array('name', 'color');

	public function concerts() {
		return $this->hasMany('Concert');
	}
}