redis  = require('redis')
_      = require('underscore')

kanaSet = ['katakana', 'hiragana']
    
module.exports = (kanaflash) ->
  client = redis.createClient(kanaflash.REDIS_PORT)
  client.on 'error', (err) ->
    console.log "Error: " + err

  kanaflash.app.param 'kanaSet', (req, res, next, set) ->
    if not _.contains(kanaSet, set)
      return next(Error("Invalid kana set #{ set }"))
    next()

  kanaflash.app.get '/:kanaSet/index', (req, res) ->
    client.smembers "charset:#{ req.params.kanaSet }", (err, data) ->
      res.send data

  kanaflash.app.get '/:kanaSet/random', (req, res) ->
    client.srandmember "charset:#{ req.params.kanaSet }", (err, kana) ->
      client.get "charset:#{ req.params.kanaSet }:#{ kana }:romanji", (err, romanji) ->
        res.send {
          kana    : kana
          romanji : romanji
        }
