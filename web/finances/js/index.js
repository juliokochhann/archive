$(function() {

  var api_url = "http://localhost:8000";

  // Initialize collapse button
  $(".button-collapse").sideNav();

  $('.button-collapse').sideNav({
      menuWidth: 300, // Default is 300
      edge: 'left', // Choose the horizontal origin
      closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
      draggable: true, // Choose whether you can drag to open on touch screens
    }
  );

  $.extend( $.fn.dataTable.defaults, {
      searching: false,
      ordering:  false,
      paging: false,
      info: false,
      scrollY: "200px",
      scrollCollapse: true,
  } );

  var table = $('#movimentacoes').DataTable({
    columnDefs: [
      {
          className: 'hide', targets: [ 0 ]
      }
    ]
  });

  $("#sim").click(function() {
    deleteTodasMovimentacoes();
  });

  // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
  $('.modal').modal();

  var date = new Date();

  var meses = new Array('Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro');

  $("#month-dropdown").text(meses[date.getMonth()]);

  $("#cat-dropdown").text('Todas');

  $("#addReceita").click(function() {
    sessionStorage.tipo = 'receita';

    window.location.assign('adicionar.html');
  });

  $("#addDespesa").click(function() {
    sessionStorage.tipo = 'despesa';

    window.location.assign('adicionar.html');
  });

  $("#genChart").click(function() {
    var mes = meses.indexOf($("#month-dropdown").text())+1;

    sessionStorage.mes = mes;

    window.location.assign('chart.html');
  });

  $("#dropdown1 li a").click(function () {
    var mes = $(this).text();

    $("#month-dropdown").text(mes);

    getMovimentosMes(meses.indexOf(mes)+1, $("#cat-dropdown").text());
    }
  );

  $("#dropdown2 li a").click(function () {
    $("#cat-dropdown").text( $(this).text() );

    var mes = $("#month-dropdown").text();

    getMovimentosMes(meses.indexOf(mes)+1, $("#cat-dropdown").text());
    }
  );

  $('#movimentacoes').on('click', 'tr', function(linha) {
      var id = linha.currentTarget.children[0].textContent;

      var tipo = linha.currentTarget.children[1].textContent;

      if (id > 0) {
        sessionStorage.id = id;

        sessionStorage.tipo = tipo;

        window.location.assign('movimentacao.html');
      }
  });

  getMovimentosMes(date.getMonth()+1, $("#cat-dropdown").text());

  function getMovimentosMes(mes, categoria) {
    table.clear().draw();

    $.ajax({
      type: 'GET',
      url: api_url + '/movimentacoes/mes/' + mes,
      contentType: "application/json",
      dataType: 'json',

      success: function(data, status) {
        var saldo = 0;

        for (i = 0; i < data.length; i++) {
          var date = moment(data[i].data).format('DD/MM/YYYY');

          if (categoria == 'Todas') {
            if (data[i].tipo == 'Receita') {
              table.row.add(
                [data[i].id, data[i].tipo, data[i].categoria, date, data[i].valor]
              ).draw();

              saldo += parseFloat(data[i].valor);
            }else {
              table.row.add(
                [data[i].id, data[i].tipo, data[i].categoria, date, data[i].valor]
              ).draw();

              saldo -= parseFloat(data[i].valor);
            }
          }else {
            if (data[i].categoria == categoria) {
              if (data[i].id, data[i].tipo == 'Receita') {
                table.row.add(
                  [data[i].id, data[i].tipo, data[i].categoria, date, data[i].valor]
                ).draw();

                saldo += parseFloat(data[i].valor);
              }else {
                table.row.add(
                  [data[i].id, data[i].tipo, data[i].categoria, date, data[i].valor]
                ).draw();

                saldo -= parseFloat(data[i].valor);
              }
            }
          }
        }

        saldo = saldo.toFixed(2);

        if (saldo >= 0) {
          $("#saldo").css('color', 'green');
        }else {
          $("#saldo").css('color', 'red');
        }

        $("#saldo").text(saldo);
      }
    });
  }

  function deleteTodasMovimentacoes() {
    $.ajax({
      type: 'DELETE',
      url: api_url + '/movimentacoes',
      contentType: "application/json",
      dataType: 'json',

      success: function(data, status) {
        // Materialize.toast(message, displayLength, className, completeCallback);
        Materialize.toast(data.msg, 4000, '',function(){window.location.reload(true);}); // 4000 is the duration of the toast
      },
      error: function(jqXHR, status) {
        Materialize.toast('Ocorreu uma falha inesperada. Erro: ' + status, 4000);
      }
    });
  }
});
