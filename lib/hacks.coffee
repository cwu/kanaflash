module.exports =
  onConnect : (client, db) -> () ->
    client.send_anyway = true
    client.select(db)
    client.send_false = true
  onError : (err) ->
    console.error "Redis Error: #{ err }"
