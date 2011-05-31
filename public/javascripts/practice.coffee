practice =
  kana    : ''
  romanji : []
  guess   : ''
  random  : () ->
    self = this
    $.ajax {
      url: '/hiragana/random/',
      method: 'GET',
      success : (data) ->
        self.kana = data.kana
        self.romanji = data.romanji
        $('#practice p.kana').text(self.kana)
        $('#practice').removeClass('correct')
    }

$('#practice input[type=text]').live 'keyup', () ->
  if _.contains(practice.romanji, $(this).val())
    practice.random()
    $(this).val('')
    $('#practice').addClass('correct')

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
