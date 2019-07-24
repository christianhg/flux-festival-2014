<?php

class Sound extends \Eloquent {
	protected $fillable = array('artist_id', 'link', 'type');

	public function artist() {
		return $this->belongsTo('Artist');
	}
}