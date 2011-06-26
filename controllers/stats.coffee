redis  = require('redis')
config = require('../config')
_      = require('underscore')

kanaSet = ['katakana', 'hiragana', 'kana']
    
module.exports = (app) ->
  client = redis.createClient(config.REDIS_PORT)
  client.on 'error', (err) ->
    console.log "Error: " + err

  app.param 'kanaSet', (req, res, next, set) ->
    if not _.contains(kanaSet, set)
      return next(Error("Invalid kana set #{ set }"))
    next()
  
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


