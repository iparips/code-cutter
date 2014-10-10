'use strict'

angular.module('ccApp.services')
  .factory 'scores', (_) ->
    class Scores

      score: (scoresByCat) ->
        results = {}
        categories = _.keys(scoresByCat)

        _.each(categories, (category) ->

          scorer = (accumulator, scoreCategoryPair) ->
            score = scoreCategoryPair.score
            value = if score != -1 then score else 0
            accumulator + value

          score = _.reduce(
              scoresByCat[category],
              scorer,
              0)

          results[category] =
            score: score
        )
        results

      userScores: (questions) ->
        catsAndScores = _.map(questions, (q) ->
          {
          category: q.tags[0],
          score:  q.userAnswer
          }
        )

        scoresByCat = _.groupBy(catsAndScores, (q) -> q.category)
        this.score(scoresByCat)

      totals: (questions) ->
        catsAndScores = _.map(questions, (q) ->
          {
            category: q.tags[0],
            score:  _.max(_.values(q.answerOptions))
          }
        )
        scoresByCat = _.groupBy(catsAndScores, (q) -> q.category)
        this.score(scoresByCat)


    new Scores()
