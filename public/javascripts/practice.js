(function() {
  var practice;
  practice = {
    kana: '',
    romanji: '',
    guess: '',
    random: function() {
      var self;
      self = this;
      return $.ajax({
        url: '/hiragana/random/',
        method: 'GET',
        success: function(data) {
          self.kana = data.kana;
          self.romanji = data.romanji;
          $('#practice p.kana').text(self.kana);
          return $('#practice').removeClass('correct');
        }
      });
    }
  };
  $(document).ready(function() {
    $('#practice input[type=text]').keyup(function(e) {
      if (practice.romanji === $(this).val()) {
        practice.random();
        $(this).val('');
        return $('#practice').addClass('correct');
      }
    });
    return practice.random();
  });
}).call(this);
