<?php
include_once("../dao/vehicleDao.php");

$placa_veiculo = $_POST['placa_veiculo'];
$marca_veiculo = $_POST['marca_veiculo'];
$modelo_veiculo = $_POST['modelo_veiculo'];
$cor_veiculo = $_POST['cor_veiculo'];
$categoria_veiculo = $_POST['categoria_veiculo'];

$resultado = insere_veiculo($placa_veiculo, $marca_veiculo, $modelo_veiculo, $cor_veiculo, $categoria_veiculo);

if ($resultado) {
  header("location:vehicle_search.php?car_plate={$placa_veiculo}");
}

?>
