<?php

function realizaConexao() {

	$bdServidor = 'localhost';
	$bdUsuario = 'root';
	$bdSenha = 'root';
	$bdBanco = 'estacionamento';

	$conexao = mysqli_connect($bdServidor, $bdUsuario, $bdSenha, $bdBanco);

	if (mysqli_connect_errno($conexao)) {
		echo "Problemas para conectar no banco. Verifique os dados!";
    echo "<br>";
    echo "Error code:". mysqli_connect_errno($conexao);
		die();
	} else {
		return $conexao;
	}
}

?>
