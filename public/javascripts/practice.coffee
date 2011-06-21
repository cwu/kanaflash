practice =
  kana    : ''
  romanji : []
  guess   : ''
  random  : () ->
    self = this
    $.ajax {
      url: '/kana/random/',
      method: 'GET',
      success : (data) ->
        self.kana = data.kana
        self.romanji = data.romanji
        $('#practice p.kana').text(self.kana)
        clearTimeout(self.timerID)
        self.timerID = setTimeout (()->$('#textframe').removeClass('correct')), 888
    }

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

$(document).ready () ->
  $('#practice input[type=text]').blur()
  practice.random()
