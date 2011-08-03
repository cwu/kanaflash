redis  = require('redis')
config = require('../config')
hacks  = require('../lib/hacks')

module.exports = (app) ->
  client = redis.createClient(config.REDIS_PORT)
  client.select config.DATA_DB
  client.on 'connect', hacks.onConnect(client, config.DATA_DB)
  client.on 'error', hacks.onError

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

      client.smembers "romaji:#{ kana }", (err, romaji) ->
        throw err if err

        res.header "Cache-Control", "no-cache, must-revalidate"
        res.contentType "json"
        res.send
          kana    : kana
          romaji : romaji

    client.srandmember "charset:#{ req.params.kanaSet }", randCallback

