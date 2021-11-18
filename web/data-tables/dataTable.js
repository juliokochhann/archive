$(document).ready(function() {

    // Define opções padroes para todas tabelas
    $.extend( $.fn.dataTable.defaults, {
        searching: false,
        ordering:  false,
        paging: false,
        info: false
    } );

    document.getElementById('files').addEventListener('change', handleFileSelect, false);

    // Load the Visualization API and the corechart package.
    google.charts.load('current', {'packages':['corechart']});

    // Set a callback to run when the Google Visualization API is loaded.
    google.charts.setOnLoadCallback(drawChart);

    // Callback that creates and populates a data table,
    // instantiates the pie chart, passes in the data and
    // draws it.
    function drawChart1(quant_compras_pais) {
      // Create the data table.
      var data = new google.visualization.DataTable();
      data.addColumn('string', 'País');
      data.addColumn('number', 'Compras');
      data.addRows([
        ['Brazil', quant_compras_pais[0]],
        ['Canada', quant_compras_pais[1]],
        ['United States', quant_compras_pais[2]],
        ['United Kingdom', quant_compras_pais[3]]
      ]);

      // Set chart options
      var options = {'title':'Compras por país',
                     'is3D':true,
                     'legend':{position:'bottom'},
                     'width':'100%',
                     'height':300};

      // Instantiate and draw our chart, passing in some options.
      var chart = new google.visualization.PieChart(document.getElementById('chart_quant_compras_pais'));
      chart.draw(data, options);
    }

    function drawChart2(quant_compras_faixa_valor) {
      // Create the data table.
      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Faixa');
      data.addColumn('number', 'Valor');
      data.addRows([
        ['$0 - $999', quant_compras_faixa_valor[0]],
        ['$1000 - 2499', quant_compras_faixa_valor[1]],
        ['$2500 - $5000', quant_compras_faixa_valor[2]]
      ]);

      // Set chart options
      var options = {'title':'Compras por faixa de valor',
                     'is3D':true,
                     'legend':{position:'bottom'},
                     'width':'100%',
                     'height':300};

      // Instantiate and draw our chart, passing in some options.
      var chart = new google.visualization.PieChart(document.getElementById('chart_quant_compras_faixa_valor'));
      chart.draw(data, options);
    }

    function handleFileSelect(evt) {
      var files = evt.target.files; // FileList object

      var reader = new FileReader();

      // files is a FileList of File objects. List some properties.
      reader.readAsBinaryString(files[0]);

      reader.onload = (function(file) {
          var data = $.parseJSON(file.target.result);

          quant_compras_genero(data);

          quant_compras_tipo_pagamento(data);

          quant_compras_pais(data);

          quant_compras_faixa_valor(data);
      });
    }

    function quant_compras_genero(data) {
      var quant_compras_genero = new Array(2).fill(0);

      $.each(data, function(key,value) {
        if (value.gender == "Male") {
          quant_compras_genero[0]++;
        }else {
            quant_compras_genero[1]++;
        }
      });

      var table = $('#quant_compras_genero').DataTable();

      table.row.add(
        [quant_compras_genero[0], quant_compras_genero[1]]
      ).draw();
    }

    function quant_compras_tipo_pagamento(data) {
      var quant_compras_tipo_pagamento = new Array(2).fill(0);

      $.each(data, function(key,value) {
        if (!value.credit_card) {
          quant_compras_tipo_pagamento[0]++;
        }else {
            quant_compras_tipo_pagamento[1]++;
        }
      });

      var table = $('#quant_compras_tipo_pagamento').DataTable();

      table.row.add(
        [quant_compras_tipo_pagamento[0], quant_compras_tipo_pagamento[1]]
      ).draw();
    }

    function quant_compras_pais(data) {
      var quant_compras_pais = new Array(4).fill(0);

      $.each(data, function(key,value) {
          if (value.country == 'Brazil') {
            quant_compras_pais[0]++;
          }else if (value.country == 'Canada') {
            quant_compras_pais[1]++;
          }else if (value.country == 'United States') {
            quant_compras_pais[2]++;
          }else if (value.country == 'United Kingdom') {
            quant_compras_pais[3]++;
          }
      });

      var table = $('#quant_compras_pais').DataTable();

      table.row.add(
        [quant_compras_pais[0], quant_compras_pais[1], quant_compras_pais[2], quant_compras_pais[3]]
      ).draw();

      drawChart1(quant_compras_pais);
    }

    function textToFloat(text){
      var valor = text.replace("$", "");
      return parseFloat(valor);
    }

    function quant_compras_faixa_valor(data) {
      var  quant_compras_faixa_valor = new Array(3).fill(0);

      $.each(data, function(key,value) {
          if (textToFloat(value.money) < 1000) {
             quant_compras_faixa_valor[0]++;
          }else if (textToFloat(value.money) < 2500) {
             quant_compras_faixa_valor[1]++;
          }else if (textToFloat(value.money) <= 5000) {
             quant_compras_faixa_valor[2]++;
          }
      });

      var table = $('#quant_compras_faixa_valor').DataTable();

      table.row.add(
        [quant_compras_faixa_valor[0],  quant_compras_faixa_valor[1],  quant_compras_faixa_valor[2]]
      ).draw();

      drawChart2(quant_compras_faixa_valor);
    }
  });
