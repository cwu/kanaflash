redis    = require('redis')
hacks    = require('./hacks')
config   = require('../config')
AnonUser = require('../models/anonUser')()

exports = module.exports = () ->
  client = redis.createClient(config.REDIS_PORT)
  client.select config.DATA_DB
  client.on 'connect', hacks.onConnect(client, config.DATA_DB)
  client.on 'error', hacks.onError

  loadUser : (req, res, next) ->
    if req.session?
      if not req.session.uid?
        req.user = new AnonUser(null)
      else
        req.user = new AnonUser(req.session.uid)
      req.session.uid = req.user.id

      client.sadd 'users', req.session.uid
      client.sadd 'users:anon', req.session.uid

    next()

