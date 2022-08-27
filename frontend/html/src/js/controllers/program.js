flux.controller('ProgramIndexCtrl', [
	'$scope', 'FestivalsConcerts',
	function($scope, FestivalsConcerts) {
		$scope.loading = true;
		
		angular.element(document).ready(function () {
	        $scope.concerts = FestivalsConcerts.find({festival_id: 2}, function() {
				$scope.loading = false;
			});
	    });
	}
]);