'use strict'

angular.module('ccApp.models', [])
angular.module('ccApp.services', [])
angular.module('ccApp.controllers', [])
angular.module('ccApp.filters', [])

angular.module('ccApp', [
  'ngAnimate',
  'ngCookies',
  'ngResource',
  'ngRoute',
  'ngSanitize',
  'ngTouch',
  'underscore',
  'ngJustGage',
  'ccApp.models',
  'ccApp.filters',
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

