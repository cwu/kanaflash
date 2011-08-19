_.mixin
  pad : (string, ch, width) ->
    diff = Math.max(width - string.length, 0) + 1
    new Array(diff).join(ch) + string
  
  str2rgb : (str) ->
    r = parseInt(str[1..2], 16)
    g = parseInt(str[3..4], 16)
    b = parseInt(str[5..6], 16)
    [r, g, b]

  rgb2str : (rgb) ->
    colorToHex = (color) ->
      _(Math.round(color).toString(16)).pad('0', 2)
    hex = _.map(rgb, colorToHex).join('')
    return "##{ hex.toUpperCase() }"

  rgb2hsv : ([r,g,b]) ->
    r /= 255
    g /= 255
    b /= 255

    max = _.max [r, g, b]
    min = _.min [r, g, b]
    chroma = max - min

    if chroma == 0
      h = 0
    else
      switch max
        when r then h = (g - b) / chroma + (if g < b then 6 else 0)
        when g then h = (b - r) / chroma + 2
        when b then h = (r - g) / chroma + 4
    h /= 6
    s = if max == 0 then 0 else chroma / max
    v = max
    return [h, s, v]

  hsv2rgb : ([h,s,v]) ->
    i = Math.floor h * 6
    f = h * 6 - i
    p = v * (1 - s)
    q = v * (1 - f * s)
    t = v * (1 - (1 - f) * s)

    switch i % 6
      when 0 then [r,g,b] = [v, t, p]
      when 1 then [r,g,b] = [q, v, p]
      when 2 then [r,g,b] = [p, v, t]
      when 3 then [r,g,b] = [p, q, v]
      when 4 then [r,g,b] = [t, p, v]
      when 5 then [r,g,b] = [v, p, q]

    return [r * 255, g * 255, b * 255]

  interpolateColor : (from, to, x) ->
    fromHsv = _(from).chain().str2rgb().rgb2hsv().value()
    toHsv   = _(to)  .chain().str2rgb().rgb2hsv().value()
    newHsv  = _.map _.zip(fromHsv, toHsv), ([f,t]) -> f + (t - f) * x
    return _(newHsv).chain().hsv2rgb().rgb2str().value()

window.KanaStat = Backbone.Model.extend
  defaults:
    kana : ''
    percentCorrect : undefined

window.KanaStatView = Backbone.View.extend
  initialize : () ->
    _.bindAll this, 'render'
    this.model.bind 'change', this.render
  render : () ->
    if this.model.has('percentCorrect')
      percentCorrect = this.model.get('percentCorrect')
      opacity = Math.abs(percentCorrect / 100 - 0.5) * 1.5 + 0.25
      if percentCorrect < 50
        $(this.el).css 'background-color', '#FFAABB'
      else
        $(this.el).css 'background-color', '#AAFFBB'
      $(this.el).css 'background-color',
                      _.interpolateColor('#FFAABB', '#AAFFBB', percentCorrect / 100)
    return this

loadTab = (selectedTab) ->
  # TABS = ['summary', 'hiragana', 'katakana']
  TABS = ['hiragana', 'katakana']
  if _.contains TABS, selectedTab
    for tab in TABS
      $("##{ tab }-tab").hide()

    $("nav#tabs a").removeClass('selected')
    $("nav#tabs a[href='##{ selectedTab }']").addClass('selected')
    $("##{ selectedTab }-tab").show()



$(document).ready () ->
  _.each $("table.kana-chart td"), (el) ->
    kanaStat = new KanaStat $(el).data()
    view = new KanaStatView
      el    : el
      model : kanaStat
    view.render()
  loadTab window.location.hash[1..].toLowerCase() || 'hiragana'

$('nav#tabs a').live 'click', () ->
  loadTab $(this).attr('href')[1..]
