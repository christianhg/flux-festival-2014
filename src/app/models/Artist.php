<?php

class Artist extends \Eloquent {
	protected $fillable = array('name', 'info', 'image'); 

	public function concerts() {
		return $this->belongsToMany('Concert', 'concerts_artists', 'artist_id', 'concert_id');
	}

	public function colors() {
		return $this->hasMany('Color')->orderBy('primary','desc');
	}

	public function sounds() {
		return $this->hasMany('Sound');
	}

}