$(function() {

  var globalData;

  var api = 'http://dicionario-aberto.net/search-json/';

  $('#loader').hide();

  $('#entries').hide();

  $('#btn-submit').click(function() {
      getJSON();
  });

  $('#search-input').keypress(function(e) {
    if(e.which == 13) {       //Enter pressionado
      getJSON();
    }
  });

  function capitalizeFirstLetter(string) {
    return string.charAt(0).toUpperCase() + string.slice(1).toLowerCase();
  }

  function clearLists() {
    $('ul').empty();

    $('ol').empty();
  }

  function dismissInput() {
    $('#search-input').val('');

    $('#search-input').blur();
  }

  function getJSON() {
    if ($('#search-input').val()) {
      $('#loader').show();

      var word = $('#search-input').val();

      $.getJSON(api+word).done(onFetchDone).fail(onFetchFail);
    }
  }

  function onFetchDone(data) {
    console.log(data);

    globalData = data;

    $('#info').text(capitalizeFirstLetter($('#search-input').val()) + ':');

    clearLists();

    dismissInput();

    try {
      for (i = 0; i < data.entry.sense.length; i++) {
          var def = data.entry.sense[i].def.replace(/_/g, '');

          $('ol').append('<li>' + def + '</li>');
      }
    }catch(err) {
      if (err.name == 'TypeError') {
          for (var i = 0; i < globalData.superEntry.length; i++) {
            if (i == 0) {
                $('ul').append('<li id="entry' + i + '"class="active"><a href="#!">' + (i + 1) + '</a></li>');

                for (var j = 0; j < globalData.superEntry[i].entry.sense.length; j++) {
                  var def = globalData.superEntry[i].entry.sense[j].def.replace(/_/g, '');

                  $('ol').append('<li>' + def + '</li>');
                }
            }else {
                $('ul').append('<li id="entry' + i + '"class="waves-effect"><a href="#!">' + (i + 1) + '</a></li>');
            }

            $('#entry' + i).click(function() {
              $("li.active").removeClass().addClass("waves-effect");

              $(this).removeClass().addClass("active");

              $('ol').empty();

              var index = parseInt($(this).text());

              for (var j = 0; j < globalData.superEntry[index-1].entry.sense.length; j++) {
                var def = globalData.superEntry[index-1].entry.sense[j].def.replace(/_/g, '');

                $('ol').append('<li>' + def + '</li>');
              }
            });
          }

          $('#entries').show();
      }
    }

    $('#loader').hide();
  }

  function onFetchFail(data) {
    $('#loader').hide();

    clearLists();

    dismissInput();

    $('#info').text('Palavra não encontrada.');
  }
});
