<%--
  Created by IntelliJ IDEA.
  User: lequo
  Date: 07/01/2022
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>


<html lang="vn">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bất động sản</title>
    <link rel="icon"
          href="data:image/png;base64,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"
          type="image/x-icon"/>

    <link rel="stylesheet" href="<c:url value='/template/web/css/base.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/web/css/main.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/grid.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/reponsive.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/font/themify-icons/themify-icons.css'/>">

    <!-- FONT ROBOTO -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">

    <!-- AOS ANIMATION -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">


</head>

<body>

<div class="modal" id="modal" onclick="hideModal()">
    <div class="form-box">
        <i id="close" onclick="hideModal()" class="login-colose-btn ti-close"></i>
        <div class="button-box">
            <div id="btn-login-modal"></div>
            <button type="button" class="toggle-btn" onclick="login()">Đăng Nhập</button>
            <button type="button" class="toggle-btn" onclick="register()">Đăng Kí</button>
        </div>
        <div class="social-icons">
            <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ficon%2Ffb.png?alt=media&token=77c279fb-5da5-43f4-9405-ee7f7eebe2cd" alt="">
            <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ficon%2Fgp.png?alt=media&token=eb88d9d0-3f44-4bb0-80e0-5a4e6e42bf94" alt="">
            <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ficon%2Ftw.png?alt=media&token=f3e640ec-9bad-4cd2-a51a-cf2263415680" alt="">
        </div>
        <form id="login" name="form-signin" class="input-group">
            <input type="text" class="input-field" placeholder="Tài Khoản" name="username" required>
            <input type="password" class="input-field" placeholder="Mật Khẩu" name="password" required>
            <div>
                <input type="checkbox" class="check-box">
                <span class="checkbox-remember">Nhớ mật khẩu</span>
            </div>

            <button class="submit-btn" id="btn-login">Đăng Nhập</button>
        </form>
        <form id="register" name="form-signup" class="input-group" action="">
            <div>
                <input type="text" class="input-field" placeholder="Tài Khoản" name="username" id="register-username"
                       required>
            </div>
            <div>
                <input type="email" class="input-field" placeholder="email" name="email" id="register-email" required>
            </div>

            <div>
                <input type="text" class="input-field" placeholder="họ tên" name="fullname" id="register-fullname"
                       required>
            </div>
            <div>
                <input type="password" class="input-field" placeholder="Mật Khẩu" name="password"
                       id="register-password" required></div>
            <div>
                <input type="password" class="input-field" placeholder="Nhập Lại Mật Khẩu" name="repassword"
                       id="register-repassword" required></div>
            <div>
                <input type="checkbox" name="checking" class="check-box" id="checkingregister">
                <span class="checkbox-remember">Tôi đồng ý với các Điều khoản & Điều kiện</span>
            </div>
            <button type="submit" class="submit-btn" id="btn-signup">Đăng Kí</button>
        </form>
    </div>
</div>


