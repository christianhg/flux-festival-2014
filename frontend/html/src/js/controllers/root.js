 flux.controller('RootCtrl', [
	'$scope', '$sce', '$state', 'Sponsors',
	function($scope, $sce, $state, Sponsors) {
		$scope.title = "Flux Festival";

		$scope.sponsors = Sponsors.query();

		$scope.pages = [{"name": "artists", "title": "Kunstnere"}, {"name": "program", "title": "Program"}, {"name": "info", "title": "Info"}, {"name": "shows", "title": "Andre shows"}];

		$scope.updateActiveState = function(stateName) {
			if(stateName === undefined) {
				switch($state.current.name) {
					case "root.program":
						$scope.activeState = "program";
						break;
					case "root.shows":
						$scope.activeState = "shows";
						break;
					case "root.info":
						$scope.activeState = "info";
						break;
					default:
						$scope.activeState = "artists";
				}
			} else {
				$scope.activeState = stateName;
			}

			console.log($scope.activeState);

		};

		$scope.updateActiveState();

	}
]);