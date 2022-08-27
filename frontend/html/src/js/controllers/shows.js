flux.controller('ShowsCtrl', [
	'$scope', 'Concerts',
	function($scope, Concerts) {
		$scope.shows = Concerts.query();
	}
]);