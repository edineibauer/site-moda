<div style="position:relative;top:0;left:0;width:100%;height:60px;overflow:hidden;">
    <div id="jssor_2" style="position:relative;margin:0 auto;top:0px;left:0px;width:1200px;height:60px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="{$homedev}assets/img/double-tail-spin.svg" />
        </div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1200px;height:60px;overflow:hidden;">
            {foreach item=s key=i from=$marcas}
                <div data-p="32.50">
                    <img data-u="image" src="{$s.imagem}"/>
                </div>
            {/foreach}
        </div>
        <div data-interaction="user-commands" class="cmd-box" style="display:none;top:2px;left:auto;bottom:auto;right:2px;width:23px;height:69px;box-sizing:border-box;" data-scale=".2" data-scale-top=".5" data-scale-right=".5">
            <div data-command="jssor-getslider" class="cmd-btn" title="get this slider"></div>
            <div data-command="jssor-qrcode" class="cmd-btn" title="QR code"></div>
            <div data-command="jssor-share" class="cmd-btn" title="share"></div>
        </div>
    </div>
</div>