redis  = require('redis')
config = require('../config')
_      = require('underscore')
hacks  = require('../lib/hacks')

kanaSet = ['katakana', 'hiragana', 'kana']

intify = (obj, fields...) ->
  for field in fields
    obj[field] = parseInt(obj[field], 10) || 0
    
module.exports = (app) ->
  statClient = redis.createClient(config.REDIS_PORT)
  statClient.select config.STAT_DB
  statClient.on 'connect', hacks.onConnect(statClient, config.STAT_DB)
  statClient.on 'error', hacks.onError

  dataClient = redis.createClient(config.REDIS_PORT)
  dataClient.select config.DATA_DB
  dataClient.on 'connect', hacks.onConnect(dataClient, config.DATA_DB)
  dataClient.on 'error', hacks.onError

  app.param 'kanaSet', (req, res, next, set) ->
    if not _.contains(kanaSet, set)
      return next(Error("Invalid kana set #{ set }"))
    next()

  app.get '/stats/', (req, res) ->
    res.redirect "/stats/#{ req.user.id }"

  app.get '/stats/:uid', (req, res) ->
    uid = req.user.id
    dataClient.smembers 'charset:kana', (err, kanaSet) ->
      pipe = statClient.multi()
      for kana in kanaSet
        pipe.hgetall "userstats:#{ uid }:kana:#{ kana }"

      pipe.exec (err, stats) ->
        for [kana, stat] in _.zip(kanaSet, stats)
          stat.kana = kana
          intify(stat, 'correct', 'wrong', 'skip')
          stat.total = stat.correct + stat.wrong + stat.skip
          stat.percentCorrect = stat.correct / stat.total * 100

        res.render 'stats',
          stats : _.filter(stats, (stat) -> stat.total > 0)
  
  app.get '/stats/:kanaSet', (req, res) ->
    statClient.hgetall "stats:rand:#{ req.params.kanaSet }", (err, randStats) ->
      throw err if err

      charCount = 0
      total = 0
      for own kana, count of randStats
        total += parseInt(count, 10)
        charCount++


      stats = for own kana, count of randStats
        count = parseInt(count, 10)
        kana   : kana
        count  : count
        percent : 100.0 * count / total

      res.render 'kanaStats',
        set   : req.params.kanaSet
        count : charCount
        total : total
        stats : stats


