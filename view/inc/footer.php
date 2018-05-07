<?php
foreach ($lojas as $loja)
    $data['endereco'][] = $loja['endereco'];

$data['homedev'] = HOMEDEV;

$tpl = new \Helpers\Template("site-moda");
$tpl->show("footer", $data);