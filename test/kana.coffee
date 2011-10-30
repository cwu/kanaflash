app = require '../app'

exports["test GET /hiragana/index"] = (beforeExit, assert) ->
  assert.response app, { url: '/hiragana/index' }, {
    status: 200,
    header :
      'Content-Type' : ///^application/json///
  }, (res) ->
    hiragana = JSON.parse res.body
    assert.equal 102, hiragana.length

exports["test GET /katakana/index"] = (beforeExit, assert) ->
  assert.response app, { url: '/katakana/index' }, {
    status: 200,
    header :
      'Content-Type' : ///^application/json///
  }, (res) ->
    katakana = JSON.parse res.body
    assert.equal 102, katakana.length

exports["test GET /kana/index"] = (beforeExit, assert) ->
  assert.response app, { url: '/kana/index' }, {
    status: 200,
    header :
      'Content-Type' : ///^application/json///
  }, (res) ->
    kana = JSON.parse res.body
    assert.equal 204, kana.length
