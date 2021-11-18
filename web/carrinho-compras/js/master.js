$(document).ready(function() {
  // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
  $('.modal').modal({
    dismissible: false, // Modal can be dismissed by clicking outside of the modal
    opacity: .5, // Opacity of modal background
    inDuration: 300, // Transition in duration
    outDuration: 200, // Transition out duration
    startingTop: '4%', // Starting top style attribute
    endingTop: '10%', // Ending top style attribute
    ready: function(modal, trigger) { // Callback for Modal open. Modal and trigger parameters available.

      var trigger = $(trigger[0]);       //trigger aponta para o local de onde o modal foi chamado

      console.log(trigger);

      var item = trigger.parents("tr");    //Variavel item aponta para a TR (linha da tabela) de onde o modal foi chamado
                                          //+info ver metodo PARENTS() e log do console

      console.log(item);

      $("#sim").click(function(){       //Se o usuário escolher 'sim'
          item.remove();              //Exclui a linha da tabela (TR)
      });
    },
    complete: function() {          //Quando a função completar, reescreve o valor total
      escreveTotal();
    } // Callback for Modal close
  });
});

  function textToFloat(text){
    var valor = text.replace("R$ ", "");
    return parseFloat(valor);
  }

  function floatToText(float){
    var text = "R$ " + float;
    return text;
  }

  function atualizaTotais(ID) {
    escreveSubtotal(ID);

    escreveTotal();
  }

  function calculaPrecoTotal(){

    var total = 0;

    var produtos = document.getElementsByClassName("produto");

    for (var i = 0; i < produtos.length; i++) {

      var subtotal = produtos[i].getElementsByClassName('total-unitario');
      subtotal = subtotal[0].textContent;

      subtotal = textToFloat(subtotal);

      total += subtotal;
    }

    total = parseFloat(total);

    total = total.toFixed(2);

    return floatToText(total);
  }

  function calculaSubtotal(ID) {
    var subtotal = 0;

    var produto = document.getElementById(ID);

    var precoUnitario = produto.getElementsByClassName('preco-unitario');
    precoUnitario = precoUnitario[0].textContent;

    precoUnitario = textToFloat(precoUnitario);

    var quantidadeItem = produto.getElementsByClassName('num-itens');
    quantidadeItem = quantidadeItem[0].value;

    subtotal = precoUnitario * quantidadeItem;

    var embalagem = produto.getElementsByClassName('embalagem');
    embalagem = embalagem[0].textContent;

    embalagem = parseFloat(embalagem);

    subtotal = subtotal + embalagem;

    subtotal = parseFloat(subtotal);

    subtotal = subtotal.toFixed(2);

    return floatToText(subtotal);
  }

  function escreveTotal() {
    var valorTotal = calculaPrecoTotal();

    document.getElementById("valor-total").innerHTML = valorTotal;
  }

  function escreveSubtotal(ID) {
    var subtotal = calculaSubtotal(ID);

    var produto = document.getElementById(ID);

    var totalUnitario = produto.getElementsByClassName('total-unitario');
    totalUnitario[0].innerHTML = subtotal;
  }

  function adicionaEmbalagem(ID) {
    var produto = document.getElementById(ID);

    var subtotal = produto.getElementsByClassName('total-unitario');

    if (document.getElementById('checkbox' + ID).checked) {
      var novoSubtotal = textToFloat(subtotal[0].textContent) + 3.5;

      subtotal[0].innerHTML = floatToText(novoSubtotal.toFixed(2));

      produto.getElementsByClassName('embalagem')[0].innerHTML = 3.5;
    }else {
      var novoSubtotal = textToFloat(subtotal[0].textContent) - 3.5;

      subtotal[0].innerHTML = floatToText(novoSubtotal.toFixed(2));

      produto.getElementsByClassName('embalagem')[0].innerHTML = 0;
    }

    escreveTotal();
  }
