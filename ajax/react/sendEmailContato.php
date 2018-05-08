<?php

$d = new \EntityForm\Dicionario('pais');
$d->setData(['pais' => "teste"]);
$d->save();

$email = new \EmailControl\Email();
$email->setAssunto("Contato no Site " . SITENAME . " | " . $dados['nome']);
$email->setDestinatarioEmail("contato@hubdamoda.com.br");
$email->setDestinatarioNome("Hub da Moda");
$email->setMensagem($dados['mensagem']);
$email->setRemetenteEmail($dados['email']);
$email->setRemetenteNome($dados['nome']);
$email->enviar();