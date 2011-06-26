module.exports =
  create : (default_value) ->
    value = default_value
    return get : () ->
      return value
    set : (new_value) ->
      value = new_value
    add : (new_value) ->
      value = [] unless value?
      value.push(new_value)