<div class="root">
    <!-- NÚT TRỞ LẠI ĐẦU TRANG -->
    <button id="myBtn" title="Lên đầu trang"><i class="ti-arrow-up"></i></button>
    <!-- Hết  -->
    <div class="header">
        <!-- HEADER -->
        <div class="header__info">
            <ul class="header__info-list">
                <li class="header__info-item" id="header__info-login">
                    <button id="header__info-item-a" class="header__info-item-a" style="cursor: pointer"
                            onclick="showModal()">Đăng Nhập
                    </button>
                </li>
            </ul>
            <ul class="header__info-list">
                <li class="header__info-item">
                    <i class="ti-email"></i> info@gmail.com
                </li>
                <li class="header__info-item">
                    <i class="ti-mobile"></i> +84 1819289
                </li>
            </ul>
        </div>

        <nav class="header__navbar">
            <a href="${pageContext.request.contextPath}/trang-chu">
                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ficon%2Flogo.png?alt=media&token=ab14d91d-f063-417b-9e61-528f1b8c4018" alt="" class="navbar__logo-img">
            </a>
            <ul class="navbar-list">
                <li class="navbar-item">
                    <a href="${pageContext.request.contextPath}/trang-chu" class="navbar-item-a">Trang Chủ</a>
                </li>
                <li class="navbar-item">
                    <a href="<c:url value='/danh-muc'/>" class="navbar-item-a">DANH MỤC</a>
                </li>
                <li class="navbar-item">
                    <a href="${pageContext.request.contextPath}/trai-nghiem" class="navbar-item-a">TRẢI NGHIỆM</a>
                </li>
                <li class="navbar-item">
                    <a href="${pageContext.request.contextPath}/dich-vu" class="navbar-item-a">Dịch vụ</a>
                </li>
                <li class="navbar-item">
                    <a href="${pageContext.request.contextPath}/chung-toi" class="navbar-item-a">Chúng tôi</a>
                </li>
                <li class="navbar-item">
                    <a href="${pageContext.request.contextPath}/lien-he" class="navbar-item-a">Liên hệ</a>
                </li>
            </ul>
        </nav>


        <!-- REPONSIVE 1024px -->
        <label for="navbar-checked" class="navbar-btn" id="mobile-menu-btn">
            <i class="ti-view-list"></i>
        </label>
        <a href="${pageContext.request.contextPath}/trang-chu">
            <img src="./img/logo-dark.png" alt="" class="navbar__logo-img2">
        </a>
        <input type="checkbox" id="navbar-checked" hidden>
        <label for="navbar-checked" class="navbar-mobile-over"></label>
        <div class="navbar-list-mobile">
            <label for="navbar-checked" class="fas fa-times icon-close"></label>
            <ul>
                <li class="navbar-item-mobile">
                    <a href="${pageContext.request.contextPath}/trang-chu" class="navbar-item-a-mobile"><i
                            class="fas fa-home"></i> Trang Chủ</a>
                </li>
                <li class="navbar-item-mobile">
                    <a href="${pageContext.request.contextPath}/danh-muc" class="navbar-item-a-mobile"><i
                            class="fas fa-laptop-house"></i> Danh Mục
                        <span>739</span></a>
                </li>
                <li class="navbar-item-mobile">
                    <a href="${pageContext.request.contextPath}/trai-nghiem" class="navbar-item-a-mobile"><i
                            class="fas fa-running"></i> Trải
                        Nghiệm<span>127</span></a>
                </li>
                <li class="navbar-item-mobile">
                    <a href="${pageContext.request.contextPath}/dich-vu" class="navbar-item-a-mobile"><i
                            class="far fa-handshake"></i>Dịch vụ</a>
                </li>
                <li class="navbar-item-mobile">
                    <a href="${pageContext.request.contextPath}/chung-toi" class="navbar-item-a-mobile"><i
                            class="fas fa-users"></i>Chúng tôi</a>
                </li>
                <li class="navbar-item-mobile">
                    <a href="${pageContext.request.contextPath}/lien-he" class="navbar-item-a-mobile"><i
                            class="fas fa-phone-alt"></i> Liên hệ</a>
                </li>
                <li class="navbar-item-mobile">
                    <button class="header__info-item-a navbar-item-a-mobile" onclick="show()"><i
                            class="fas fa-sign-in-alt" style="display: flex;align-items: center"></i>Đăng Nhập
                    </button>
                </li>
            </ul>
        </div>

    </div>

    <!-- CONTAINER -->
    <div class="container">
        <div class="slider">
            <div class="wrapper">
                <div class="static-txt">Bạn muốn đến đâu?</div>
            </div>
            <div class="slider-ad">
                <input class="search-txt" type="text" name="" placeholder="Tìm Kiếm theo Thành Phố hoặc Địa chỉ">
                <button href="" class="search-btn">
                    <i class="ti-search"></i>
                </button>
            </div>
        </div>

        <!-- LỰA CHỌN KIỂU NHÀ -->
        <div class="introduce">
            <div class="grid wide">
                <div class="row">

                    <div class="introduce-backgroud col l-3 m-6 c-12" data-aos="zoom-in-up" data-aos-duration="1000">
                        <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ftype_house%2Fnature.jpeg?alt=media&token=87bf6075-c5b0-4dbf-be2c-18c33a8ea548" alt="" class="introduce-img">
                        <div class="intro-content">
                            <h3 class="intro-content-title">Thiên Nhiên</h3>
                            <p class="intro-option">5 Lựa Chọn</p>
                            <button href="" class="intro-btn">Chọn nhà</button>
                        </div>
                    </div>
                    <div class="introduce-backgroud col l-3 m-6 c-12 " data-aos="fade-up" data-aos-duration="1000">
                        <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ftype_house%2Fintimate.jpg?alt=media&token=4e95efcb-9c77-4a13-9061-6ec42bb9f47d" alt="" class="introduce-img">
                        <div class="intro-content">
                            <h3 class="intro-content-title">Ấm Cúng</h3>
                            <p class="intro-option">28 Lựa Chọn</p>
                            <button href="" class="intro-btn">Chọn nhà</button>
                        </div>
                    </div>
                    <div class="introduce-backgroud col l-3 m-6 c-12" data-aos="fade-up" data-aos-duration="1000">
                        <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ftype_house%2Fstudio.jpg?alt=media&token=a0b42942-39fe-4d0b-aaad-433941d7aa64" alt="" class="introduce-img">
                        <div class="intro-content">
                            <h3 class="intro-content-title">Studio</h3>
                            <p class="intro-option">9 Lựa Chọn</p>
                            <button href="" class="intro-btn">Chọn nhà</button>
                        </div>
                    </div>
                    <div class="introduce-backgroud col l-3 m-6 c-12" data-aos="zoom-in-up" data-aos-duration="1000">
                        <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ftype_house%2Fformal.jpg?alt=media&token=6e81412e-b777-4521-80ab-bc9ca88e85ad " alt=""
                             class="introduce-img">
                        <div class="intro-content">
                            <h3 class="intro-content-title">Sang Trọng</h3>
                            <p class="intro-option">19 Lựa Chọn</p>
                            <button href="" class="intro-btn">Chọn nhà</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- BUY SHOP -->
        <div class="content">
            <div class="grid wide">
                <div class="buy">
                    <h1 class="buy-title" data-aos="zoom-in-up"><span>Lựa Chọn</span> Gần Đây</h1>
                    <div class="row">
                        <!-- Item 1 -->
                        <div class="col l-3 m-6 c-12 buy-list" data-aos="zoom-in-up" data-aos-duration="1000">
                            <a class="catalog-singer-link-a" href="./detail.html">
                                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse%2Fbuy-4.jpg?alt=media&token=42012a1e-b000-4d6f-9e62-c35b6326bbb4" alt="" class="buy-img1">
                                <h6 class="buy-item-price" style="--h:#D980FA">2000$ / Ngày</h6>
                                <div class="buy-info-item">
                                    <h5 class="buy-item-name">Alchemy by Alta</h5>
                                    <h6>Phường 9 - Đà Lạt</h6>

                                    <ul class="buy-item-list">
                                        <li class="list-room">220m2</li>
                                        <li class="list-room">4 P.Ngủ</li>
                                        <li class="list-room">2 P.Tắm</li>
                                    </ul>
                                    <p class="buy-text">Bao gồm các studio và căn hộ 1 và 2 phòng ngủ có thiết kế lấy
                                        cảm hứng từ đô thị.</p>
                                </div>
                            </a>
                        </div>
                        <!-- Item 2 -->

                        <div class="col l-3 m-6 c-12 buy-list" data-aos="zoom-in-down" data-aos-duration="1000">
                            <a class="catalog-singer-link-a" href="./detail.html">
                                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse%2Fbuy-17.jpg?alt=media&token=b736ff49-20c8-4d1f-b285-d9ff3f5c0764" alt="" class="buy-img1">
                                <h6 class="buy-item-price" style="--h:#fab1a0">1500$ / Ngày</h6>

                                <div class="buy-info-item">
                                    <h5 class="buy-item-name">Bayside Village Apartments</h5>
                                    <h6>Bãi Sau - Vũng Tàu</h6>
                                    <ul class="buy-item-list">
                                        <li class="list-room">100m2</li>
                                        <li class="list-room">4 P.Ngủ</li>
                                        <li class="list-room">2 P.Tắm</li>
                                    </ul>
                                    <p class="buy-text">Hãy tận hưởng niềm vui của bạn từ một vị trí thuận lợi có thể dễ
                                        dàng tiếp cận tất cả những gì tốt nhất của khu South Beach.</p>
                                </div>
                            </a>
                        </div>
                        <!-- Item 3 -->

                        <div class="col l-3 m-6 c-12 buy-list" data-aos="zoom-in-down" data-aos-duration="1000">
                            <a class="catalog-singer-link-a" href="./detail.html">
                                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse%2Fbuy-16.jpg?alt=media&token=96ff7d9f-9a24-4b31-ac9a-fe868a5c53db" alt="" class="buy-img1">
                                <h6 class="buy-item-price" style="--h:#f0932b">1918$ / Ngày</h6>

                                <div class="buy-info-item">
                                    <h5 class="buy-item-name">Avalon at Mission Bay</h5>
                                    <h6>Phú Quốc</h6>
                                    <ul class="buy-item-list">
                                        <li class="list-room">100m2</li>
                                        <li class="list-room">2 P.Ngủ</li>
                                        <li class="list-room">2 P.Tắm</li>
                                    </ul>
                                    <p class="buy-text">Avalon tại Đảo Kim Cương nằm ở Q2.TP HCM cung cấp studio được
                                        thiết kế chu đáo</p>
                                </div>
                            </a>
                        </div>
                        <div class="col l-3 m-6 c-12 buy-list" data-aos="zoom-in-up" data-aos-duration="1000">
                            <a class="catalog-singer-link-a" href="./detail.html">
                                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse%2Fbuy-12.jpg?alt=media&token=61e24745-e494-400b-9c1c-3469eae48f2f" alt="" class="buy-img1">
                                <h6 class="buy-item-price" style="--h:#badc58">2809$ / Ngày</h6>
                                <div class="buy-info-item">
                                    <h5 class="buy-item-name">AVA Nob Hill</h5>
                                    <h6>Quy Nhơn</h6>
                                    <ul class="buy-item-list">
                                        <li class="list-room">300m2</li>
                                        <li class="list-room">4 P.Ngủ</li>
                                        <li class="list-room">2 P.Tắm</li>
                                    </ul>
                                    <p class="buy-text">Mang đến cơ hội duy nhất để sống và tận hưởng những khu dân cư
                                        yên tĩnh, vị trí thuận tiện, không gian thoáng đẹp.</p>
                                </div>
                            </a>
                        </div>

                    </div>
                    <div class="buy-view-search">
                        <a href="./catalog.html" class="buy-btn">Xem Tất Cả</a>
                    </div>
                </div>
            </div>
        </div>


        <!-- TOOLS AND RESOURCES -->


        <h1 class="buy-title" data-aos="zoom-in-down"><span>Công Cụ</span> Và <span>Nguồn lực</span></h1>
        <div class="parallax-ser">
            <div class="tool-ser">
                <div class="serBox" data-aos="zoom-out-down" data-aos-duration="1500">
                    <div class="serIcon" style="background-color: #0093E9;
                        background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 100%);
                        ">

                        <i class="ti-comment-alt"></i>
                    </div>
                    <div class="serContent">
                        <h2>ĐẦU TƯ</h2>
                        <p>
                            Chúng tôi được rất nhiều các nhà đầu tư cũng như khách hàng tin tưởng
                        </p>
                    </div>
                </div>
                <div class="serBox" data-aos="zoom-out-down" data-aos-duration="1000">
                    <div class="serIcon" style="background-color: #FEE140;
                        background-image: linear-gradient(90deg, #FEE140 0%, #FA709A 100%);
                        ">
                        <i class=" ti-star"></i>
                    </div>
                    <div class="serContent">
                        <h2>HÀNG ĐẦU</h2>
                        <p> TẤT CẢ CÁC NGÔI NHÀ CHO THUÊ CỦA CHÚNG TÔI ĐỀU RẤT TUYỆT VỜI TRONG KHU VỰC GẦN ĐÓ, SẴN
                            SÀNG GIÚP BẠN TÌM KIẾM NGÔI NHÀ HOÀN HẢO.</p>
                    </div>
                </div>
                <div class="serBox" data-aos="zoom-out-down" data-aos-duration="1000">
                    <div class="serIcon" style="background-color: #FA8BFF;
                        background-image: linear-gradient(45deg, #FA8BFF 0%, #2BD2FF 52%, #2BFF88 90%);
                        ">
                        <i class="ti-pencil-alt"></i>
                    </div>
                    <div class="serContent">
                        <h2>CƠ SỞ VẬT CHẤT</h2>
                        <p>TẤT CẢ CÁC CƠ SỞ VẬT CHẤT ĐỀU ĐẦY ĐỦ TIỆN NGHI CHO BẠN 1 CẢM GIÁC THOẢI MÁI
                            NHẤT.</p>
                    </div>
                </div>

            </div>
        </div>
        <!-- NEW WORK TEAM -->
        <h1 class="team-section-title" data-aos="zoom-in-down"><span>Nhóm</span> Làm Việc</h1>
        <div class="team-section">
            <div class="person">
                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fp1.png?alt=media&token=5ed59f1b-482e-4ebe-894e-8c879388d161" alt="" class="person-img">
                <div class="person-info">
                    <h2>Ái Ngân</h2>
                    <p>Designer & Developer</p>
                    <div class="person-icon">
                        <a href=""><i class="ti-facebook"></i></a>
                        <a href=""><i class="ti-instagram"></i></a>
                        <a href=""><i class="ti-email"></i></a>
                        <a href=""><i class="ti-twitter"></i></a>
                    </div>
                </div>
            </div>
            <div class="person">
                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fp2.png?alt=media&token=899c9168-ab2b-4f2f-bc65-40484653ead7" alt="" class="person-img">
                <div class="person-info">
                    <h2>Kim Pink</h2>
                    <p>Digital Marketing</p>
                    <div class="person-icon">
                        <a href=""><i class="ti-facebook"></i></a>
                        <a href=""><i class="ti-instagram"></i></a>
                        <a href=""><i class="ti-email"></i></a>
                        <a href=""><i class="ti-twitter"></i></a>
                    </div>
                </div>
            </div>
            <div class="person">
                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fp3.png?alt=media&token=d2dde336-c89b-465f-93e0-ad09dc48e325" alt="" class="person-img">
                <div class="person-info">
                    <h2>Đình Danh</h2>
                    <p>Business Analyst</p>
                    <div class="person-icon">
                        <a href=""><i class="ti-facebook"></i></a>
                        <a href=""><i class="ti-instagram"></i></a>
                        <a href=""><i class="ti-email"></i></a>
                        <a href=""><i class="ti-twitter"></i></a>
                    </div>
                </div>
            </div>
            <div class="person">
                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fp4.png?alt=media&token=ada887ce-fbd8-4fb2-b746-54d3c9334ee7" alt="" class="person-img">
                <div class="person-info">
                    <h2>Lisa Phạm</h2>
                    <p>Developer</p>
                    <div class="person-icon">
                        <a href=""><i class="ti-facebook"></i></a>
                        <a href=""><i class="ti-instagram"></i></a>
                        <a href=""><i class="ti-email"></i></a>
                        <a href=""><i class="ti-twitter"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- CONTACT -->
    </div>
</div>

<!-- FOOTER -->
<footer class="footer">
    <div class="grid wide">
        <div class="row">
            <div class="col l-3 m-6 c-6">
                <h3 class="footer__heading">CHĂM SÓC KHÁCH HÀNG</h3>
                <ul class="footer-list">
                    <li class="footer-item">
                        <a href="" class="footer-item__link">Trung Tâm Trợ Giúp</a>
                    </li>
                    <li class="footer-item">
                        <a href="" class="footer-item__link">Hướng Dẫn Mua Hàng</a>
                    </li>
                    <li class="footer-item">
                        <a href="" class="footer-item__link">Hoàn Tiền</a>
                    </li>
                    <li class="footer-item">
                        <a href="" class="footer-item__link">Chính Sách Bảo Hành</a>
                    </li>
                </ul>
            </div>
            <div class="col l-3 m-6 c-6">
                <h3 class="footer__heading">THANH TOÁN</h3>
                <ul class="footer-list">
                    <li class="footer-item">
                        <a href="" class="footer-item__link">Giới Thiệu</a>
                    </li>
                    <li class="footer-item">
                        <a href="" class="footer-item__link">Tuyển Dụng</a>
                    </li>
                    <li class="footer-item">
                        <a href="" class="footer-item__link">Người Bán</a>
                    </li>
                    <li class="footer-item">
                        <a href="" class="footer-item__link">Sale</a>
                    </li>
                </ul>
            </div>
            <div class="col l-3 m-6 c-6">
                <h3 class="footer__heading">THEO DÕI CHÚNG TÔI TRÊN</h3>
                <ul class="footer-list">
                    <li class="footer-item">
                        <a href="" class="footer-item__link">
                            <i class="footer-item__icon ti-facebook"></i> Facebook
                        </a>
                    </li>
                    <li class="footer-item">
                        <a href="" class="footer-item__link">
                            <i class="footer-item__icon ti-instagram"></i> Instagram
                        </a>
                    </li>
                    <li class="footer-item">
                        <a href="" class="footer-item__link">
                            <i class="footer-item__icon ti-linkedin"></i> LinkedIn
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col l-3 m-6 c-6">
                <h3 class="footer__heading">BẢNG TIN</h3>
                <ul class="footer-list">
                    <p class="footer__text2">Cập nhật những tin tức và sự kiện mới nhất của công ty. Nhập e-mail của bạn
                        và đăng ký nhận</p>
                    <div class="footer-li">
                        <input type="email" class="footer__input contact-input" placeholder="Email" required>
                        <button class="footer-btn">Đăng Kí</button>
                    </div>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer__bottom">
        <div class=" grid wide">
            <p class="footer__text">Đại Học Nông Lâm TP.HCM</p>
            <p class="footer__text">Lập Trình Web: Lê Quốc Sơn Giang - Trần Đình Danh - Phạm Công Danh</p>
        </div>
    </div>
</footer>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://smtpjs.com/v3/smtp.js"></script>

<script src="<c:url value='/template/web/js/appfunction.js' />" type="text/javascript" >console.log("100000")</script>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>
<script>
    Validator({
        form: "#register",
        rules: [
            Validator.isRequired("#fullname"),
            Validator.isEmail("email")
        ]
    });
</script>

</body>

</html>
