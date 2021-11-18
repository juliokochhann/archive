<?php
include("../lib/conexao.php");
include("dao.php");

$conexao = realizaConexao();

$file = $_FILES['records_file']['name'];

if (move_uploaded_file($_FILES['records_file']['tmp_name'], $file)) {
    transfere_dados($conexao, $file);
} else {
    header('location:../index.php?error=fileerror');    //Em caso de erro redireciona para a pagina inicial
}

function transfere_dados($conexao, $file) {
    $arquivo_in = fopen($file, 'r');

    $lista_profs = array();

    $lista_alunos = array();

    while (($buffer = fgets($arquivo_in)) != false) {
      $partes = explode(';', $buffer);

      if (intval($partes[0]) == 1) {
        $lista_alunos[intval($partes[1])] = $partes[2];
      }else if (intval($partes[0]) == 2) {
        $lista_profs[$partes[2]] = $partes[1];
      }
    }

    fclose($arquivo_in);

    $cont_profs = 0;

    $cont_alunos = 0;

    foreach ($lista_profs as $nome => $materia) {
      if (insere_professor($conexao, $nome, $materia) == 0) {
        header("location:../index.php?error=mysqlerror");    //Em caso de erro redireciona para a pagina inicial
        die();
      }else {
        $cont_profs++;
      }
    }

    foreach ($lista_alunos as $matricula => $nome) {
      if (insere_aluno($conexao, $matricula, $nome) == 0) {
        header("location:../index.php?error=mysqlerror");
        die();
      }else {
        $cont_alunos++;
      }
    }

    finaliza_conexao($conexao, $cont_profs, $cont_alunos);
}

function finaliza_conexao($conexao, $cont_profs, $cont_alunos) {
	  header("location:success.php?cont_profs={$cont_profs}&cont_alunos={$cont_alunos}");    //Redireciona para a pagina success

    mysqli_close($conexao);
}

?>
