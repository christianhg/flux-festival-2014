var flux = angular.module('flux', [
	'ui.router',
	'ngResource',
	'ngSanitize',
	'truncate'
]);

flux.config([
	'$stateProvider', '$urlRouterProvider', '$locationProvider',
	function($stateProvider, $urlRouterProvider, $locationProvider) {

		$locationProvider.html5Mode(true);

		$urlRouterProvider.otherwise('/');

		$stateProvider
			.state('root', {
				url: '',
				views: {
					'header': {
						templateUrl: 'templates/header.html',
						controller: 'RootCtrl'
					},
					'footer': {
						templateUrl: 'templates/footer.html',
						controller: 'RootCtrl'
					}
				}
			})
				.state('root.home', {
					url: '/',
					views: {
						'@': {
							templateUrl: 'templates/artists.html',
							controller: 'ArtistsIndexCtrl'
						}
					}
				})
				.state('root.program', {
					url: '/program',
					views: {
						'@': {
							templateUrl: 'templates/program.html',
							controller: 'ProgramIndexCtrl'
						}
					}	
				})
				.state('root.shows', {
					url: '/shows',
					views: {
						'@': {
							templateUrl: 'templates/shows.html',
							controller: 'ShowsCtrl'
						}
					}	
				})
				.state('root.info', {
					url: '/info',
					views: {
						'@': {
							templateUrl: 'templates/info.html',
							controller: 'InfoCtrl'
						}
					}	
				})
				.state('root.artists', {
					url: '/kunstnere',
					views: {
						'@': {
							templateUrl: 'templates/artists.html',
							controller: 'ArtistsIndexCtrl'
						}
					}	
				})
					.state('root.artists.slug', {
						url: '/:slug',
						views: {
							'@': {
								templateUrl: 'templates/artists.slug.html',
								controller: 'ArtistIndexCtrl'
							}
						}
					});
	}
]);
