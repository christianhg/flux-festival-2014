flux.controller('ArtistsIndexCtrl', [
	'$scope', 'FestivalsArtists',
	function($scope, FestivalsArtists) {
		$scope.loading = true;
		
		angular.element(document).ready(function () {
       		$scope.artists = FestivalsArtists.find({festival_id: 2}, function() {
				$scope.loading = false;
			});	
    	});
	}
]);