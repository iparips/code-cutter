'use strict'

angular.module('ccApp.models')
.factory 'Question', ->
  class Question
    constructor: (options) ->
      {@tags, @body, @answer_options, @notes} = options

  Question
