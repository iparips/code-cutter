'use strict'

angular.module('ccApp.controllers')
.controller 'MainCtrl', ($scope, _, questions) ->

  questionGroups = _.groupBy questions, (question) -> question.tags[0]

  $scope.questions = questions
  $scope.questionGroups = questionGroups
  $scope.sections = _.keys(questionGroups)

  $scope.generateReport = () ->

    $scope.resultsPerSection = {}

    # TODO: Fix the dirty code below
    _.each($scope.sections, (section) ->

      userScorer = (accumulator, question) -> accumulator + question.userAnswer

      userScore = _.reduce(
          $scope.questionGroups[section],
          userScorer,
          0)

      maxScorer = (accumulator, question) -> accumulator + _.max(_.values(question.answerOptions))

      maxScore = _.reduce(
          $scope.questionGroups[section],
          maxScorer,
          0)

      $scope.resultsPerSection[section] =
        userScore: userScore,
        maxScore: maxScore,
        # TODO: valid function is arbitrary, improve on it
        valid: () -> this.userScore > 0
    )


