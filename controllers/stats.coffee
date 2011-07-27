redis  = require('redis')
config = require('../config')
_      = require('underscore')

kanaSet = ['katakana', 'hiragana', 'kana']
    
module.exports = (app) ->
  client = redis.createClient(config.REDIS_PORT)
  client.select config.DATA_DB
  client.on 'error', (err) ->
    console.log "Error: " + err

  app.param 'kanaSet', (req, res, next, set) ->
    if not _.contains(kanaSet, set)
      return next(Error("Invalid kana set #{ set }"))
    next()

  app.get '/stats/:uid', (req, res) ->
    uid = req.user.id
    client.smembers 'charset:kana', (err, kanaSet) ->
      pipe = client.multi()
      kanaSet.forEach (kana) ->
        pipe.hgetall "userstats:#{ uid }:kana:#{ kana }"

      pipe.exec (err, stats) ->
        _.forEach stats, (stat) ->
          stat.correct = parseInt(stat.correct, 10) || 0
          stat.wrong = parseInt(stat.wrong, 10) || 0
          stat.skip = parseInt(stat.skip, 10) || 0

        kanaStats = _.filter _.zip(kanaSet, stats), (kanaStat) ->
          [kana, stat] = kanaStat
          total = stat.correct + stat.wrong + stat.skip
          return stat.correct + stat.wrong + stat.skip > 0
        console.log kanaStats
        stats = _.map kanaStats, (kanaStat) ->
          [kana, stat] = kanaStat
          stat.kana = kana
          total = stat.correct + stat.wrong + stat.skip
          stat.percentCorrect = stat.correct / total * 100
          return stat

        res.render 'stats',
          stats : stats
  
  app.get '/stats/:kanaSet', (req, res) ->
    client.hgetall "stats:rand:#{ req.params.kanaSet }", (err, randStats) ->
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


