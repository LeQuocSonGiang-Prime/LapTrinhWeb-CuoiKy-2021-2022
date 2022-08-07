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


function showModal() {
    document.getElementById("modal").style.display = "block";
    console.log("on")
}

function hideModal() {
    document.getElementById("modal").style.display = "none";
    console.log("off")
}

document.querySelector(".form-box").addEventListener("click", function (event) {
    event.stopPropagation()
})


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

// SIGN IN
document.querySelector("#btn-login").onclick = function (e) {
    e.preventDefault();

    let data = $("#login").serialize()
    let msg = null
    console.log(data)

    $.ajax({
        url: "dang-nhap",
        type: "POST",
        data: data,
        dataType: "JSON",
        success(data) {
            msg = data.msg;

            if (msg === "1") {
                console.log(data.name)
                document.querySelector("#modal").style.display = "none"
                document.querySelector("#header__info-item-a").style.display = "none"
                // document.querySelector("#header__info-login").style.display = "none"
                document.querySelector(".header__info").innerHTML = ""
                let avatarUser = document.createElement("img")
                avatarUser.src = data.avatar
                console.log(data.avatar)
                document.querySelector(".header__info").appendChild(avatarUser)
                avatarUser.style.borderRadius = "50%"
                avatarUser.style.height = "20px"
                avatarUser.style.width = "20px"
                avatarUser.style.marginRight = "5px"
                let labelName = document.createElement("div")
                labelName.innerText = data.name
                document.querySelector(".header__info").appendChild(labelName)


            } else {
                document.querySelector("#login").innerHTML =
                    '            <input type="text" class="input-field" placeholder="Tài Khoản" name="username" required>\n' +
                    '            <input type="password" class="input-field" placeholder="Mật Khẩu" name="password" required>\n' +
                    '            <div><input type="checkbox" class="check-box"><span class="checkbox-remember">Nhớ mật khẩu</span></div>\n' +
                    '            <p>Mật khẩu không đúng, vui lòng nhập lại</p>' +
                    '            <button  class="submit-btn" id="btn-login">Đăng Nhập</button>'

            }
        }
    })
}

//SIGN UP
document.querySelector("#btn-signup").onclick = function (e) {
    e.preventDefault();
    let data = $("#register").serialize();
    console.log(data)
    let arrayInfo = data.split('&')
    let username = arrayInfo[0]
    let email = document.querySelector("#register-email").value
    console.log(email)
    let fullname = arrayInfo[2]
    let password = arrayInfo[3]
    let repassword = arrayInfo[4]
    let inputChecked = document.querySelector("input#checkingregister")
    console.log(inputChecked)
    let msg = null;
    $.ajax({
        url: "dang-ky",
        type: "POST",
        data: data,
        dataType: "JSON",
        success(data) {
            msg = data.msg;
            if (msg === "1") {
                document.querySelector("#register").innerHTML =
                    '            <input type="text" class="input-field" placeholder="Tài Khoản" name="username" required>\n' +
                    '            <input type="email" class="input-field" placeholder="email" name="email" required>\n' +
                    '            <input type="text" class="input-field" placeholder="họ tên" name="fullname" required>' +
                    '            <input type="password" class="input-field" placeholder="Mật Khẩu" name="password" required>\n' +
                    '            <input type="password" class="input-field" placeholder="Nhập Lại Mật Khẩu" required>\n' +
                    '            <div>\n' +
                    '                <input type="checkbox" class="check-box">\n' +
                    '                <span class="checkbox-remember">Tôi đồng ý với các Điều khoản & Điều kiện</span>\n' +
                    '            </div>' +
                    '            <p>Email đã được sử dụng, vui lòng nhập lại</p>' +
                    '            <button type="submit" class="submit-btn" id="btn-signup">Đăng Kí</button>'
            } else {
                //day la noi ong su ly JS cua phan hide, show cua phan nay
            }
        }
    })
}


function Validator(options) {
    var formelement = document.querySelector(options.form);

    if (formelement) {
        options.rules.forEach(function (rule) {
            var inputElement = formelement.querySelector(rule.selector)
            if (inputElement) {
                inputElement.onBlur = function () {
                    var messError = rule.test(inputElement.value);
                    var inputError = inputElement.parentElement.querySelector("")
                    if (messError) {

                    }
                }
            }
        })
    }
}

Validator.isRequired = function (selector) {
    return {
        selector: selector,
        test: function (value) {
            return value.trim() ? undefined : "Vui lòng nhập trường này"
        }
    };
}

Validator.isEmail = function (selector) {
    return {
        selector: selector,
        test: function () {

        }
    };
}


// file index.jsp

function typeOfHouse(){
    let btnKindHouse = document.querySelectorAll(".intro-btn")
    let input_kindOfHouse = document.querySelector("#kind-of-house")
    for (let i = 0; i < 4; i++) {
        btnKindHouse[i].onclick = function (e) {
            input_kindOfHouse.value = (i + 1)
            document.querySelector("#form-kind-of-house").submit()
        }
    }
}