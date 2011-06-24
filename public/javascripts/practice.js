(function() {
  var practice;
  practice = {
    kana: '',
    romanji: [],
    guess: '',
    random: function() {
      var self, urlbase;
      self = this;
      urlbase = window.kanaFilter.kanaUrl();
      return $.ajax({
        url: "/" + urlbase + "/random/",
        type: 'GET',
        success: function(data) {
          self.kana = data.kana;
          self.romanji = data.romanji;
          $('#practice p.kana').text(self.kana);
          clearTimeout(self.timerID);
          return self.timerID = setTimeout((function() {
            return $('#textframe').removeClass('correct');
          }), 888);
        }
      });
    }
  };
  $(document).ready(function() {
    window.KanaFilter = Backbone.Model.extend({
      defaults: {
        hiragana: true,
        katakana: true
      },
      validate: function(attrs) {
        var desiredModel;
        desiredModel = _.extend(this.toJSON(), attrs);
        if (!desiredModel.hiragana && !desiredModel.katakana) {
          return "Must select at least one character set";
        }
      },
      select: function(charset) {
        switch (charset) {
          case 'hiragana':
            return this.set({
              hiragana: true
            });
          case 'katakana':
            return this.set({
              katakana: true
            });
          default:
            return false;
        }
      },
      unselect: function(charset) {
        switch (charset) {
          case 'hiragana':
            return this.set({
              hiragana: false
            });
          case 'katakana':
            return this.set({
              katakana: false
            });
          default:
            return false;
        }
      },
      url: function() {
        return '/kanafilter';
      },
      kanaUrl: function() {
        if (this.get("hiragana") && this.get("katakana")) {
          return 'kana';
        } else if (this.get("hiragana")) {
          return 'hiragana';
        } else if (this.get("katakana")) {
          return 'katakana';
        } else {
          throw Error("invalid KanaFilter model state");
        }
      }
    });
    window.KanaFilterView = Backbone.View.extend({
      el: $("#kana-filter"),
      template: _.template($('#kanafilter-template').html()),
      events: {
        "click .select-button.selected": "unselect",
        "click .select-button.unselected": "select"
      },
      initialize: function() {
        this.model.view = this;
        return this.render();
      },
      render: function() {
        $(this.el).html(this.template(this.model.toJSON()));
        return this;
      },
      select: function(e) {
        if (this.model.select($(e.target).data('charset'))) {
          this.render();
          practice.random();
        }
        return this;
      },
      unselect: function(e) {
        if (this.model.unselect($(e.target).data('charset'))) {
          this.render();
          practice.random();
        }
        return this;
      }
    });
    window.kanaFilter = new KanaFilter;
    return window.kanaFilterView = new KanaFilterView({
      model: window.kanaFilter
    });
  });
  $('#practice input[type=text]').live('keyup', function() {
    if (_.contains(practice.romanji, $(this).val().toLowerCase())) {
      practice.random();
      $(this).val('');
      return $('#textframe').addClass('correct');
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
