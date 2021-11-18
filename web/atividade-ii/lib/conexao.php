<?php

function realizaConexao() {
  $servidor = "localhost";
  $usuario = "root";
  $senha = "root";
  $bd = "phptest";


  $conexao = mysqli_connect($servidor, $usuario, $senha, $bd);

  if (mysqli_connect_errno($conexao)) {
    echo "Problemas na conexao, verifique suas credenciais";
    echo "<br><br>";
  } else {
    echo "Conexão bem sucedida!";
    echo "<br><br>";
    return $conexao;
  }
}

?>
