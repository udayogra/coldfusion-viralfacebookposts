    var phonecatApp = angular.module('downloadApp', [
    'ngRoute',
    'downloadControllers'
    ]);
     
    phonecatApp.config(['$routeProvider',
    function($routeProvider) {
    $routeProvider.
    when('/result', {
    templateUrl: 'partial.cfm',
    controller: 'FbanalyzerCtrl'
    }).
    otherwise({
    redirectTo: '/result'
    });
    }]);