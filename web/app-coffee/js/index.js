$(function() {

  var pedidos = {};

  $(".collection a").click(function() {
    $(this).children('span').remove();

    var item = $(this).text();

    if (item in pedidos) {
      pedidos[item]++;
    }else {
      pedidos[item] = 1;
    }

    $(this).append('<span></span>');

    $(this).children('span').text(pedidos[item]).addClass('badge');
  });

  $("#clear").click(function() {
    limpaPedidos();
  });

  $("#check").click(function() {
    if (!$.isEmptyObject(pedidos)) {
      $('#modal1').modal('open');
    }else {
      Materialize.toast('Nenhum item adicionado ao pedido.', 4000);
    }
  });

  $("#confirm").click(function() {
    if ($(".modal-content input").val() == '') {
      Materialize.toast('Insira o numero da mesa.', 4000);
    }else {
      limpaPedidos();
      $(".modal-content input").val('');
      Materialize.toast('Pedido realizado com sucesso!', 4000);
      $('#modal1').modal('close');
    }
  });

  // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
  $('.modal').modal();

  $('.modal').modal({
      dismissible: false, // Modal can be dismissed by clicking outside of the modal
      opacity: .5, // Opacity of modal background
      inDuration: 300, // Transition in duration
      outDuration: 200, // Transition out duration
      startingTop: '4%', // Starting top style attribute
      endingTop: '10%', // Ending top style attribute
      ready: function(modal, trigger) { // Callback for Modal open. Modal and trigger parameters available.

        for (item in pedidos) {
          $(".modal-content ol").append('<li></li>');

          $(".modal-content ol li:last-child").text(item + ': ' + pedidos[item]);
        }
      },
      complete: function() {
        $(".modal-content ol li").remove();
      } // Callback for Modal close
    }
  );

  function limpaPedidos() {
    pedidos = {};
    $(".collection a span").remove();
  }
});
