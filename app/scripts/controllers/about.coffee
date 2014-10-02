'use strict'

###*
 # @ngdoc function
 # @name codeCutterApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the codeCutterApp
###
angular.module('codeCutterApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
