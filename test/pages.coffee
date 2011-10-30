app = require '../app'

exports["test GET /"] = (beforeExit, assert) ->
  assert.response app, { url: '/' }, { status: 200 }

exports["test GET /contact"] = (beforeExit, assert) ->
  assert.response app, { url: '/contact' }, { status: 200 }

exports["test GET /terms"] = (beforeExit, assert) ->
  assert.response app, { url: '/terms' }, { status: 200 }

exports["test GET /about"] = (beforeExit, assert) ->
  assert.response app, { url: '/about' }, { status: 200 }
