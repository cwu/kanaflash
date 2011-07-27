redis  = require('redis')
config = require('redis')
_      = require('underscore')

allowedGuessResults = ['correct', 'wrong', 'skip']

module.exports = (app) ->
  client = redis.createClient(config.REDIS_PORT)
  client.select config.STAT_DB
  client.on 'error', (err) ->
    console.log "Error: #{ err }"

  app.post '/guess/', (req, res) ->
    console.log req.session
    guess = req.body

    # make sure this is valid
    return res.send 400 if not _.contains allowedGuessResults, guess.guessResult

    statKey = "userstats:#{ req.user.id }:kana:#{ guess.kana }"

    client.hincrby statKey, guess.guessResult, 1
    client.lpush "#{ statKey }:guesses", guess.guess, (err, status) ->
      client.ltrim "#{ statKey }:guesses", config.SAVED_WRONG_GUESSES

    res.send 200
