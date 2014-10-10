'use strict'

angular.module('ccApp.controllers')
.controller 'MainCtrl', ($scope, _, questions, scores) ->

  questionsByCategory = _.groupBy questions, (question) -> question.tags[0]

  $scope.questions = questions
  $scope.questionGroups = questionsByCategory
  $scope.sections = _.keys(questionsByCategory)

  $scope.totalsPerSection = scores.totals(questions)

  updateResults = () ->
    $scope.resultsPerSection = scores.userScores(questions)

  $scope.$watch(
    'questions',
    updateResults,
    true
  )

  $scope.generateReport = () ->
    # TODO: add report generation
