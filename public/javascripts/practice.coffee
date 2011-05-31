
practice =
  kana    : ''
  romanji : ''
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


$(document).ready () ->
  $('#practice input[type=text]').keyup (e) ->
    if practice.romanji == $(this).val()
      practice.random()
      $(this).val('')
      $('#practice').addClass('correct')
  practice.random()

