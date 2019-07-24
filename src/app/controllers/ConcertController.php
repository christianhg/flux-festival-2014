<?php

class ConcertController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		/*$concerts = Concert::all();
		$concerts->load('artists', 'venue', 'festival');*/
		$concerts = Concert::with('artists.sounds')->get();
		return Response::json($concerts);
	}


}