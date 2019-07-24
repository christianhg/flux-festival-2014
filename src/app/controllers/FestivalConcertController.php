<?php

class FestivalConcertController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index($festival_id)
	{
		$concerts = Concert::where('festival_id', '=', $festival_id)
			->with('venue', 'artists', 'artists.sounds')
			->where('time', '!=', 'null')
			->orderBy('time', 'asc')
			->get();

		return Response::json($concerts);
	}

}