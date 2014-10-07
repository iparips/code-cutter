'use strict'

angular.module('ccApp.models')
.factory 'Question', ->
  class Question
    constructor: (options) ->
      {@tags, @body, @answerOptions, @notes} = options
      # setting userAnswer to -1 meaning uninitialised,
      # it is not zero so that auto selection does trigger
      @userAnswer = -1

  Question
