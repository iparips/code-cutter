'use strict'

angular.module('ccApp.models')
.factory 'Question', (_) ->
  class Question
    constructor: (options) ->
      {@tags, @body, @answerOptions, @notes} = options
      # setting userAnswer to -1 meaning uninitialised,
      # it is not zero so that auto selection does trigger
      @userAnswer = -1

    fullScore: () ->
      _.max(_.map(@answerOptions, (o) -> o.score))

    toCatAndScore: () ->
      {
        category: @tags[0],
        score:  @userAnswer
      }

    toCatAndFullScore: () ->
      {
        category: @tags[0],
        score:  this.fullScore()
      }

  Question
