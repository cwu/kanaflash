config = require('../config')
util   = require('../lib/util')

module.exports = () ->
  class AnonUser
    constructor : (@id) ->
      if this.id == null
        this.id = 'A' + util.randomString(config.ANON_USER_ID_LEN)

  return AnonUser

