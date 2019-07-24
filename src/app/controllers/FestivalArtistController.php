<?php

class FestivalArtistController extends \BaseController {
	public function index($festival_id)
	{
		$concerts = Concert::where('festival_id','=',$festival_id)
			->with('artists')->get();
		
		$artistsIds = array();

		foreach($concerts as $index => $concert) {
			foreach($concert->artists as $artist) {
				array_push($artistsIds, $artist->id);
			
			}
		}

		$artists = Artist::with('sounds','concerts','concerts.venue')
		->find($artistsIds);
		
		return Response::json($artists);		
	}
}