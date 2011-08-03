redis  = require('redis')
config = require('../config')
_      = require('underscore')
hacks  = require('../lib/hacks')

allowedGuessResults = ['correct', 'wrong', 'skip']

module.exports = (app) ->
  client = redis.createClient(config.REDIS_PORT)
  client.select config.STAT_DB
  client.on 'connect', hacks.onConnect(client, config.STAT_DB)
  client.on 'error', hacks.onError

  app.post '/guess/', (req, res) ->
    guess = req.body

    # make sure this is valid
    return res.send 400 if not _.contains allowedGuessResults, guess.guessResult

    statKey = "userstats:#{ req.user.id }:kana:#{ guess.kana }"

    client.hincrby statKey, guess.guessResult, 1

    if guess.guessResult == 'wrong' and guess.guess?
      client.lpush "#{ statKey }:guesses", guess.guess, (err, status) ->
        client.ltrim "#{ statKey }:guesses", 0, config.SAVED_WRONG_GUESSES

    res.send 200
