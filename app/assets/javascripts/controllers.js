 
 //var mangaSong = angular.module('mangaSong', []);
 function MusiqueListCtrl($scope, $http) {
 	var audio = document.createElement('audio');

	$http.get('/musiques.json').success(function(data) {
	    $scope.musiques = data;
	});

	$scope.playTrack = function(music){
		if(music){
			audio.src = "/music/" + music.name
			$scope.current_music = music
		}
		if(audio.src){
			$scope.is_playing = true
			audio.play()
		}
	}

	$scope.pause = function(){
		if($scope.is_playing){
			$scope.is_playing = false
			audio.pause()
		}
	}


}


 function MusiqueDetailCtrl($scope, $http, $routeParams) {
 $http.get('/musiques/'+$routeParams.musiqueId+'.json').success(function(data) {
    $scope.musique = data;
  });

}
