express = require('express')

module.exports = express.createServer()
kanaflash =
  app        : module.exports
  REDIS_PORT : 6379
  NODE_ENV   : global.process.env.NODE_ENV || 'development'

public_dir = __dirname + '/public'

# Configuration
kanaflash.app.configure () ->
  kanaflash.app.set 'views', __dirname + '/views'
  kanaflash.app.set 'view engine', 'jade'
  kanaflash.app.use express.bodyParser()
  kanaflash.app.use express.methodOverride()
  kanaflash.app.use express.cookieParser()
  kanaflash.app.use express.session({ secret: 'your secret here' })

  kanaflash.app.use require('stylus').middleware({ src: __dirname + '/public' })
  kanaflash.app.use express.static(__dirname + '/public')
  kanaflash.app.use kanaflash.app.router

kanaflash.app.configure 'development', () ->
  kanaflash.app.use express.errorHandler({ dumpExceptions: true, showStack: true })

kanaflash.app.configure 'production', () ->
  kanaflash.app.use express.errorHandler()

# Routes
kanaflash.app.get '/', (req, res) ->
  res.render 'index', 
    title : 'Home'

require(__dirname + '/controllers/pages')(kanaflash)
require(__dirname + '/controllers/kana')(kanaflash)

kanaflash.app.all '*', (req, res) ->
  res.render '404', { status : 404, layout : false, path : req.url }

kanaflash.app.error (err, req, res, next) ->
  if err instanceof NotFound
    res.render '404', { status : 404, layout : false }
  else
    next err

kanaflash.app.listen(4000)
console.log "Express server listening on port %d", kanaflash.app.address().port
