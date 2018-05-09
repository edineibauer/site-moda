<?php

$email = new \EmailControl\EmailSparkPost();
$email->setRemetenteEmail($dados['email']);
$email->setRemetenteNome($dados['nome']);
$email->setDestinatarioNome("Hub da Moda");
$email->setDestinatarioEmail("contato@hubdamoda.com.br");
$email->setAssunto("Contato no Site " . SITENAME . " | " . $dados['nome']);
$email->setMensagem($dados['mensagem']);
$email->enviar();