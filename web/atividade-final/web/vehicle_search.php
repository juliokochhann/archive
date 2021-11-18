<?php
include_once("verify_session.php");
include_once("../dao/vehicleDao.php");

require_once("../lib/Template.php");
use raelgc\view\Template;

$estaLogado = verificaSessao();

if ($estaLogado) {
  $placa_veiculo = $_GET['car_plate'];

  $veiculo = procura_veiculo($placa_veiculo);

  if ($veiculo) {
    $tpl = new Template("../view/parking.html");

    $tpl->placa_veiculo = $veiculo['placa'];
    $tpl->marca_veiculo = $veiculo['marca'];
    $tpl->modelo_veiculo = $veiculo['modelo'];
    $tpl->cor_veiculo = $veiculo['cor'];
    $tpl->categoria_veiculo = $veiculo['categoria'];

    if (!isset ($_SESSION[$placa_veiculo])) {
      $hora_entrada = new DateTime('now');

      $_SESSION[$placa_veiculo] = $hora_entrada;

      $tpl->hora_entrada = $hora_entrada->format('H:i:s');

      $tpl->block("BLOCK_VEICULO_ENTRANDO");
    }else {
      $hora_entrada = $_SESSION[$placa_veiculo];
      $hora_saida = new DateTime('now');

      $tpl->hora_entrada = $hora_entrada->format('H:i:s');
      $tpl->hora_saida = $hora_saida->format('H:i:s');

      $interval = date_diff($hora_entrada, $hora_saida);

      $tpl->tempo_total = $interval->format('%H:%i:%s');

      $horas_estacionadas = intval($interval->format('%H')) + (intval($interval->format('%i')) / 60) + (intval($interval->format('%s')) / 3600);

      $categoria = pesquisa_categoria($veiculo['categoria']);

      $preco_total = $categoria['preco_hora'] * $horas_estacionadas;

      $tpl->preco_total = $preco_total;

      $tpl->block("BLOCK_VEICULO_SAINDO");

      unset ($_SESSION[$placa_veiculo]);      //Tira a placa da session
    }

    $tpl->show();
  }else {
    $tpl = new Template("../view/checkin.html");

    $tpl->placa_veiculo = $placa_veiculo;

    $tpl->show();
  }
}
?>
