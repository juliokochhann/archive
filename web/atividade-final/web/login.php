<?php
include_once("../dao/loginDao.php");

$login = $_POST['userName'];
$senha = $_POST['userPassword'];

$loginValido = verificaLogin($login, $senha);

//Caso consiga logar cria a sessão
if ($loginValido) {
	// session_start inicia a sessão
	session_start();

	$_SESSION['login'] = $login;
	$_SESSION['senha'] = $senha;

	//Redireciona para a pagina home
	header('location:home.php');
}else {
	header('location:../index.php?error=loginerror');		//Caso contrario redireciona para a pagina de autenticacao
}
?>
