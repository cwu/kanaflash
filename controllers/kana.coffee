module.exports = (app) ->
  app.get '/:kanaSet/index', (req, res) ->
    app.redis.smembers "charset:#{ req.params.kanaSet }", (err, data) ->
      res.contentType "json"
      res.send data

  app.get '/:kanaSet/random', (req, res) ->
    randAttempt = 0
    randCallback = (err, kana) ->
      throw err if err
      randAttempt++

      if req.query.prevKana == kana and randAttempt < config.MAX_RAND_TRIES
        return app.redis.srandmember "charset:#{ req.params.kanaSet }", randCallback

      app.redis.hincrby "stats:rand:#{ req.params.kanaSet }", kana, 1, (err, status) ->
        console.warn err if err

      app.redis.smembers "romaji:#{ kana }", (err, romaji) ->
        throw err if err

        res.header "Cache-Control", "no-cache, must-revalidate"
        res.contentType "json"
        res.send
          kana    : kana
          romaji : romaji

    app.redis.srandmember "charset:#{ req.params.kanaSet }", randCallback

