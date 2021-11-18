<?php
include("../lib/connection.php");

function procura_veiculo($placa) {
  $conexao = realizaConexao();

  $sql = "SELECT * FROM veiculo WHERE placa='".$placa."'";

  $resultado = mysqli_query($conexao, $sql);

  $veiculo = mysqli_fetch_array($resultado);

  if (count($veiculo) > 0) {
    return $veiculo;
  }else {
    return false;
  }
}

function insere_veiculo($placa_veiculo, $marca_veiculo, $modelo_veiculo, $cor_veiculo, $categoria) {
    $conexao = realizaConexao();

    $sql = "INSERT INTO veiculo (placa, marca, modelo, cor, categoria) VALUES ('".$placa_veiculo."', '".$marca_veiculo."', '".$modelo_veiculo."', '".$cor_veiculo."', '".$categoria."')";

    $resultado = mysqli_query($conexao, $sql);

    $veiculo = procura_veiculo($placa_veiculo);

    if (count($veiculo) > 0) {
      return true;
    }else {
      return false;
    }
}

function pesquisa_categoria($categoria) {
    $conexao = realizaConexao();

    $sql = "SELECT * FROM precos WHERE categoria_veiculo='".$categoria."'";

    $resultado = mysqli_query($conexao, $sql);

    $categoria = mysqli_fetch_array($resultado);

    if (count($categoria) > 0) {
      return $categoria;
    }else {
      return false;
    }
}

?>
