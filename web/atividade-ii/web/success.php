<?php
require_once("../lib/Template.php");
use raelgc\view\Template;

$tpl = new Template("../view/success.html");

$tpl->cont_profs = $_GET['cont_profs'];
$tpl->cont_alunos = $_GET['cont_alunos'];
$tpl->block("BLOCK_SUCESSO");

$tpl->show();

?>
