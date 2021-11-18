<?PHP
include_once("verify_session.php");

require_once("../lib/Template.php");
use raelgc\view\Template;

$estaLogado = verificaSessao();

if ($estaLogado) {

  $tpl = new Template("../view/home.html");

  $tpl->show();
}

?>
