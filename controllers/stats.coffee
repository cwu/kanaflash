_      = require('underscore')

intify = (obj, fields...) ->
  for field in fields
    obj[field] = parseInt(obj[field], 10) || 0
    
module.exports = (app) ->
  map2hiragana = {}
  map2katakana = {}

  # race condition on startup :(
  app.redis.hgetall "map2:hiragana", (err, map) -> map2hiragana = map if not err?
  app.redis.hgetall "map2:katakana", (err, map) -> map2katakana = map if not err?

  app.get '/stats',  (req, res) -> res.redirect "/stats/#{ req.user.id }"
  app.get '/stats/', (req, res) -> res.redirect "/stats/#{ req.user.id }"

  app.get '/stats/:uid', (req, res) ->
    uid = req.user.id
    app.redis.smembers 'charset:kana', (err, kanaSet) ->
      pipe = app.statRedis.multi()
      for kana in kanaSet
        pipe.hgetall "userstats:#{ uid }:kana:#{ kana }"

      pipe.exec (err, stats) ->
        kana2stat = {}
        for [kana, stat] in _.zip(kanaSet, stats)
          stat.kana = kana
          intify(stat, 'correct', 'wrong', 'skip')
          stat.total = stat.correct + stat.wrong + stat.skip
          stat.percentCorrect = stat.correct / stat.total * 100 if stat.total > 0
          kana2stat[kana] = stat

        res.render 'stats',
          stats : _.filter(stats, (stat) -> stat.total > 0)
          kana2stat : kana2stat
          map2hiragana : map2hiragana
          map2katakana : map2katakana
  
  app.get '/stats/:kanaSet', (req, res) ->
    app.statRedis.hgetall "stats:rand:#{ req.params.kanaSet }", (err, randStats) ->
      throw err if err

      charCount = 0
      total = 0
      for own kana, count of randStats
        total += parseInt(count, 10)
        charCount++


      stats = for own kana, count of randStats
        count = parseInt(count, 10)
        kana    : kana
        count   : count
        percent : 100.0 * count / total

      res.render 'kanaStats',
        set          : req.params.kanaSet
        count        : charCount
        total        : total
        stats        : stats

