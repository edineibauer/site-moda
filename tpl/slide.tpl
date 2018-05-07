<div class="col relative no-select">
    <div class="display-container overflow-hidden slide">
        <div class="center display-middle font-jumbo color-text-white slide-nav relative">
            <div class="left no-select" onclick="plusDivs(-1)">
                <img src="{$home}assets/img/arrow-left.png" class="no-select">
            </div>
            <div class="right no-select" onclick="plusDivs(1)">
                <img src="{$home}assets/img/arrow-left.png" class="no-select">
            </div>
        </div>
        {foreach item=s key=i from=$slide}
            <div class="display-topleft slide-social padding-64">
                {if isset($s.social) && !empty($s.social)}
                    {foreach item=so key=e from=$s.social}
                        <a href="{$so.link}" target="_blank" class="left padding-8">
                            <img src="{$so.icone}" class="background" style="width: 25px; height: 25px" title="{$so.titulo} - {$sitename}">
                        </a>
                    {/foreach}
                {/if}
            </div>
            <img class="mySlides no-select" src="{$s.imagem}">
            <div class="mySlidesTitulo center display-middle color-text-white" style="width: 60%">
                <h2 class="font-large upper font-bold">{$s.descricao}</h2>
                <br>
                <header class="relative">
                    <span class="left" style="padding: 45px 40px">
                        <h1 class="font-xxxlarge upper font-light left">
                            {if !empty($s.logo)}
                                <img src="{$s.logo}">
                            {else}
                                {$s.titulo}
                            {/if}
                        </h1>
                    </span>
                    <span class="left"
                          style="position:absolute;left:-45px; top:35px; padding:10px 10px">
                        <h1 class="font-xxxlarge upper font-light left" style="opacity: 0; padding:0 135px;">
                            {$s.titulo}
                        </h1>
                    </span>
                </header>
            </div>
        {/foreach}
        <div class="center container section large text-white display-bottommiddle">
            {foreach item=s key=i from=$slide}
                <span class="badge border no-select demo" onclick="currentDiv({$i+1})"></span>
            {/foreach}
        </div>
    </div>
</div>