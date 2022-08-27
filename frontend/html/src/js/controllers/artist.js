flux.controller('ArtistIndexCtrl', [
	'$scope', '$stateParams', 'Artists',
	function($scope, $stateParams, Artists) {
		$scope.loading = true;
		
		angular.element(document).ready(function () {
			$scope.artist = Artists.find({artist_slug: $stateParams.slug}, function() {
				$scope.artist = $scope.artist[0];
				$scope.loading = false;
			});	
    	});
  		

	}
]);