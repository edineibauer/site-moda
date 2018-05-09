<div class="col">
    <div class="display-container overflow-hidden showroom-nav">
        <div class="center display-bottomleft color-text-white" style="z-index: 1; width: 100%;">
            <div class="font-light upper font-small">
                <div class="left padding-medium padding-12 no-select pointer" onclick="plusSlideShowroom(-1)">
                    volta
                </div>
                <div class="right padding-medium padding-12 no-select pointer" onclick="plusSlideShowroom(1)"
                     style="margin-right: 15%;">
                    próxima
                </div>
            </div>
        </div>
        {foreach item=s key=i from=$slide}
            <div class="col s6 padding-small mySlidesShowroom">
                <img class="no-select relative" src="{$home}image/{$s.imagem}&h=450">
            </div>
        {/foreach}
    </div>
</div>