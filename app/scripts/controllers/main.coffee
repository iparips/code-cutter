'use strict'

###*
 # @ngdoc function
 # @name codeCutterApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the codeCutterApp
###
angular.module('codeCutterApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
