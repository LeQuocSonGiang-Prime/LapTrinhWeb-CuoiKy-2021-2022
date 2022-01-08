// NÚT QUAY VỀ ĐẦU TRANG
window.onscroll = function () {
    scrollFunction()
};

function scrollFunction() {

    if (document.body.scrollTop > 600 || document.documentElement.scrollTop > 300) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// CHUYỂN FORM LOGIN - RESGITER
document.getElementById('myBtn').addEventListener("click", function () {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
});
var x = document.getElementById("login");
var y = document.getElementById("register");
var z = document.getElementById("btn-login-modal");

function register() {
    x.style.left = "-400px";
    y.style.left = "50px";
    z.style.left = "110px";
}

function login() {
    x.style.left = "50px";
    y.style.left = "450px";
    z.style.left = "0px";
}

// HEADER SCROLL
window.addEventListener("scroll", function () {
    var header = document.querySelector(".header");
    header.classList.toggle("sticky", window.scrollY > 0);
})

// SLIDER BAR PR
// HIDE AND SHOW FORM LOGIN
var a;

function show() {
    if (a === 1) {
        document.getElementById("modal").style.display = "block";
    } else {
        document.getElementById("modal").style.display = "none"
        return a = 1;
    }
}


function hide() {
    if (a === 1) {
        document.getElementById("modal").style.display = "none";
    } else {
        document.getElementById("modal").style.display = "block"
        return a = 1;
    }
}


// Next/previous controls
let slideIndex = 1


// Next/previous controls
function plusSlides(n) {
    showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {

    let slides = document.getElementsByClassName("mySlides");
    let dots = document.getElementsByClassName("dot");
    if (n > slides.length) {
        slideIndex = 1
    }
    if (n < 1) {
        slideIndex = slides.length
    }
    for (let i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (let i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active";

}

//
// $(document).ready(function () {
//     $(".navbar-btn").click(function () {
//         $(".header__navbar-mobile").show();
//         // $(".navbar-list-mobile").removeClass("hidden");
//         // $(".header__navbar-mobile").addClass("hidden");
//     });
//     $(".ti-close").click(function () {
//         $(".header__navbar-mobile").hide();
//     });
//
//     //for show, hide navbar
//     $("#header-repon").click(function (){
//         $(".header__navbar-mobile").hide();
//         // $(".header__navbar-mobile").addClass("hidden");
//         // $(".navbar-list-mobile").addClass("hidden");
//     });
// });

// // Hide Menu on on scroll down
// var didScroll;
// var lastScrollTop = 0;
// var delta = 5;
// var navbarHeight = $('.menu').outerHeight();

// $(window).scroll(function(event){
//     didScroll = true;
// });

// setInterval(function() {
//     if (didScroll) {
//         hasScrolled();
//         didScroll = false;
//     }
// }
// let sidebar = document.querySelector(".side-bar");
// let sidebarBtn = document.querySelector(".side-btn");

// sidebarBtn.onclick = function(){
//      sidebar.classList.toggle("active");
// } 

// function hasScrolled() {
//     var st = $(this).scrollTop();

//     // Make sure they scroll more than delta
//     if(Math.abs(lastScrollTop - st) <= delta)
//         return;

//     // If they scrolled down and are past the navbar, add class .nav-up.
//     // This is necessary so you never see what is "behind" the navbar.
//     if (st > lastScrollTop && st > navbarHeight){
//         // Scroll Down
//         $('.menu').removeClass('nav-down').addClass('nav-up');
//     } else {
//         // Scroll Up
//         if(st + $(window).height() < $(document).height()) {
//             $('.menu').removeClass('nav-up').addClass('nav-down');
//         }
//     }

//     lastScrollTop = st;
// }

//handling event for search-txt, slider ad
// $(document).ready(function () {
//     $(".search-txt").on({
//         focus: function () {
//             $(".search-txt").css({"width": "300px"})
//             $(".search-btn").css({"cursor": "pointer", "background": "#ff5252"})
//         },
//         blur: function () {
//             $(".search-txt").css("width", "0")
//             $(".search-btn").css({"background": "var(--primary-color)"})
//         }
//     })
// })

