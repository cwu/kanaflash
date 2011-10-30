redis  = require('redis')
config = require('../config')
_      = require('underscore')
hacks  = require('../lib/hacks')

allowedGuessResults = ['correct', 'wrong', 'skip']

module.exports = (app) ->
  app.post '/guess/', (req, res) ->
    guess = req.body

    # make sure this is valid
    return res.send 400 if not _.contains allowedGuessResults, guess.guessResult

    statKey = "userstats:#{ req.user.id }:kana:#{ guess.kana }"

    app.statRedis.hincrby statKey, guess.guessResult, 1

    if guess.guessResult == 'wrong' and guess.guess?
      app.statRedis.lpush "#{ statKey }:guesses", guess.guess, (err, status) ->
        app.statRedis.ltrim "#{ statKey }:guesses", 0, config.SAVED_WRONG_GUESSES

    res.send 200
