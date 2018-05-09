<div id="jssor_1"
     style="position:relative;margin:0 auto;top:0px;left:0px;width:800px;height:380px;overflow:hidden;visibility:hidden;">

    <!-- Loading Screen -->
    <div data-u="loading" class="jssorl-004-double-tail-spin"
         style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
        <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;"
             src="{$homedev}assets/img/double-tail-spin.svg"/>
    </div>

    <div data-u="slides"
         style="cursor:default;position:relative;top:0px;left:0px;width:800px;height:380px;overflow:hidden;">
        {foreach item=s key=i from=$slide}
            <div data-p="147.50">
                <img data-u="image" src="{$s.imagem}"/>
                <div class="mySlidesTitulo center display-middle color-text-white" style="width: 60%">
                    {if !empty($s.descricao)}
                        <h2 class="upper slide-desc">{$s.descricao}</h2>
                    {/if}
                    {if !empty($s.logo) || !empty($s.titulo)}
                        <br>
                        <header class="relative">
                        <span class="left">
                            <h1 class="font-xxxlarge upper font-light left padding-0">
                                {if !empty($s.logo)}
                                    <img src="{$s.logo}" class="left slide-img-logo" style="height: 30px">
                                {elseif !empty($s.titulo)}
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
                    {/if}
                </div>
            </div>
        {/foreach}
    </div>

    <!-- Bullet Navigator -->
    <div data-u="navigator" class="jssorb031" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1"
         data-scale="0.5" data-scale-bottom="0.75">
        <div data-u="prototype" class="i" style="width:16px;height:16px;">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <circle class="b" cx="8000" cy="8000" r="5800"></circle>
            </svg>
        </div>
    </div>

    <!-- Arrow Navigator -->
    <div data-u="arrowleft" class="jssora051" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2"
         data-scale="0.75" data-scale-left="0.75">
        <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
            <polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
        </svg>
    </div>
    <div data-u="arrowright" class="jssora051" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2"
         data-scale="0.75" data-scale-right="0.75">
        <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
            <polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
        </svg>
    </div>
</div>