express    = require('express')
property   = require('./lib/property')

app = module.exports = express.createServer()

public_dir = __dirname + '/public'

# Configuration
app.configure () ->
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'jade'
  app.set 'view options'

  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.cookieParser()
  app.use express.session({ secret: 'your secret here' })

  app.use require('stylus').middleware({ src: __dirname + '/public' })
  app.use express.static(__dirname + '/public')

  app.helpers
    NODE_ENV : global.process.env.NODE_ENV || 'development'

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

app.all '*', (req, res) ->
  res.render '404', { status : 404, layout : false }

app.error (err, req, res, next) ->
  if err instanceof NotFound
    res.render '404', { status : 404, layout : false }
  else
    next err

app.listen(global.process.env.PORT || 4000)
console.log "Express server listening on port %d", app.address().port
