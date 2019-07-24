<?php

class Festival extends \Eloquent {
	protected $fillable = array('title', 'start', 'end');

	public function concerts() {
		return $this->hasMany('Concert');
	}

}