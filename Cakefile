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

  log "installing nodemon", green
  spawn 'npm', ['install', '-g', 'nodemon']

  log "installing local deps", green
  spawn 'npm', ['install']

  log "Done installation", green

task 'seed', ->
  log "Seeding hiragana"
  seed = spawn 'sh', ['tools/seed/hiragana.sh']
  seed.stderr.on 'data', (data) -> print '    ' + data.toString()

  seed.on 'exit', () ->
    log "Done Seeding Hiragana", green

    log "Seeding katakana"
    seed = spawn 'sh', ['tools/seed/katakana.sh']
    seed.stderr.on 'data', (data) -> print '    ' + data.toString()

    seed.on 'exit', () ->
      log "Done Seeding Katakana", green

      log "Combining Kana"
      seed = spawn 'sh', ['tools/seed/kana.sh']
      log "Done Combining Kana", green
