<div class="col relative no-select">
    <div class="display-container slide-marcas-nomes padding-16">
        {foreach item=s key=i from=$marcas}
            <img class="col s12 m3 slide-marcas-nomes-img s-padding-left-64 s-padding-right-64 padding-xlarge no-select" src="{$s.imagem}">
        {/foreach}
        <div class="center nav-marcas-nome container section large text-white display-topmiddle col">
            {foreach item=s key=i from=$marcas}
                <span class="badge border no-select demo-slide-marcas-nome" onclick="plusMarcaNome({$i+1})"></span>
            {/foreach}
        </div>
    </div>
</div>