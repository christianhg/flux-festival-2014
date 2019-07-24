<?php

class Concert extends \Eloquent {
	protected $fillable = array('title', 'day', 'time', 'venue_id', 'festival_id', 'info');

	public function venue() {
		return $this->belongsTo('Venue');
	}

	public function artists() {
		return $this->belongsToMany('Artist', 'concerts_artists', 'concert_id', 'artist_id');
	}

	public function festival() {
		return $this->belongsTo('Festival');
	}
}
