'use strict'

angular.module('ccApp.controllers')
.controller 'MainCtrl', ($scope, _, questions, scores) ->

  questionsByCategory = _.groupBy questions, (question) -> question.tags[0]

  $scope.questions = questions
  $scope.questionGroups = questionsByCategory
  $scope.sections = _.keys(questionsByCategory)

  $scope.fullScoresPerCategory = scores.fullScoresPerCategory(questions)
  $scope.fullScoresTotal = scores.fullScoresTotal(questions)

  updateResults = () ->
    $scope.userScoresPerCategory = scores.userScoresPerCategory(questions)
    $scope.userScoresTotal = scores.userScoresTotal(questions)

  $scope.$watch(
    'questions',
    updateResults,
    true
  )

  $scope.generateReport = () ->
    # TODO: add report generation
