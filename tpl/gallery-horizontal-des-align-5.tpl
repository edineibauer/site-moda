<div class="col">
    {foreach item=img key=i from=$images}
        <div class="col gallery_horizontal_img gallery_horizontal_img_not_align padding-small{($i == 4) ? " hide-small" : ""}">
            <img src="{$home}image/{$dev}assets/img/showroom/{$img}.png&h=300" id="gallery_horizontal_img_{$i}" style="width:100%;height: 250px">
        </div>
    {/foreach}
</div>