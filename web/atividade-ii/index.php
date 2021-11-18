<?php
require_once("lib/Template.php");
use raelgc\view\Template;

$tpl = new Template("view/index.html");

if(isset($_GET['error'])) {
  if ($_GET['error']=='mysqlerror') {
    $tpl->mensagem = "MYSQL ERROR: Falha ao inserir informações no banco de dados.";
    $tpl->block("BLOCK_ERRO_MYSQL");
  }

  if ($_GET['error']=='fileerror') {
    $tpl->mensagem = "Falha ao extrair informações do arquivo de texto.";
    $tpl->block("BLOCK_ERRO_FILE");
  }
}

$tpl->show();

?>
