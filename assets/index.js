function mensagemEnviada() {
    toast("Mensagem Enviada");
    setTimeout(function () {
        $("#form_contato").find("input, textarea").val("");
    },500);
}

let slideIndexMarca = 1;
let slideIndexMarcaNome = 1;
let slideIndexShowroom = 0;
const carMarcaTime = 3000;
showSlideMarcasNome(slideIndexMarcaNome);
showSlideMarca(slideIndexMarca);
plusSlideShowroom(slideIndexShowroom);
let carm = setTimeout(plusMarcaNome, carMarcaTime);

function plusMarcaNome(n) {
    slideIndexMarcaNome = typeof n === "undefined" ? slideIndexMarcaNome + 1 : n;
    showSlideMarcasNome(slideIndexMarcaNome);
    clearTimeout(carm);
    carm = setTimeout(plusMarcaNome, carMarcaTime);
}

function showSlideMarcasNome(n) {
    let i;
    let x = document.getElementsByClassName("slide-marcas-nomes-img");
    let $dots = $(".demo-slide-marcas-nome");
    if (n > x.length) {
        slideIndexMarcaNome = 1
    }
    if (n < 1) {
        slideIndexMarcaNome = x.length
    }
    for (i = 0; i < x.length; i++)
        x[i].style.display = "none";

    for (i = 0; i < $dots.length; i++)
        $dots.eq(i).removeClass("color-white");

    x[slideIndexMarcaNome - 1].style.display = "block";
    $dots.eq(slideIndexMarcaNome - 1).addClass("color-white");
}

function plusSlideMarca(n) {
    showSlideMarca(slideIndexMarca += n);
}

function showSlideMarca(n) {
    let i;
    let x = document.getElementsByClassName("mySlidesMarca");
    if (n > x.length) {
        slideIndexMarca = 1
    }
    if (n < 1) {
        slideIndexMarca = x.length
    }
    for (i = 0; i < x.length; i++)
        x[i].style.display = "none";

    x[slideIndexMarca - 1].style.display = "block";
}

function plusSlideShowroom(n) {
    showSlideShowroom(slideIndexMarca += n);
}

function showSlideShowroom(n) {
    let i;
    let x = document.getElementsByClassName("mySlidesShowroom");
    if (n > x.length) {
        slideIndexMarca = 1
    }
    if (n < 1) {
        slideIndexMarca = x.length
    }
    for (i = 0; i < x.length; i++)
        x[i].style.display = "none";

    x[slideIndexMarca - 1].style.display = "block";
    x[slideIndexMarca].style.display = "block";
}

function getMap() {
    post('site-moda', 'read/maps', {}, function (g) {

    });
}

$(function () {
    $('a[href^="#"]').on('click', function (event) {
        var target = $(this.getAttribute('href'));
        if (target.length) {
            event.preventDefault();
            $('html, body').stop().animate({
                scrollTop: target.offset().top
            }, 1000);
        }
    });
    jssor_1_slider_init();
});

jssor_1_slider_init = function() {

    var jssor_1_SlideshowTransitions = [
        {$Duration:600,$Delay:40,$Cols:16,$Opacity:2}
    ];

    var jssor_1_options = {
        $AutoPlay: 1,
        $Idle: 5000,
        $SlideshowOptions: {
            $Class: $JssorSlideshowRunner$,
            $Transitions: jssor_1_SlideshowTransitions
        },
        $ArrowNavigatorOptions: {
            $Class: $JssorArrowNavigator$
        },
        $BulletNavigatorOptions: {
            $Class: $JssorBulletNavigator$
        }
    };

    var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

    /*#region responsive code begin*/

    var MAX_WIDTH = 3000;

    function ScaleSlider() {
        var containerElement = jssor_1_slider.$Elmt.parentNode;
        var containerWidth = containerElement.clientWidth;

        if (containerWidth) {

            var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

            jssor_1_slider.$ScaleWidth(expectedWidth);
        }
        else {
            window.setTimeout(ScaleSlider, 30);
        }
    }

    ScaleSlider();

    $Jssor$.$AddEvent(window, "load", ScaleSlider);
    $Jssor$.$AddEvent(window, "resize", ScaleSlider);
    $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
    /*#endregion responsive code end*/
};