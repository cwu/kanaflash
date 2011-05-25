module.exports = (kanaflash) ->
  kanaflash.app.get '/practice/', (req, res) ->
    res.render 'practice',
      app   : kanaflash,
      title : 'Practice'
