$(function() {

  var api_url = "http://localhost:8000";

  var mes = sessionStorage.mes;

  $("#return").click(function() {
    window.location.assign('index.html');
  });

  // Load the Visualization API and the corechart package.
  google.charts.load('current', {'packages':['corechart', 'bar']});

  google.charts.setOnLoadCallback(getMovimentosMes);

  function drawChart1(arr) {

    var chartDiv = document.getElementById('chartDiv');

    var data = google.visualization.arrayToDataTable([
      ['Categoria', 'Receita', 'Despesa'],
      arr[0],
      arr[1],
      arr[2],
      arr[3],
      arr[4],
      arr[5],
      arr[6],
      arr[7],
      arr[8],
      arr[9],
      arr[10],
      arr[11]
    ]);

    var classicOptions = {
      width: window.innerWidth,
      series: {
        0: {targetAxisIndex: 0},
        1: {targetAxisIndex: 1}
      },
      title: '',
      vAxes: {
        // Adds titles to each axis.
        0: {title: 'Receitas'},
        1: {title: 'Despesas'}
      }
    };

    function drawClassicChart() {
      var classicChart = new google.visualization.ColumnChart(chartDiv);
      classicChart.draw(data, classicOptions);
    }

    drawClassicChart();
  };

  function getMovimentosMes() {
    var arr_movimentos = new Array(['Alimentação', 0, 0], ['Educação', 0, 0], ['Esportes', 0, 0], ['Lazer', 0, 0], ['Moradia', 0, 0], ['Outros', 0, 0],
                                  ['Presentes', 0, 0], ['Roupas', 0, 0], ['Salário', 0, 0], ['Saúde', 0, 0], ['Transporte', 0, 0], ['Viagem', 0, 0]);

    $.ajax({
      type: 'GET',
      url: api_url + '/movimentacoes/mes/' + mes,
      contentType: "application/json",
      dataType: 'json',

      success: function(data, status) {
        for (i = 0; i < data.length; i++) {
          if (data[i].tipo == 'Receita') {
            switch(data[i].categoria) {
              case 'Alimentação':
                  arr_movimentos[0] = [data[i].categoria, parseFloat(data[i].valor) + arr_movimentos[0][1], arr_movimentos[0][2]];
                  break;
              case 'Educação':
                  arr_movimentos[1] = [data[i].categoria, parseFloat(data[i].valor) + arr_movimentos[1][1], arr_movimentos[1][2]];
                  break;
              case 'Esportes':
                  arr_movimentos[2] = [data[i].categoria, parseFloat(data[i].valor) + arr_movimentos[2][1], arr_movimentos[2][2]];
                  break;
              case 'Lazer':
                  arr_movimentos[3] = [data[i].categoria, parseFloat(data[i].valor) + arr_movimentos[3][1], arr_movimentos[3][2]];
                  break;
              case 'Moradia':
                  arr_movimentos[4] = [data[i].categoria, parseFloat(data[i].valor) + arr_movimentos[4][1], arr_movimentos[4][2]];
                  break;
              case 'Outros':
                  arr_movimentos[5] = [data[i].categoria, parseFloat(data[i].valor) + arr_movimentos[5][1], arr_movimentos[5][2]];
                  break;
              case 'Presentes':
                  arr_movimentos[6] = [data[i].categoria, parseFloat(data[i].valor) + arr_movimentos[6][1], arr_movimentos[6][2]];
                  break;
              case 'Roupas':
                  arr_movimentos[7] = [data[i].categoria, parseFloat(data[i].valor) + arr_movimentos[7][1], arr_movimentos[7][2]];
                  break;
              case 'Salário':
                  arr_movimentos[8] = [data[i].categoria, parseFloat(data[i].valor) + arr_movimentos[8][1], arr_movimentos[8][2]];
                  break;
              case 'Saúde':
                  arr_movimentos[9] = [data[i].categoria, parseFloat(data[i].valor) + arr_movimentos[9][1], arr_movimentos[9][2]];
                  break;
              case 'Transporte':
                  arr_movimentos[10] = [data[i].categoria, parseFloat(data[i].valor) + arr_movimentos[10][1], arr_movimentos[10][2]];
                  break;
              case 'Viagem':
                  arr_movimentos[11] = [data[i].categoria, parseFloat(data[i].valor) + arr_movimentos[11][1], arr_movimentos[11][2]];
                  break;
              default:
                  break;
            }
          }else {
            switch(data[i].categoria) {
              case 'Alimentação':
                  arr_movimentos[0] = [data[i].categoria, arr_movimentos[0][1], parseFloat(data[i].valor) + arr_movimentos[0][2]];
                  break;
              case 'Educação':
                  arr_movimentos[1] = [data[i].categoria, arr_movimentos[1][1], parseFloat(data[i].valor) + arr_movimentos[1][2]];
                  break;
              case 'Esportes':
                  arr_movimentos[2] = [data[i].categoria, arr_movimentos[2][1], parseFloat(data[i].valor) + arr_movimentos[2][2]];
                  break;
              case 'Lazer':
                  arr_movimentos[3] = [data[i].categoria, arr_movimentos[3][1], parseFloat(data[i].valor) + arr_movimentos[3][2]];
                  break;
              case 'Moradia':
                  arr_movimentos[4] = [data[i].categoria, arr_movimentos[4][1], parseFloat(data[i].valor) + arr_movimentos[4][2]];
                  break;
              case 'Outros':
                  arr_movimentos[5] = [data[i].categoria, arr_movimentos[5][1], parseFloat(data[i].valor) + arr_movimentos[5][2]];
                  break;
              case 'Presentes':
                  arr_movimentos[6] = [data[i].categoria, arr_movimentos[6][1], parseFloat(data[i].valor) + arr_movimentos[6][2]];
                  break;
              case 'Roupas':
                  arr_movimentos[7] = [data[i].categoria, arr_movimentos[7][1], parseFloat(data[i].valor) + arr_movimentos[7][2]];
                  break;
              case 'Salário':
                  arr_movimentos[8] = [data[i].categoria, arr_movimentos[8][1], parseFloat(data[i].valor) + arr_movimentos[8][2]];
                  break;
              case 'Saúde':
                  arr_movimentos[9] = [data[i].categoria, arr_movimentos[9][1], parseFloat(data[i].valor) + arr_movimentos[9][2]];
                  break;
              case 'Transporte':
                  arr_movimentos[10] = [data[i].categoria, arr_movimentos[10][1], parseFloat(data[i].valor) + arr_movimentos[10][2]];
                  break;
              case 'Viagem':
                  arr_movimentos[11] = [data[i].categoria, arr_movimentos[11][1], parseFloat(data[i].valor) + arr_movimentos[11][2]];
                  break;
              default:
                  break;
            }
          }
        }
        drawChart1(arr_movimentos);
      }
    });
  }
});
