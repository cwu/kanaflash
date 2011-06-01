fs            = require 'fs'
path          = require 'path'
{print}       = require 'sys'
{spawn, exec} = require 'child_process'

tasks    = {}
options  = {}
switches = []
oparse   = null

# ANSI Terminal Colors.
bold  = "\033[0;1m"
red   = "\033[0;31m"
green = "\033[0;32m"
reset = "\033[0m"

log = (message, color) ->
  if color?
    console.log color + message + reset
  else
    console.log message
  

task 'deps', 'Install Dependencies', ->
  log "installing coffee-script", green
  spawn 'npm', ['install', '-g', 'coffee-script']

  log "installing stylus", green
  spawn 'npm', ['install', 'stylus']

  log "installing jade", green
  spawn 'npm', ['install', 'jade']

  log "installing redis", green
  spawn 'npm', ['install', 'redis']

  log "installing underscore", green
  spawn 'npm', ['install', 'underscore']

  log "installing express", green
  spawn 'npm', ['install', 'express']
  spawn 'npm', ['install', '-g', 'express']

  log "installing nodemon", green
  spawn 'npm', ['install', '-g', 'nodemon']

  log "Done installation", green

task 'seed', ->
  log "Seeding hiragana"
  seed = spawn 'sh', ['seed/hiragana.sh']
  seed.stderr.on 'data', (data) -> print '    ' + data.toString()

  seed.on 'exit', () ->
    log "Done Seeding Hiragana", green

    log "Seeding hiragana"
    seed = spawn 'sh', ['seed/katakana.sh']
    seed.stderr.on 'data', (data) -> print '    ' + data.toString()

    seed.on 'exit', () ->
      log "Done Seeding Katakana", green

      log "Combining Kana"
      seed = spawn 'sh', ['seed/kana.sh']
      log "Done Combining Kana", green


task 'server', 'Run the nodejs server', ->
  server = spawn 'coffee', ['-w', 'app.coffee']
  server.stdout.on 'data', (data) -> print data.toString()
  server.stderr.on 'data', (data) -> print data.toString()

