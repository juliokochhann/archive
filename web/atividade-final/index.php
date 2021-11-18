<?php
require_once("lib/Template.php");
use raelgc\view\Template;

$tpl = new Template("view/index.html");

if(isset($_GET['error'])) {

  if ($_GET['error']=='loginerror') {
    $tpl->mensagem = "Dados Incorretos!";
    $tpl->block("BLOCK_MENSAGEM_ERRO");

  }
  if ($_GET['error']=='sessionerror') {
    $tpl->mensagem = "Usuário não logado!";
    $tpl->block("BLOCK_MENSAGEM_ERRO");
  }

} else {
  $tpl->block("BLOCK_VAZIO");
}

$tpl->show();

?>
