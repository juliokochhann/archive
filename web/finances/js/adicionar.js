$(function() {

  var api_url = "http://localhost:8000";

  var tipo = sessionStorage.tipo;

  var categorias = new Array('Alimentação', 'Educação', 'Esportes', 'Lazer', 'Moradia', 'Outros', 'Presentes', 'Roupas', 'Salário', 'Saúde', 'Transporte', 'Viagem');

  $("#submit").click(function() {
    insertMovimentacao();
  });

  $("#return").click(function() {
    window.location.assign('index.html');
  });

  $("#dropdown1 li a").click(function () {
    $("#cat-dropdown").text( $(this).text() );
  });

  function insertMovimentacao() {
    if (tipo == 'receita') {
      tipo = 1;
    }else {
      tipo = 2;
    }

  	var categoria = categorias.indexOf($("#cat-dropdown").text())+1;

    var data = $("#data").val();

  	var valor = parseFloat($("#valor").val());

  	var descricao = $("#descricao").val();

    $.ajax({
			type: 'POST',
			url: api_url + '/movimentacoes/adicionar',
			data: JSON.stringify({"tipo": tipo, "categoria": categoria, "data": data, "valor": valor, "descricao": descricao}),
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

  if (tipo == 'receita') {
    $("h4").text('Adicionar Receita');
    $(".title").css('color', '#4caf50');
  }else {
    $("h4").text('Adicionar Despesa');
    $(".title").css('color', '#f44336');
  }

  $("#data").val(moment(moment()).format('YYYY-MM-DD'));

});
