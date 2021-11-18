<?php

//ERROS NO UPLOAD DE ARQUIVOS

// $phpFileUploadErrors = array(
//     0 => 'There is no error, the file uploaded with success',
//     1 => 'The uploaded file exceeds the upload_max_filesize directive in php.ini',
//     2 => 'The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form',
//     3 => 'The uploaded file was only partially uploaded',
//     4 => 'No file was uploaded',
//     6 => 'Missing a temporary folder',
//     7 => 'Failed to write file to disk.',
//     8 => 'A PHP extension stopped the file upload.',
// );

// print_r($_FILES);

echo "<b>Nome do arquivo na máquina cliente:</b> <i>".$_FILES['arquivoDoUsuario']['name']."</i>";
// echo $_FILES['arquivoDoUsuario']['name'];

echo "<br><br>";

echo "<b>Tipo do Arquivo:</b> <i>".$_FILES['arquivoDoUsuario']['type']."</i>";
// echo $_FILES['arquivoDoUsuario']['type'];

echo "<br><br>";

echo "<b>Nome temporário do Arquivo armazenado no servidor:</b> <i>".$_FILES['arquivoDoUsuario']['tmp_name']."</i>";
// echo $_FILES['arquivoDoUsuario']['tmp_name'];

echo "<br><br>";

echo "<b>Erro:</b> <i>".$_FILES['arquivoDoUsuario']['error']."</i>";
// echo $_FILES['arquivoDoUsuario']['error'];

echo "<br><br>";

echo "<b>Tamanho do arquivo:</b> <i>".$_FILES['arquivoDoUsuario']['size']."</i>";
// echo $_FILES['arquivoDoUsuario'] ['size'];

echo "<br><br>";

$upload['pasta_destino'] = "teste_upload_php/";

// verifica se é possível mover o arquivo para a pasta escolhida
if (move_uploaded_file($_FILES['arquivoDoUsuario']['tmp_name'], $upload['pasta_destino'].$_FILES['arquivoDoUsuario']['name'])) {

  // Upload efetuado com sucesso, exibe uma mensagem e um link para o arquivo
  echo "Upload efetuado com sucesso!";

} else {

  // Não foi possível fazer o upload, provavelmente a pasta está incorreta
  echo "Não foi possível enviar o arquivo, tente novamente";
}

?>
