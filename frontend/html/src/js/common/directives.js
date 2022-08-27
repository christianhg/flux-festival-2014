flux.directive('artistimage', function() {
	return {
		restrict: 'E',
		scope: {
			filename: '@filename',
			artistname: '@artistname'
		},
		templateUrl: 'templates/directives/artistimage.html',
		controller: ['$scope', '$element', '$document', '$window', '$sce', function($scope, $element, $document, $window, $sce) {
			// var image = new Image();
			// image.src = 'img/artists/'+$scope.filename;
			// $scope.html = $sce.trustAsHtml(image);
			/*$scope.insertImg = function() {

			}
			
			angular.element($document).ready(function() {
				$scope.html = $sce.trustAsHtml('<img src="img/artists/'+$scope.filename+'">');
				console.log($element.find('img')[0].naturalHeight);
			});*/

			// $window.load(function() {

			// });

			// angular.element($window).bind('resize', function() {
   //              console.log($element.find('img')[0].height);
   //          });
		}]
	};
});

flux.directive('cropImage', function() {
	return {
		restrict: 'A',
		controller: ['$element', '$scope', '$window', '$document', function($element, $scope, $window, $document) {
			
			$scope.onResize = function() {
				
				var img = $element;
				var imgWidth = img[0].clientWidth;
				var imgHeight = img[0].clientHeight;
				var imgRatio = imgWidth/imgHeight;
				var div = img.parent();
				var divWidth = div[0].clientWidth;
				var divHeight = div[0].clientHeight;
				var divRatio = divWidth / divHeight;
				var perfectRatio = 200/130; // perfect ratio 1.333~
				
				

				//img.parent().parent().children().next().children().next().css({background: 'rgb('+palette[0][0]+','+palette[0][1]+','+palette[0][2]+')'});

				if(imgRatio > perfectRatio) {
					divHeight = divWidth / perfectRatio;
					div.css({height: divHeight + 'px'});
					imgWidth = divHeight * imgRatio;
					img.css({width: imgWidth + 'px'});
					img.css({marginLeft: ((imgWidth - divWidth)/2) * -1 + 'px'});
				} else {
					divHeight = divWidth / perfectRatio;
					div.css({height: divHeight + 'px'});
					img.css({marginTop: ((imgHeight - divHeight)/2) * -1 + 'px'});
				}
			};

			$element.on('load', function() {
				
				$scope.onResize();

				var img = $element;
				var colorThief = new ColorThief();
				var palette = colorThief.getPalette(img[0], 2);

				var color1 = tinycolor('rgb('+palette[0][0]+','+palette[0][1]+','+palette[0][2]+')');
				var color2 = tinycolor('rgb('+palette[1][0]+','+palette[1][1]+','+palette[1][2]+')');
				var color3 = tinycolor('rgb('+palette[2][0]+','+palette[2][1]+','+palette[2][2]+')');

				function compare(a,b) {
					if (a.brightness > b.brightness)
						return -1;
					if (a.brightness < b.brightness)
						return 1;
					return 0;
				}

				var colors = [
					{brightness: tinycolor.readability(color1, "#fff").brightness, color: color1.toHexString()}, 
					{brightness: tinycolor.readability(color2, "#fff").brightness, color: color2.toHexString()}, 
					{brightness: tinycolor.readability(color3, "#fff").brightness, color: color3.toHexString()}
				];

				// for(i = 0; i < colors.length; i++) {
				// 	if()
				// }
				// console.log(color2);
				// var brightColor2 = function brightenColor(color2) {
				// 	if(tinycolor.isReadable("#fff", color)) {
				// 		return color;
				// 	}
				// 	return brightenColor(tinycolor(color).brighten());
				// }
				// console.log(brightColor2);

				colors.sort(compare);
				
				img.parent().parent().parent().find('h2').css({color: colors[0].color});
				img.parent().parent().children().next().children().css({background: colors[1].color});
				img.parent().parent().children().next().children().next().css({background: colors[2].color});				

				// img.parent().parent().parent().find('h2').css({color: 'rgb('+palette[0][0]+','+palette[0][1]+','+palette[0][2]+')'});
				// img.parent().parent().children().next().children().css({background: 'rgb('+palette[1][0]+','+palette[1][1]+','+palette[1][2]+')'});
				// img.parent().parent().children().next().children().next().css({background: 'rgb('+palette[2][0]+','+palette[2][1]+','+palette[2][2]+')'});

			});

			angular.element($window).bind('resize', function() {
                $scope.onResize();
            });
		}]
	};
});

flux.directive('artist', function() {
	return {
		restrict: 'E',
		scope: {
			data: '@data'
		},
		templateUrl: 'templates/directives/artist.html',
		controller: ['$scope', function($scope) {
			console.log($scope.data);
		}]
	};
});

flux.directive('soundcloud', function() {
	return {
		restrict: 'E',
		scope: {
			code: '@code',
			showSound: '@showSound'
		},
		templateUrl: 'templates/directives/soundcloud.html',
		controller: ['$scope', '$sce', function($scope, $sce) {
			$scope.showSoundcloud = false;

			if($scope.showSound) {
				$scope.showSoundcloud = true;
					$scope.html = $sce.trustAsHtml('<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/'+ $scope.code +'&amp;color=202020&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>');
			} else {
				$scope.toggleShow = function() {
					if($scope.showSoundcloud === false) {
						$scope.showSoundcloud = true;
						$scope.html = $sce.trustAsHtml('<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/'+ $scope.code +'&amp;color=202020&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>');
					} else {
						$scope.showSoundcloud = false;
						$scope.html = '';
					}
				};
			}
		}]
	};
});

flux.directive('youtube', function() {
	return {
		restrict: 'E',
		scope: {
			code: '@code',
			showSound: '@showSound'

		},
		templateUrl: 'templates/directives/youtube.html',
		controller: ['$scope', '$sce', function($scope, $sce) {
			$scope.showYoutube = false;

			if($scope.showSound) {
				$scope.showYoutube = true;
				$scope.html = $sce.trustAsHtml('<iframe width="560" height="315" src="http://www.youtube.com/embed/' + $scope.code+'" frameborder="0" allowfullscreen></iframe>');
			} else {
				$scope.toggleShow = function() {
					if($scope.showYoutube === false) {
						$scope.showYoutube = true;
						$scope.html = $sce.trustAsHtml('<iframe width="560" height="315" src="http://www.youtube.com/embed/' + $scope.code+'" frameborder="0" allowfullscreen></iframe>');
					} else {
						$scope.showYoutube = false;
						$scope.html = '';
					}
				};	
			}
		}]
	};
});