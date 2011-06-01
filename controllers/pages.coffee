
module.exports = (kanaflash) ->
  kanaflash.app.get '/contact/', (req, res) ->
    res.render 'contact'
      app   : kanaflash
      title : 'Contact'
