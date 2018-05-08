<footer class="col color-black display-container footer">
    <div class="container-1200 padding-48 col">
        <div class="col s12 m3 padding-small margin-bottom">
            <p class="upper font-small font-bold margin-0 margin-bottom">Endereço</p>

            {foreach item=item key=i from=$endereco}
                <p class="font-light font-small opacity">
                    {$item.logradouro} {$item.numero}, {$item.bairro}<br> {$item.cep.cep} {$item.cep.cidade.cidade}, {$item.cep.cidade.estado.estado}
                </p>
            {/foreach}
        </div>
        <div class="col s6 m2 padding-small margin-bottom">
            <ul class="col font-light font-small">
                <li class="upper font-bold padding-small">menu</li>
                <a href="{$home}" class="col padding-small">Home</a>
                <a href="{$home}#empresa" class="col padding-small">Empresa</a>
                <a href="{$home}#marcas" class="col padding-small">Marcas</a>
                <a href="{$home}#contato" class="col padding-small">Contato</a>
            </ul>
        </div>
        <div class="col s6 m2 padding-small margin-bottom">
            <p class="upper font-small font-bold margin-0 margin-bottom">siga-me</p>
            <ul class="col font-light font-small">
                <a href="https://www.facebook.com/hubdamoda/" class="col padding-4 opacity hover-opacity-off">
                    <img src="{$homedev}assets/img/social/facebook.svg" style="padding-right: 5px">
                    facebook
                </a>
                <a href="https://www.instagram.com/hubdamoda/" class="col padding-4 opacity hover-opacity-off">
                    <img src="{$homedev}assets/img/social/instagram.svg" style="padding-right: 5px">
                    instagram
                </a>
            </ul>
        </div>
        <div class="col s12 m5 padding-small margin-bottom">
            <p class="upper font-small font-bold margin-0 margin-bottom">newsletter</p>
            <div class="col padding-small">
                <div class="col" style="max-width: 65%;margin-right: 10px">
                    <input type="email" placeholder="seu melhor email" class="color-text-white">
                </div>
                <div class="rest" style="padding-bottom: 1px;">
                    <button class="btn upper color-black opacity hover-opacity-off border color-border-white">enviar</button>
                </div>
            </div>
        </div>

    </div>
    <div class="col padding-24"></div>
</footer>