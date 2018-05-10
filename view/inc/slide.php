<?php
$read->exeRead("slide", "ORDER BY id DESC LIMIT 100");
if ($read->getResult()) {
    $data['slide'] = $read->getResult();
    foreach ($data['slide'] as $i => $slide) {
        if (!empty($slide['imagem']))
            $data['slide'][$i]['imagem'] = \Helpers\Helper::convertImageJson($slide['imagem']);
        if (!empty($slide['logo']))
            $data['slide'][$i]['logo'] = \Helpers\Helper::convertImageJson($slide['logo']);
    }
    $data['homedev'] = HOMEDEV;
    $tpl->show("slide", $data);
}
