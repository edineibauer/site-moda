let slideIndex = 1;
let slideIndexMarca = 1;
let slideIndexShowroom = 0;
const carTime = 6000;
showDivs(slideIndex);
showSlideMarca(slideIndexMarca);
plusSlideShowroom(slideIndexShowroom);
let car = setTimeout(plusDivs, carTime);

function plusDivs(n) {
    n = typeof n === "undefined" ? 1 : n;
    showDivs(slideIndex += n);
    clearTimeout(car);
    car = setTimeout(plusDivs, carTime);
}

function currentDiv(n) {
    showDivs(slideIndex = n);
}

function showDivs(n) {
    let i;
    let x = document.getElementsByClassName("mySlides");
    let xx = document.getElementsByClassName("mySlidesTitulo");
    let xxx = document.getElementsByClassName("slide-social");
    let dots = document.getElementsByClassName("demo");
    if (n > x.length) {
        slideIndex = 1
    }
    if (n < 1) {
        slideIndex = x.length
    }
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
        xx[i].style.display = "none";
        xxx[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" color-white", "");
    }
    x[slideIndex - 1].style.display = "block";
    xx[slideIndex - 1].style.display = "block";
    xxx[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " color-white";
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
});