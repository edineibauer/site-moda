<div class="col">
    {foreach item=img key=i from=$images}
        <div class="col gallery_horizontal_img padding-small{($i == 4) ? " hide-small" : ""}">
            <img src="{$home}image/{$img}&h=220" id="gallery_horizontal_img_{$i}" style="width:100%;height: 180px">
        </div>
    {/foreach}
</div>