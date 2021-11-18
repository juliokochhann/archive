$(function() {

  var api_url = "http://localhost:8000";

  var id = sessionStorage.id;

  var tipo = sessionStorage.tipo;

  var categorias = new Array('Alimentação', 'Educação', 'Esportes', 'Lazer', 'Moradia', 'Outros', 'Presentes', 'Roupas', 'Salário', 'Saúde', 'Transporte', 'Viagem');

  $("#done").click(function() {
    window.location.assign('index.html');
  });

  $("#edit").click(function() {
    editMovimentacao();
  });

  $("#dropdown1 li a").click(function () {
    $("#cat-dropdown").text( $(this).text() );
  });

  $("#sim").click(function() {
    deleteMovimentacao();
  });

  // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
  $('.modal').modal();

  function getMovimentacaoID() {
    $.ajax({
      type: 'GET',
      url: api_url + '/movimentacoes/' + id,
      contentType: "application/json",
      dataType: 'json',

      success: function(data, status) {
        if (tipo == 'Receita') {
          $(".title").css('color', '#4caf50');
        }else {
          $(".title").css('color', '#f44336');
        }

        $("h3").text(tipo);

        $("#valor").val(data[0].valor);

        $("#data").val(moment(data[0].data).format('YYYY-MM-DD'));

        $("#cat-dropdown").text(data[0].categoria);

        $("#descricao").text(data[0].descricao);
      }
    });
  }

  function deleteMovimentacao() {
    $.ajax({
      type: 'DELETE',
      url: api_url + '/movimentacoes/' + id,
      contentType: "application/json",
      dataType: 'json',

      success: function(data, status) {
        // Materialize.toast(message, displayLength, className, completeCallback);
        Materialize.toast(data.msg, 4000, '',function(){window.location.assign('index.html');}); // 4000 is the duration of the toast
      },
      error: function(jqXHR, status) {
        Materialize.toast('Ocorreu uma falha inesperada. Erro: ' + status, 4000);
      }
    });
  }

  function editMovimentacao() {
    if (tipo == 'Receita') {
      tipo = 1;
    }else {
      tipo = 2;
    }

  	var categoria = categorias.indexOf($("#cat-dropdown").text())+1;

    var data = $("#data").val();

  	var valor = parseFloat($("#valor").val());

  	var descricao = $("#descricao").val();

    $.ajax({
			type: 'PUT',
			url: api_url + '/movimentacoes/' + id,
			data: JSON.stringify({"tipo": tipo, "categoria": categoria, "data": data, "valor": valor, "descricao": descricao}),
      contentType: "application/json",
			dataType: 'json',

			success: function(data, status) {
        // Materialize.toast(message, displayLength, className, completeCallback);
        Materialize.toast(data.msg, 4000); // 4000 is the duration of the toast
			},
      error: function(jqXHR, status) {
        Materialize.toast('Ocorreu uma falha inesperada. Erro: ' + status, 4000);
      }
		});
  }

  getMovimentacaoID();

});
