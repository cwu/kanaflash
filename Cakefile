fs            = require 'fs'
path          = require 'path'
{print}       = require 'sys'
{spawn, exec} = require 'child_process'

tasks    = {}
options  = {}
switches = []
oparse   = null

task 'server', 'Run the nodejs server', ->
  server = spawn 'coffee', ['-w', 'app.coffee']
  server.stdout.on 'data', (data) -> print data.toString()
  server.stderr.on 'data', (data) -> print data.toString()

