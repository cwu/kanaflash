express    = require('express')
RedisStore = require('connect-redis')(express)
property   = require('./lib/property')
config     = require('./config')
middleware = require('./lib/middleware')

app = module.exports = express.createServer()
app.NODE_ENV = global.process.env.NODE_ENV || 'development'

public_dir = __dirname + '/public'

# Configuration
app.configure () ->
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'jade'
  app.set 'view options'

  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.cookieParser()
  app.use express.session
    store  : new RedisStore { db : config.SESSION_DB }
    secret : config.SESSION_SECRET

  app.use require('stylus').middleware
    src      : __dirname + '/public'
    compress : app.NODE_ENV == 'production'
  app.use express.static(__dirname + '/public')

  app.use middleware().loadUser

  app.helpers
    NODE_ENV : app.NODE_ENV

  app.dynamicHelpers
    req         : (req) -> req
    cssIncludes : ()    -> property.create([])
    jsIncludes  : ()    -> property.create([])

  app.use app.router

app.configure 'development', () ->
  app.use express.errorHandler { dumpExceptions: true, showStack: true }

app.configure 'production', () ->
  app.use express.errorHandler()

# Controllers
require(__dirname + '/controllers/pages')(app)
require(__dirname + '/controllers/kana')(app)
require(__dirname + '/controllers/kanafilter')(app)
require(__dirname + '/controllers/stats')(app)
require(__dirname + '/controllers/guess')(app)

app.all '*', (req, res) ->
  res.render '404', { status : 404, layout : false }

app.error (err, req, res, next) ->
  if err instanceof NotFound
    res.render '404', { status : 404, layout : false }
  else
    next err

app.listen(global.process.env.PORT || config.SERVER_PORT)
console.log "Express server listening on port %d in %s mode", app.address().port, app.NODE_ENV
