'use strict'

angular.module('ccApp.filters').filter "toSnakeCase", ->
  (string) -> string.toLowerCase().split(" ").join("_")
