practice =
  kana    : ''
  romanji : []
  guess   : ''
  random  : () ->
    self = this
    urlbase = window.kanaFilter.kanaUrl()
    $.ajax
      url     : "/#{ urlbase }/random/"
      type    : 'GET'
      success : (data) ->
        self.kana = data.kana
        self.romanji = data.romanji
        $('#practice p.kana').text(self.kana)
        clearTimeout self.timerID
        self.timerID = setTimeout (()->$('#textframe').removeClass('correct')), 888

$(document).ready () ->
  window.KanaFilter = Backbone.Model.extend
    defaults :
      hiragana : true
      katakana : true
    validate : (attrs) ->
      desiredModel = _.extend(this.toJSON(), attrs)
      if not desiredModel.hiragana and not desiredModel.katakana
        return "Must select at least one character set"
    select   : (charset) ->
      switch charset
        when 'hiragana' then return this.save { hiragana : true }
        when 'katakana' then return this.save { katakana : true }
        else return false
    unselect : (charset) ->
      switch charset
        when 'hiragana' then return this.save { hiragana : false }
        when 'katakana' then return this.save { katakana : false }
        else return false
    url      : () ->
      return '/kanafilter/'
    kanaUrl : () ->
      if this.get("hiragana") and this.get("katakana")
        return 'kana'
      else if this.get("hiragana")
        return 'hiragana'
      else if this.get("katakana")
        return 'katakana'
      else
        throw Error("invalid KanaFilter model state")

  window.KanaFilterView = Backbone.View.extend
    el         : $("#kana-filter")
    template   : _.template $('#kanafilter-template').html()
    events     :
      "click .select-button.selected"   : "unselect"
      "click .select-button.unselected" : "select"
    initialize : () ->
      this.model.view = this
      this.render()
    render     : () ->
      $(this.el).html this.template(this.model.toJSON())
      return this
    select     : (e) ->
      if this.model.select $(e.target).data('charset')
        this.render()
        practice.random()
      return this
    unselect   : (e) ->
      if this.model.unselect $(e.target).data('charset')
        this.render()
        practice.random()
      return this


  window.kanaFilter = new KanaFilter
  window.kanaFilter.fetch
    success : (model, response) ->
      window.kanaFilterView = new KanaFilterView { model : window.kanaFilter }
      practice.random()

  $('#practice input[type=text]').blur()

$('#practice input[type=text]').live 'keyup', () ->
  if _.contains(practice.romanji, $(this).val().toLowerCase())
    practice.random()
    $(this).val('')
    $('#textframe').addClass('correct')

$('#practice input[type=text]').live 'focus', () ->
  if $(this).hasClass('prompt')
    $(this).removeClass('prompt')
    $(this).val('')

$('#practice input[type=text]').live 'blur', () ->
  if $.trim($(this).val()) == ''
    $(this).addClass('prompt')
    $(this).val('Enter Romanji...')

skipBtnTimerRunning = false
$('#practice .skip-button').live 'click', () ->
  if not skipBtnTimerRunning
    skipBtnTimerRunning = true
    $('#practice p.response').text(practice.romanji.join(', '))
    clearTimeout skipBtnTimerID
    skipBtnTimerID = setTimeout ()->
      #TODO make it fade instead
      $('#practice p.response').text('')
      $('#practice input[type=text]').val('')
      practice.random()
      skipBtnTimerRunning = false
    , 1000

