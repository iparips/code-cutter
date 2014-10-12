'use strict'

angular.module('ccApp.services')
  .factory 'scores', (_) ->
    class Scores

      count: (scores) ->
        _.reduce(
          scores
          (accumulator, score) ->
            value = if score != -1 then score else 0
            accumulator + value
          0
        )

      scoresByCat: (scoresByCat) ->
        results = {}
        categories = _.keys(scoresByCat)

        _.each categories, (category) =>
          scores = _.map scoresByCat[category], (catScorePair) -> catScorePair.score
          results[category] =
            score: this.count(scores)

        results

      userScoresPerCategory: (questions) ->
        catsAndScores = _.map questions, (q) -> q.toCatAndScore()
        scoresByCat = _.groupBy(catsAndScores, (q) -> q.category)
        this.scoresByCat(scoresByCat)

      fullScoresPerCategory: (questions) ->
        catsAndScores = _.map questions, (q) -> q.toCatAndFullScore()
        scoresByCat = _.groupBy catsAndScores, (q) -> q.category
        this.scoresByCat(scoresByCat)

      userScoresTotal: (questions) ->
        answers = _.map questions, (q) -> q.userAnswer
        this.count(answers)

      fullScoresTotal: (questions) ->
        scores = _.map questions, (q) -> q.fullScore()
        this.count(scores)

    new Scores()
