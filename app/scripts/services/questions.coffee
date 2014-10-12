'use strict'

angular.module('ccApp.services')
  .service 'questions', (_, Question) ->
    data = [{"tags":["UX"],"body":"Is there a runner script?","answerOptions":[{"text":"no","score":0.0},{"text":"yes","score":1.0}],"notes":""},{"tags":["UX"],"body":"Is there a read me and does it explain how to run the app?","answerOptions":[{"text":"does not","score":0.0},{"text":"poorly","score":0.5},{"text":"well","score":1.0}],"notes":""},{"tags":["UX"],"body":"Is there a catch all errors clause handling unexpected errors?","answerOptions":[{"text":"no","score":0.0},{"text":"yes","score":1.0}],"notes":""},{"tags":["UX"],"body":"Do invalid inputs result in helpful error messages?","answerOptions":[{"text":"stacktrace","score":0.0},{"text":"unhelpful","score":0.5},{"text":"helpful","score":1.0}],"notes":""},{"tags":["UX"],"body":"On scale from redundant to helpful, how are the comments?","answerOptions":[{"text":"redundant","score":0.0},{"text":"helpful","score":1.0}],"notes":"redundant - state what the code does; helpful - explain reasons behind design decisions"},{"tags":["OOD"],"body":"Does the code follow Single Responsibility Principle?","answerOptions":[{"text":"rarely","score":0.0},{"text":"occasionally","score":0.5},{"text":"most times","score":1.0}],"notes":""},{"tags":["OOD"],"body":"Are classes & methods small?","answerOptions":[{"text":"no","score":0.0},{"text":"yes","score":1.0}],"notes":""},{"tags":["OOD"],"body":"Are variable / method names descriptive?","answerOptions":[{"text":"rarely","score":0.0},{"text":"occasionally","score":0.5},{"text":"most times","score":1.0}],"notes":""},{"tags":["OOD"],"body":"Are methods easy to understand?\t","answerOptions":[{"text":"rarely","score":0.0},{"text":"occasionally","score":0.5},{"text":"most times","score":1.0}],"notes":""},{"tags":["OOD"],"body":"Is the domain design helpful to describing the solution?","answerOptions":[{"text":"rarely","score":0.0},{"text":"occasionally","score":0.5},{"text":"most times","score":1.0}],"notes":""},{"tags":["Testing"],"body":"Is there a separation between Functional / Integration / Unit test levels?","answerOptions":[{"text":"no","score":0.0},{"text":"yes","score":1.0}],"notes":""},{"tags":["Testing"],"body":"Do unit tests describe behaviour of each public method?","answerOptions":[{"text":"rarely","score":0.0},{"text":"occasionally","score":0.5},{"text":"most times","score":1.0}],"notes":""},{"tags":["Testing"],"body":"Do unit tests cover exceptional cases?","answerOptions":[{"text":"rarely","score":0.0},{"text":"occasionally","score":0.5},{"text":"most times","score":1.0}],"notes":""},{"tags":["Testing"],"body":"Does test naming follow: action - context pattern?","answerOptions":[{"text":"rarely","score":0.0},{"text":"occasionally","score":0.5},{"text":"most times","score":1.0}],"notes":""},{"tags":["Testing"],"body":"Do tests follow arrange-act-assert pattern?","answerOptions":[{"text":"rarely","score":0.0},{"text":"occasionally","score":0.5},{"text":"most times","score":1.0}],"notes":""},{"tags":["Tech","Ruby"],"body":"Has a code quality checker / test coverage tool been used?","answerOptions":[{"text":"neither","score":0.0},{"text":"one of the two","score":0.25},{"text":"both","score":0.5}],"notes":"\tFor example Cane, or Stylecop"},{"tags":["Tech","Ruby"],"body":"Do tests appropriately use describe and context blocks?","answerOptions":[{"text":"no","score":0.0},{"text":"sometimes","score":0.25},{"text":"most times","score":0.5}],"notes":"Appropriately meaning in line with betterspecs.org guidelines"},{"tags":["Tech","Ruby"],"body":"Does the code include appropriate use of list / map operations?","answerOptions":[{"text":"rarely","score":0.0},{"text":"occasionally","score":0.25},{"text":"most times","score":0.5}],"notes":""},{"tags":["Tech","Ruby"],"body":"Is Rakefile provided with relevant tasks & descriptions?","answerOptions":[{"text":"missing","score":0.0},{"text":"present, but messy","score":0.25},{"text":"well structured","score":0.5}],"notes":""},{"tags":["Tech","Ruby"],"body":"Is Gemfile provided with relevant gem groupings","answerOptions":[{"text":"missing","score":0.0},{"text":"present","score":0.5}],"notes":""},{"tags":["Tech","Git"],"body":"Are changes grouped in small cohesive commits?","answerOptions":[{"text":"no","score":0.0},{"text":"yes","score":0.5}],"notes":""},{"tags":["Tech","Git"],"body":"Are commit messages meaningful, do they communicate reasons for changes?","answerOptions":[{"text":"no","score":0.0},{"text":"yes","score":0.5}],"notes":""},{"tags":["Tech","Git"],"body":"Is there a meaningul gitignore?","answerOptions":[{"text":"no","score":0.0},{"text":"yes","score":0.5},{"text":"not relevant","score":0.5}],"notes":""},{"tags":["Tech","Linux"],"body":"Is the runner written as a shell script (starting with a hashbang)?","answerOptions":[{"text":"no","score":0.0},{"text":"yes","score":0.5}],"notes":""},{"tags":["Tech","Linux"],"body":"Are relevant signals trapped (SIGINT, EXIT)?","answerOptions":[{"text":"no","score":0.0},{"text":"yes","score":0.5}],"notes":""}]
    _.map(data, (item) -> new Question(item))

