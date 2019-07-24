<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

/**
 * main route
 */
Route::get('/', function()
{
	return View::make('index');
});

/**
 * api routes
 */
Route::group(array('prefix' => 'api'), function() {
	Route::resource('festivals.concerts', 'FestivalConcertController',
		array('except' => array('create', 'edit', 'store', 'update', 'destroy', 'show')));

	Route::resource('festivals.artists', 'FestivalArtistController',
		array('except' => array('create', 'edit', 'store', 'update', 'destroy', 'show')));

	Route::resource('concerts', 'ConcertController',
		array('except' => array('create', 'edit', 'store', 'update', 'destroy', 'show')));

	Route::resource('artists', 'ArtistController',
		array('except' => array('create', 'edit', 'store', 'update', 'destroy')));

	Route::resource('sponsors', 'SponsorController',
		array('except' => array('create', 'edit', 'store', 'update', 'destroy', 'show')));
});

/**
 * catch all route
 */
App::missing(function($exception)
{
	return View::make('index');
});