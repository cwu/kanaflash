redis  = require('redis')
config = require('../config')
_      = require('underscore')

kanaSet = ['katakana', 'hiragana', 'kana']
    
module.exports = (app) ->
  client = redis.createClient(config.REDIS_PORT)
  client.select config.DATA_DB
  client.on 'error', (err) ->
    console.log "Error: #{ err }"

  app.param 'kanaSet', (req, res, next, set) ->
    if not _.contains(kanaSet, set)
      return next(Error("Invalid kana set #{ set }"))
    next()

  app.get '/:kanaSet/index', (req, res) ->
    client.smembers "charset:#{ req.params.kanaSet }", (err, data) ->
      res.contentType "json"
      res.send data

  app.get '/:kanaSet/random', (req, res) ->
    randAttempt = 0
    randCallback = (err, kana) ->
      throw err if err
      randAttempt++

      if req.query.prevKana == kana and randAttempt < config.MAX_RAND_TRIES
        return client.srandmember "charset:#{ req.params.kanaSet }", randCallback

      client.hincrby "stats:rand:#{ req.params.kanaSet }", kana, 1, (err, status) ->
        console.warn err if err

      client.smembers "romanji:#{ kana }", (err, romanji) ->
        throw err if err

        res.header "Cache-Control", "no-cache, must-revalidate"
        res.contentType "json"
        res.send
          kana    : kana
          romanji : romanji

    client.srandmember "charset:#{ req.params.kanaSet }", randCallback

