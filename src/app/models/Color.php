<?php

class Color extends \Eloquent {
	protected $fillable = array('hex', 'artist_id', 'primary');

	public function artist() {
		return $this->belongsTo('Artist');
	}
}