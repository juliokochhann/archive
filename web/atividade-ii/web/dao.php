<?php
function buscaNoBancoDeDados($conexao){


  $sql = "select * from aluno";

  $resultado = mysqli_query($conexao, $sql);

  // $alunos = mysqli_fetch_array($resultado);
  // $alunos = mysqli_fetch_assoc($resultado);
  // $alunos = mysqli_fetch_all($resultado);

  echo "O número de alunos registrados é: ".mysqli_num_rows($resultado);
  echo "<br>";
  echo "<br>";

  // echo 'Array $alunos<br>';
  // print_r($alunos);

  while ($alunos = mysqli_fetch_row($resultado)) {
    print_r($alunos);
    echo "<br>";

    // echo "<br>";
    // echo "Nome: ".$alunos['nome_aluno']." - CPF: ".$alunos['cpf_aluno'];
    // echo "<br>";
  }
}

function insere_professor($conexao, $nome, $materia) {

  $sql = "INSERT INTO professor (nome_professor, materia) VALUES ('".$nome."', '".$materia."')";

  $resultado = mysqli_query($conexao, $sql);

  if ($resultado) {
    return mysqli_affected_rows($conexao);
  }else {
    return 0;
  }
}

function insere_aluno($conexao, $matricula, $nome) {

  $sql = "INSERT INTO aluno (matricula, nome_aluno) VALUES ('".$matricula."', '".$nome."')";

  $resultado = mysqli_query($conexao, $sql);

  if ($resultado) {
    return mysqli_affected_rows($conexao);
  }else {
    return 0;
  }
}
?>
