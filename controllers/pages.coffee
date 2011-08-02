_ = require('underscore')

module.exports = (app) ->
  app.get '/', (req, res) ->
    res.render 'index'
      hiragana : _.indexOf(req.session.kanaFilter, 'hiragana') > -1
      katakana : _.indexOf(req.session.kanaFilter, 'katakana') > -1

  app.get '/contact/', (req, res) -> res.render 'contact'
  app.get '/about/', (req, res)   -> res.render 'about'
