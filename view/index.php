<?php

use Ivory\GoogleMap\Base\Coordinate;
use Ivory\GoogleMap\Overlay\Marker;
use Ivory\GoogleMap\Helper\Builder\ApiHelperBuilder;
use Ivory\GoogleMap\Helper\Builder\MapHelperBuilder;
use Ivory\GoogleMap\Map;

define('HOMEDEV', DEV && DOMINIO === 'site-moda' ? HOME : HOME . "vendor/conn/site-moda/");
$tpl = new \Helpers\Template("site-moda");
$read = new \ConnCrud\Read();

require_once 'inc/header.php';
require_once 'inc/slide.php';
?>

    <div class="col color-white padding-64 s-padding-4">
        <section class="container-900 padding-12">
            <div class="col left padding-12 subtitle-index hide-small">
                <img src="<?= FAVICON ?>" class="container">
            </div>
            <div class="rest s-padding-large">
                <h2 class="font-medium s-font-small upper color-text-grey margin-0 padding-8">showroom completo com as
                    marcas mais
                    desejadas</h2>
                <p class="font-xxlarge s-font-medium upper color-text-grey-dark margin-0 font-bold">
                    onde acontecem os maiores negócios de moda no rio grande do sul e paraná
                </p>
            </div>
        </section>
    </div>

    <div class="col padding-8">
        <?php
        $read->exeRead("slide_marcas", "ORDER BY id LIMIT 5");
        if ($read->getResult()) {
            $data['slide'] = $read->getResult();
            foreach ($data['slide'] as $i => $slide) {
                if (!empty($slide['imagem']))
                    $data['slide'][$i]['imagem'] = json_decode($slide['imagem'], true)[0]['url'];
            }
            $data["homedev"] = HOMEDEV;

            $data['listMarcas'] = "";
            $read->exeRead("marcas", "ORDER BY id DESC LIMIT 16");
            if ($read->getResult()) {
                foreach ($read->getResult() as $i => $m) {
                    if ($i < 15)
                        $data['listMarcas'] .= (!empty($data['listMarcas']) ? ($i === $read->getRowCount() - 1 ? " E " : ", ") : "") . "<b class='upper'>{$m['titulo']}</b>";
                }

                if ($read->getRowCount() === 16)
                    $data['listMarcas'] .= " entre outras ";
            }

            $tpl->show("half_slide_text", $data);
        }
        ?>
    </div>

    <div class="col color-white padding-48 s-padding-32">
        <div class="col padding-64 hide-small"></div>
        <div class="col container-900 s-padding-left-32 s-padding-right-32">
            <section class="padding-24 s-padding-0 align-center s-align-left">
                <p class="color-text-grey-dark font-small upper" id="empresa" style="letter-spacing: 5.3px">
                    espaço moderno, sofisticado e repleto de lançamentos
                </p>
                <h2 class="font-xxlarge s-font-medium upper color-text-grey-dark margin-0 padding-8">
                    showroom completo com as marcas mais desejadas para você potencializar seus negócios!
                </h2>
            </section>

            <div class="col padding-12 s-padding-0">
                <?php
                $data = [
                    "dev" => DEV && DOMINIO === "site-moda" ? "" : "vendor/conn/site-moda/",
                    "images" => [
                        "bolsa-john-john",
                        "modelo-foto-lanca-perfume",
                        "modelo-lanca-perfume",
                        "modelo-myfavorite",
                        "modelo-lanca-perfume2"
                    ]
                ];
                $tpl->show("gallery-horizontal-des-align-5", $data);
                ?>
            </div>
            <section class="col padding-32">
                <div class="col padding-8"></div>
                <?php
                $read->exeRead("descricao_da_empresa", "ORDER BY id LIMIT 3");
                if($read->getResult()) {
                    foreach ($read->getResult() as $item) {
                        $item['imagem'] = \Helpers\Helper::convertImageJson($item['imagem']);
                        $tpl->show("descricao_icon", $item);
                    }
                }

                ?>
            </section>
        </div>
    </div>

    <div class="col color-black padding-32" id="marcas">
        <div class="col container-900">
            <?php
            $read->exeRead("marcas", "ORDER BY id LIMIT 8");
            if ($read->getResult()) {
                $data["homedev"] = HOMEDEV;
                $data['marcas'] = $read->getResult();
                foreach ($data['marcas'] as $i => $marca)
                    $data['marcas'][$i]['imagem'] = \Helpers\Helper::convertImageJson($marca['imagem']);

                $tpl->show("slide-marcas", $data);
            }

            ?>
        </div>
    </div>

    <div class="col showroom">
        <div class="col container-900">
            <section class="col s12 m4">
                <p class="upper color-text-grey-light margin-0" style="letter-spacing: 5.6px">visite</p>
                <h3 class="upper color-text-white padding-0 s-font-large" style="font-size: 30px">Nossos Showrooms</h3>
                <p class="color-text-grey-light padding-16 s-padding-left-32 s-padding-right-32"
                   style="line-height: 24px;">
                    A <?= SITENAME ?> possuí showrooms modernos e sofisticados, com excelênte infraestrutura para
                    expressar os valores das marcas e oferecer a melhor experiência aos visitantes. Estamos localizados
                    em pontos estratégicos nas capitais do Rio Grande do Sul e Paraná.
                </p>

                <!--<div class="col padding-12 hide-small align-center">
                    <button class="btn upper color-border-white border opacity hover-opacity-off hover-shadow"
                            style="margin: auto; float: initial">mais fotos
                    </button>
                </div>-->
            </section>
            <div class="col s12 m8 padding-left">
                <?php
                $read->exeRead("showroom", "ORDER BY id DESC LIMIT 7");
                if ($read->getResult()) {
                    foreach ($read->getResult() as $i => $room) {
                        $showroom['slide'][$i] = $room;
                        $showroom['slide'][$i]['imagem'] = str_replace('\\', '/', json_decode($room['imagem'], true)[0]['url']);
                    }

                    $tpl->show("slide-vertical-two", $showroom);
                }
                ?>
            </div>
        </div>
    </div>

    <div class="col color-white padding-64 s-padding-8">
        <div class="container-900">
            <p class="upper color-text-grey-dark padding-16 align-center" style="letter-spacing: 5.3px">instagram @HUBDAMODA</p>
            <div class="col">
                <?php
                $read->exeRead("instagram", "ORDER BY id LIMIT 5");
                if ($read->getResult()) {
                    foreach ($read->getResult() as $foto) {
                        $instagram['images'][] = str_replace('\\', '/', json_decode($foto['imagem'], true)[0]['url']);
                    }

                    $tpl->show("gallery-horizontal-align-5", $instagram);
                }
                ?>
            </div>
        </div>
        <div class="col s-padding-24 padding-0"></div>
    </div>
    <div class="col">
        <div class="col s12 m6 background-contact">
        </div>
        <div class="col s12 m6 padding-64 s-padding-48 color-grey-light">
            <p class="upper color-text-grey font-small align-center">contato</p>
            <p class="upper color-text-grey-dark font-xlarge s-font-large font-bold align-center margin-0">
                entre em contato
            </p>

            <div class="col padding-left-32 padding-right-32 s-padding-left-16 s-padding-right-16">
                <?php
                $form = new \FormCrud\Form("contato");
                $form->setAutoSave(false);
                $form->setSaveButtonIcon("");
                $form->setSaveButtonText("ENVIAR");
                $form->setSaveButtonClass("btnSaveContato center-block s-margin-top");
                $form->setCallback("mensagemEnviada");
                $form->showForm();
                ?>
            </div>

        </div>
    </div>

    <div class="col color-white padding-64" id="contato">
        <section class="container-1200 padding-32">
            <?php
            $read->exeRead("lojas", "ORDER BY id LIMIT 2");
            if ($read->getResult()) {
                foreach ($read->getResult() as $i => $end)
                    $lojas[$i] = \Entity\Entity::read("lojas", $end['id']);
            }
            /*
                        foreach ($lojas as $i => $loja) {
                            $map = new Map();
                            $map->setCenter(new Coordinate($loja['endereco']['cep']['latitude'], $loja['endereco']['cep']['longitude']));
                            $map->setMapOption('zoom', 18);
                            $map->setMapOption('width', 1500);
                            $map->setMapOption('height', 500);
                            $map->setHtmlAttribute("width", "1500");
                            $map->setStylesheetOption("width", "100%");
                            $map->setStylesheetOption("height", "300px");
                            $map->getOverlayManager()->addMarker(new Marker(new Coordinate($loja['endereco']['cep']['latitude'], $loja['endereco']['cep']['longitude'])));

                            $mapHelper = MapHelperBuilder::create()->build();
                            $apiHelper = ApiHelperBuilder::create()->setKey('AIzaSyDDITs_UW4aZ-bTiS9IUlu3yzk958oW1QU')->build();

                            $lojas[$i]['map'] = $mapHelper->render($map);
                            $lojas[$i]['map'] .= $apiHelper->render([$map]);
                        }*/

            $mapData['lojas'] = $lojas;
            $mapData['homedev'] = HOMEDEV;
            $tpl->show("map-m2", $mapData);
            ?>
        </section>
    </div>
<?php
require_once 'inc/footer.php';