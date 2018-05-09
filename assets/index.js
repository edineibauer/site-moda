function mensagemEnviada() {
    toast("Mensagem Enviada");
    setTimeout(function () {
        $("#form_contato").find("input, textarea").val("");
    },500);
}

let slideIndexMarca = 1;
let slideIndexShowroom = 0;
showSlideMarca(slideIndexMarca);
plusSlideShowroom(slideIndexShowroom);

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
    jssor_2_slider_init();
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


jssor_2_slider_init = function() {

    var jssor_2_options = {
        $AutoPlay: 1,
        $SlideDuration: 160,
        $SlideEasing: $Jease$.$InOutQuad,
        $SlideWidth: 200,
        $SlideSpacing: 100
    };

    var jssor_2_slider = new $JssorSlider$("jssor_2", jssor_2_options);

    //make sure to clear margin of the slider container element
    jssor_2_slider.$Elmt.style.margin = "";

    const MAX_WIDTH = 990;
    const MAX_HEIGHT = 60;
    const MAX_BLEEDING = 0;

    function ScaleSlider() {
        var containerElement = jssor_2_slider.$Elmt.parentNode;
        var containerWidth = containerElement.clientWidth;

        if (containerWidth) {
            var originalHeight = jssor_2_slider.$OriginalHeight();
            var containerHeight = containerElement.clientHeight || originalHeight;

            var expectedHeight = Math.min(MAX_HEIGHT || containerHeight, containerHeight);

            //scale the slider to expected size
            jssor_2_slider.$ScaleSize(MAX_WIDTH, expectedHeight, MAX_BLEEDING);

            //position slider at center in vertical orientation
            jssor_2_slider.$Elmt.style.top = ((containerHeight - expectedHeight) / 2) + "px";

            //position slider at center in horizontal orientation
            jssor_2_slider.$Elmt.style.left = ((containerWidth - MAX_WIDTH) / 2) + "px";
        }
        else {
            window.setTimeout(ScaleSlider, 30);
        }
    }

    /*ios disable scrolling and bounce effect*/
    $Jssor$.$AddEvent(document, "touchmove", function(event){event.touches.length < 2 && $Jssor$.$CancelEvent(event);});

    ScaleSlider();

    $Jssor$.$AddEvent(window, "load", ScaleSlider);
    $Jssor$.$AddEvent(window, "resize", ScaleSlider);
    $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
    /*#endregion responsive code end*/
};