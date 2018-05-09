<div class="col slide_marcas">
    <section class="container-900 padding-12">
        <div class="col s12 m6 s-padding-right-32 s-padding-left-32">
            <div class="display-container overflow-hidden slide-marcas">
                <div class="center display-bottomright slide-marcas-nav">
                    <div class="display-bottomright s-display-bottommiddle s-margin-0 font-light upper font-small" style="margin-right: 8%;">
                        <div class="left padding-medium padding-12 no-select pointer" onclick="plusSlideMarca(-1)">
                            volta
                        </div>
                        <div class="right padding-medium padding-12 no-select pointer" onclick="plusSlideMarca(1)">
                            próxima
                        </div>
                    </div>
                </div>
                {foreach item=s key=i from=$slide}
                    <img class="mySlidesMarca no-select relative" src="{$home}image/{$s.imagem}&h=750">
                {/foreach}
            </div>
        </div>
        <div class="col s12 m6 s-align-center s-font-small s-padding-large">
            <h2 class="font-large margin-0 margin-bottom s-font-small padding-0 s-padding-12">
                Um ambiente inspirador que transmite todo o valor das marcas que representamos
            </h2>
            <div class="padding-64 col hide-small"></div>
            <div class="color-text-white margin-0">
                <img src="{$homedev}assets/img/logo-white.png">
                <p class="col padding-24 font-light">
                    Atualmente representamos as marcas {$listMarcas} em confecção e calçados no Rio Grande do Sul e Paraná
                </p>
            </div>
        </div>
    </section>
</div>