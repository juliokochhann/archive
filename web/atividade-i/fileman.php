<?php

$arquivo_in = fopen('./in/entrada.txt', 'r');

$cont_alunos = 0;

$cont_profs = 0;

$lista_profs = array();

while (($buffer = fgets($arquivo_in)) != false) {
	$partes = explode(';', $buffer);

	if (intval($partes[0]) == 1) {
		$cont_alunos++;
	}else if (intval($partes[0]) == 2) {
		$cont_profs++;
		$lista_profs[trim($partes[2])] = $partes[1];
	}
}

fclose($arquivo_in);

$arquivo_out = fopen('./out/saida.txt', 'w+');

fwrite($arquivo_out, "Quantidade de alunos: $cont_alunos\r\n");

fwrite($arquivo_out, "Quantidade de professores: $cont_profs\r\n");

fwrite($arquivo_out, "\r\nLista de Professores e Cadeiras ministradas:\r\n\r\n");

foreach ($lista_profs as $key => $value) {
	fwrite($arquivo_out, "Professor: $key \t Cadeira: $value\r\n");
}

fclose($arquivo_out);

?>
