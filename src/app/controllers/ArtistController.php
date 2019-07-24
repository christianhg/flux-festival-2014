<?php

class ArtistController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */

	// public function show($artist_id) 
	// {
	// 	$artist = Artist::where('id', '=', $artist_id)->with('sounds','colors','concerts')->get();
	// 	return Response::json($artist);
	// }
	// 
	public function index()
	{
		$artists = Artist::all();
		return Response::json($artists);
	}

	public function show($artist_slug) 
	{
		$artist = Artist::where('slug', '=', $artist_slug)
			->orWhere('name', '=', $artist_slug)
			->with('sounds','concerts','concerts.venue')
			->take(1)
			->get();
		return Response::json($artist);
	}
}