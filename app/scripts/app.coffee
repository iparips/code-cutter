'use strict'

angular.module('ccApp.services', [])
angular.module('ccApp.controllers', [])

angular.module('ccApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'ccApp.services',
    'ccApp.controllers'
  ])

angular.module('ccApp').config ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: 'views/main.html'
      controller: 'MainCtrl'
    .otherwise
      redirectTo: '/'

