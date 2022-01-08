<%--
  Created by IntelliJ IDEA.
  User: lequo
  Date: 07/01/2022
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="header">

    <!-- NÚT TRỞ LẠI ĐẦU TRANG -->
    <button id="myBtn" title="Lên đầu trang"><i class="ti-arrow-up"></i></button>


    <!-- HEADER -->
    <div class="header__info">
        <ul class="header__info-list">
            <li class="header__info-item">
                <button href="" class="header__info-item-a" onclick="show()">Đăng Nhập</button>
            </li>
        </ul>
        <ul class="header__info-list">
            <li class="header__info-item">
                <i class="ti-email"></i>
                info@gmail.com
            </li>
            <li class="header__info-item">
                <i class="ti-mobile"></i>
                +84 1819289
            </li>
        </ul>
    </div>
    <nav class="header__navbar">
        <a href="./index.html">
            <img src="./img/logo-dark.png" alt="" class="navbar__logo-img">
        </a>
        <ul class="navbar-list">
            <li class="navbar-item">
                <a href="./index.html" class="navbar-item-a">Trang Chủ</a>
            </li>
            <li class="navbar-item">
                <a href="./catalog.html" class="navbar-item-a">DANH MỤC</a>
            </li>
            <li class="navbar-item">
                <a href="./experience.html" class="navbar-item-a">Trải Nghiệm</a>
            </li>
            <li class="navbar-item">
                <a href="./services.html" class="navbar-item-a">Dịch vụ</a>
            </li>
            <li class="navbar-item">
                <a href="./about.html" class="navbar-item-a">Chúng tôi</a>
            </li>
            <li class="navbar-item">
                <a href="./contact.html" class="navbar-item-a">Liên hệ</a>

            </li>
        </ul>
    </nav>

    <!-- REPONSIVE -->
    <label for="navbar-checked" class="navbar-btn" id="mobile-menu-btn">
        <i class="ti-view-list"></i>
    </label>
    <a href="./index.html">
        <img src="./img/logo-dark.png" alt="" class="navbar__logo-img2">
    </a>
    <input type="checkbox" id="navbar-checked" hidden>
    <label for="navbar-checked" class="navbar-mobile-over"></label>
    <div class="navbar-list-mobile">
        <label for="navbar-checked" class="fas fa-times icon-close"></label>
        <ul>
            <li class="navbar-item-mobile">
                <a href="./index.html" class="navbar-item-a-mobile"><i class="fas fa-home"></i> Trang Chủ</a>
            </li>
            <li class="navbar-item-mobile">
                <a href="./catalog.html" class="navbar-item-a-mobile"><i class="fas fa-laptop-house"></i> Danh Mục
                    <span>739</span></a>
            </li>
            <li class="navbar-item-mobile">
                <a href="./experience.html" class="navbar-item-a-mobile"><i class="fas fa-running"></i> Trải
                    Nghiệm<span>127</span></a>
            </li>
            <li class="navbar-item-mobile">
                <a href="./services.html" class="navbar-item-a-mobile"><i class="far fa-handshake"></i>Dịch vụ</a>
            </li>
            <li class="navbar-item-mobile">
                <a href="./about.html" class="navbar-item-a-mobile"><i class="fas fa-users"></i>Chúng tôi</a>
            </li>
            <li class="navbar-item-mobile">
                <a href="./contact.html" class="navbar-item-a-mobile"><i class="fas fa-phone-alt"></i> Liên hệ</a>
            </li>
            <li class="navbar-item-mobile">
                <button class="header__info-item-a navbar-item-a-mobile" onclick="show()"><i
                        class="fas fa-sign-in-alt" style="display: flex;align-items: center"></i>Đăng Nhập
                </button>
            </li>
        </ul>
    </div>
</div>


<div class="about">
    <div class="about-img">
        <h1 class="about-img-name">Trải Nghiệm</h1>
        <div class="contact-test">
            <div class="layout-contact-wrapper">
                <div class="layout-contact-btn-info">
                    <div class="layout-contact-info-icon"><i class="ti-facebook"></i></div>
                    <span>FaceBook</span>
                </div>
                <div class="layout-contact-btn-info">
                    <div class="layout-contact-info-icon"><i class="ti-twitter"></i></div>
                    <span>Twitter</span>
                </div>
                <div class="layout-contact-btn-info">
                    <div class="layout-contact-info-icon"><i class="ti-instagram"></i></div>
                    <span>Instagram</span>
                </div>
                <div class="layout-contact-btn-info">
                    <div class="layout-contact-info-icon"><i class="ti-github"></i></div>
                    <span>GitHub</span>
                </div>
                <div class="layout-contact-btn-info">
                    <div class="layout-contact-info-icon"><i class="ti-youtube"></i></div>
                    <span>Youtube</span>
                </div>
            </div>
            <div class="about-title-link"><a href="./index.html">Trang Chủ</a> / <span>Danh Mục</span></div>

        </div>
    </div>
</div>

