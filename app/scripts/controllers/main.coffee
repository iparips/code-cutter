'use strict'

angular.module('ccApp.controllers')
.controller 'MainCtrl', ($scope, questions) ->
  questionGroups = _.groupBy questions, (question) -> question.tags[0]
  $scope.questionGroups = questionGroups
  $scope.sections = _.keys(questionGroups)


