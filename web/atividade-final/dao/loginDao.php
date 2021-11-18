<?php
include("../lib/connection.php");

function verificaLogin($login, $senha){

  $conexao = realizaConexao();

  $sql = "SELECT count(*) FROM login WHERE emailLogin='".$login."' and senhaLogin = '".$senha."'";

  $resultado = mysqli_query($conexao, $sql);

  $linha = mysqli_fetch_array($resultado);

  if($linha[0] > 0){
    mysqli_close($conexao);
    return TRUE;
  } else {
    mysqli_close($conexao);
    return FALSE;
  }
}
 ?>
