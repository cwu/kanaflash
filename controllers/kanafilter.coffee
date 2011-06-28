_      = require('underscore')

defaults =
  hiragana : true
  katakana : true

module.exports = (app) ->
  app.get '/kanafilter/', (req, res) ->
    req.session.kanaFilter = defaults unless req.session.kanaFilter?
    res.contentType "json"
    res.send req.session.kanaFilter

  app.post '/kanafilter/', (req, res) ->
    res.contentType "json"

    if req.body? and req.body.hiragana? and req.body.katakana?
      req.session.kanaFilter =
        hiragana : req.body.hiragana
        katakana : req.body.katakana
      res.send req.session.kanaFilter
    else
      res.send { error : "missing params" }, { status : 400 }

