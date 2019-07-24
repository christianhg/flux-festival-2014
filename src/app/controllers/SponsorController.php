<?php

class SponsorController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$sponsors = Sponsor::all();
		return Response::json($sponsors);
	}
}