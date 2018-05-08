{foreach item=e key=i from=$lojas}
    <article class="col s12 m6 padding-small">
        <div class="col">
            <div class="col hide-small" style="width: 105px">
                <img src="{$homedev}assets/img/icon/endereco.svg">
            </div>
            <div class="rest s-padding-left-16 s-padding-right-16">
                <header class="col">
                    <h1 class="padding-0 font-xlarge s-font-large">{$e.endereco.cep.cidade.estado.estado}</h1>
                </header>
                <p class="col margin-0 color-text-grey font-small padding-8">
                    {$e.endereco.logradouro} {$e.endereco.numero}, {$e.endereco.bairro}
                    <br> {$e.endereco.cep.cep} {$e.endereco.cep.cidade.cidade}
                    , {$e.endereco.cep.cidade.estado.estado}
                </p>
            </div>
        </div>

        {*<div class="col">
            {$e.map}
        </div>*}

        <div class="col container padding-16 color-text-grey"
             style="border:solid 2px #EEEEEE; border-radius: 15px 0 15px 0">
            <div class="col s12 m5 border-right align-center padding-small">
                <img src="{$homedev}assets/img/icon/telefone.svg" class="padding-right">
                <span class="padding-tiny">
                    {$e.telefone}
                </span>
            </div>
            <div class="col s12 m7 align-center padding-small">
                <img src="{$homedev}assets/img/icon/email.svg" class="padding-right">
                <span class="padding-tiny">
                    {$e.email}
                </span>
            </div>
        </div>
    </article>
{/foreach}