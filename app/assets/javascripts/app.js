angular.module('mangaSong', []).
  config(['$routeProvider', function($routeProvider) {
  $routeProvider.
      when('/musiques', {templateUrl: 'partials/musique-list.html', controller: MusiqueListCtrl}).
      when('/musiques/:musiqueId', {templateUrl: 'partials/musique-detail.html', controller: MusiqueDetailCtrl}).
      otherwise({redirectTo: '/musiques'});
}]);