_ = require('underscore')

module.exports = (app) ->
  app.get '/', (req, res) ->
    res.render 'index'
      title    : 'Home'
      hiragana : _.indexOf(req.session.kanaFilter, 'hiragana') > -1
      katakana : _.indexOf(req.session.kanaFilter, 'katakana') > -1

  app.get '/contact/', (req, res) ->
    res.render 'contact'
      title : 'Contact'
