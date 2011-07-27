exports = module.exports = (options) ->
  return options || {}

exports.randomString = (len) ->
  return "" if len < 1
  strSpace = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  (strSpace[Math.floor(Math.random() * strSpace.length)] for _ in [1..len]).join('')

