(function() {
  var practice;
  practice = {
    kana: '',
    romanji: [],
    guess: '',
    random: function() {
      var self;
      self = this;
      return $.ajax({
        url: '/kana/random/',
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
  $('#practice input[type=text]').live('keyup', function() {
    if (_.contains(practice.romanji, $(this).val().toLowerCase())) {
      practice.random();
      $(this).val('');
      return $('#practice').addClass('correct');
    }
  });
  $('#practice input[type=text]').live('focus', function() {
    if ($(this).hasClass('prompt')) {
      $(this).removeClass('prompt');
      return $(this).val('');
    }
  });
  $('#practice input[type=text]').live('blur', function() {
    if ($.trim($(this).val()) === '') {
      $(this).addClass('prompt');
      return $(this).val('Enter Romanji...');
    }
  });
  $(document).ready(function() {
    $('#practice input[type=text]').blur();
    return practice.random();
  });
}).call(this);
