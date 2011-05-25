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
  console.log color + message + reset
  

task 'deps', 'Install Dependencies', ->
  log "installing coffee-script", green
  spawn 'npm', ['install', '-g', 'coffee-script']

  log "installing stylus", green
  spawn 'npm', ['install', 'stylus']

  log "installing jade", green
  spawn 'npm', ['install', 'jade']

  log "installing express", green
  spawn 'npm', ['install', 'express']
  spawn 'npm', ['install', '-g', 'express']

  log "installing nodemon", green
  spawn 'npm', ['install', '-g', 'nodemon']

  log "Done installation", green


task 'server', 'Run the nodejs server', ->
  server = spawn 'coffee', ['-w', 'app.coffee']
  server.stdout.on 'data', (data) -> print data.toString()
  server.stderr.on 'data', (data) -> print data.toString()

