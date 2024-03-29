<%@ page import="vn.edu.hcmuaf.fit.model.UserModel" %><%--
  Created by IntelliJ IDEA.
  User: lequo
  Date: 07/01/2022
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bất động sản</title>
    <link rel="icon"
          href="data:image/png;base64,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"
          type="image/x-icon"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="<c:url value='/template/web/css/base.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/web/css/main.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/grid.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/reponsive.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/font/themify-icons/themify-icons.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/web/css/contact.css'/>">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
    <% UserModel user = (UserModel) request.getSession().getAttribute("acc");%>
</head>

<body>
<div class="modal" id="modal">
    <div class="form-box">
        <i id="close" onclick="hideModal()" class="login-colose-btn ti-close"></i>
        <div class="button-box">
            <div id="btn-login-modal"></div>
            <button type="button" class="toggle-btn" onclick="login()">Đăng Nhập</button>
            <button type="button" class="toggle-btn" onclick="register()">Đăng Kí</button>
        </div>
        <div class="social-icons">
            <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ficon%2Ffb.png?alt=media&token=77c279fb-5da5-43f4-9405-ee7f7eebe2cd"
                 alt="">
            <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ficon%2Fgp.png?alt=media&token=eb88d9d0-3f44-4bb0-80e0-5a4e6e42bf94"
                 alt="">
            <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ficon%2Ftw.png?alt=media&token=f3e640ec-9bad-4cd2-a51a-cf2263415680"
                 alt="">
        </div>
        <form id="login" class="input-group" action="">
            <input type="text" class="input-field" placeholder="Tài Khoản" required>
            <input type="password" class="input-field" placeholder="Mật Khẩu" required>
            <input type="checkbox" class="check-box"><span class="checkbox-remember">Nhớ mật khẩu</span>
            <button type="submit" class="submit-btn">Đăng Nhập</button>
        </form>
        <form id="register" class="input-group" action="">
            <input type="text" class="input-field" placeholder="Tài Khoản" required>
            <input type="password" class="input-field" placeholder="Mật Khẩu" required>
            <input type="password" class="input-field" placeholder="Nhập Lại Mật Khẩu" required>
            <input type="checkbox" class="check-box"><span class="checkbox-remember">Tôi đồng ý với các Điều khoản & Điều kiện</span>
            <button type="submit" class="submit-btn">Đăng Kí</button>
        </form>
    </div>
</div>


<div class="root">
    <div class="header">
        <button id="myBtn" title="Lên đầu trang"><i class="ti-arrow-up"></i></button>
        <!-- HEADER -->
        <%if (user == null) {%>
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
        <%} else {%>
        <a class="header__info">
            <img src="<%=user.getAvatar()%>" alt=""
                 style="border-radius:50%; height: 20px;width: 20px;margin-right: 5px; ">
            <div class="header__info" style="margin-top: 0" href="detailUser"><%=user.getFullName()%></div>
            </div>
        </a>
        <%}%>
        <nav class="header__navbar">
            <a href="${pageContext.request.contextPath}/trang-chu">
                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ficon%2Flogo.png?alt=media&token=ab14d91d-f063-417b-9e61-528f1b8c4018"
                     alt="" class="navbar__logo-img">
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
        <!-- REPONSIV -->
        <label for="navbar-checked" class="navbar-btn" id="mobile-menu-btn">
            <i class="ti-view-list"></i>
        </label>
        <a href="${pageContext.request.contextPath}/trang-chu">
            <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ficon%2Flogo.png?alt=media&token=ab14d91d-f063-417b-9e61-528f1b8c4018"
                 alt="" class="navbar__logo-img2">
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
                    <button class="header__info-item-a navbar-item-a-mobile" onclick="showModal()"><i
                            class="fas fa-sign-in-alt" style="display: flex;align-items: center"></i>Đăng Nhập
                    </button>
                </li>
            </ul>
        </div>
    </div>
    <!-- </div> -->
</div>

<!-- ABOUT -->
<div class="about">
    <div class="about-img">
        <h1 class="about-img-name">Chúng Tôi</h1>
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
        </div>
        <div class="about-title-link"><a href="./index.html">Trang Chủ</a> / <span>Chúng Tôi</span></div>
    </div>

    <!-- ABOUT CONTENT -->
    <div class="about-content">
        <div class="about-company">
            <h1 class="about-company-title">Công Ty</h1>
            <ul class="about-company-list">
                <li class="about-company-item ">
                    <button href="" class="about-company-item1 about-company-item-a js-company-item-over">TỔNG QUÁT
                    </button>
                </li>
                <li class="about-company-item">
                    <button href="" class="about-company-item-a js-company-item-soul">NHÀ SÁNG LẬP</button>
                </li>
                <li class="about-company-item">
                    <button href="" class="about-company-item-a js-company-item-team">TEAM</button>
                </li>
                <li class="about-company-item">
                    <button href="" class="about-company-item-a js-company-item-test">ĐÁNH GIÁ</button>

                </li>
            </ul>
        </div>
        <!-- OVERVIEW -->
        <div class=" grid wide">
            <div class="about-company-overview ">
                <div class="about-company-content">
                    <p class="about-company-content-text">
                        Prime là một công ty cho thuê được thành lập vào năm 2015 tại Tp.HCM. Công ty chúng tôi ban đầu
                        được thiết kế để giúp những người đang
                        tìm thuê các căn hộ cho du lịch. Hôm nay, chúng tôi cung cấp video giới thiệu hàng trăm căn
                        hộ và nhà ở trên khắp
                        đất nước cũng như truy cập vào mạng lưới của chúng tôi để có dịch vụ tốt nhất.
                        Prime luôn nỗ lực để làm cho trải nghiệm nhà ở của bạn trở nên thoải mái nhất có thể.
                        Chúng tôi quan tâm đến khách hàng của mình và giúp họ kiếm được nhiều tiền nhất cũng như sự
                        thoải mái khi mua hàng. Hơn nữa, địa bàn hoạt động của chúng tôi bao
                        gồm nhiều bang trên toàn quốc nên bạn hoàn toàn có thể yên tâm sẽ tìm được căn nhà ưng ý.
                    </p>
                    <p class="about-company-content-text">
                        Các đại lý của chúng tôi hợp tác rộng rãi với các chủ sở hữu bất động sản chuyên nghiệp và các
                        công ty
                        kinh doanh tạo ra các cuộc gọi từ những khách hàng tiềm năng đang tìm kiếm bất động sản thương
                        mại.
                        Nhờ trang web của chúng tôi, nó có thể được thực hiện dễ dàng và nhanh chóng hơn bao giờ hết.
                        Cho dù bạn là một cá nhân hay một đại diện doanh nghiệp, ở đây bạn sẽ tìm thấy tài sản bạn đang
                        tìm
                        kiếm và dịch vụ xứng đáng.
                    </p>
                </div>
                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fteam.jpg?alt=media&token=218afb2e-e652-4465-aabb-e90d8a016ee7"
                     alt="" class="about-company-content-img">

            </div>
        </div>

        <!-- SOUL OF AGENCY  -->
        <div class="display-none-soulof" style="display: none;">
            <div class="about-company-soulof">
                <div class="founder-info1">
                    <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fuser%20(1).webp?alt=media&token=0340a590-fd9b-4068-8160-82220f2fd01d"
                         alt="" class="founder-img">
                    <div class="founder-item">
                        <span class="founder-name">Carl Bishop</span>
                        <h3 class="souof-fouder">Nhà Sáng Lập</h3>
                        <a href="" class="founder-phone">
                            <i class="ti-mobile"></i>
                            +84 191819</a>
                        <a href="" class="founder-mail">
                            <i class="ti-email"></i>
                            CarlBishop@gmail.com</a>
                    </div>
                </div>
                <div class="souof-text">
                    <p class="souof-text1">
                        Với hơn 10 năm kinh nghiệm trong lĩnh vực Bất động sản, Carl Bishop là một trong những đại lý
                        nổi tiếng nhất khu vực hiện nay. Sự cống hiến chuyên nghiệp của anh ấy đã cho phép anh ấy thành
                        lập công ty Intense bao gồm các kỹ năng của anh ấy trong việc bán và cho thuê bất động sản.
                    </p>
                    <p class="souof-text2">
                        Tôi muốn tạo ra một công ty thành công có thể cho mọi người thuê thoải mái cũng như bán tài sản.
                    </p>
                    <p class="souof-text1">
                        Phẩm chất lãnh đạo và kỹ năng quản lý tuyệt vời của ông đã giúp Carl Bishop phát triển Prime
                        thành một mạng lưới các đại lý bất động sản có danh tiếng tốt. Ngày nay, ông Bishop quản lý công
                        việc của các đại lý khác trong công ty của chúng tôi, kiểm soát công việc của họ và mức độ dịch
                        vụ mà họ cung cấp cho khách hàng của chúng tôi.
                    </p>
                </div>
            </div>
        </div>

        <!-- TEAM -->
        <div class="display-none-team" style="display: none;">
            <div class="about-company-team">
                <div class="founder">
                    <div class="grid wide">
                        <div class="row">
                            <!-- TEAM 1 -->
                            <div class="col l-3 m-6 c-6 founder-info">
                                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fp1.png?alt=media&token=5ed59f1b-482e-4ebe-894e-8c879388d161"
                                     alt="" class="founder-img">
                                <div class="founder-item">
                                    <span class="founder-name">Ashley Mason</span>
                                    <a href="" class="founder-phone">
                                        <i class="ti-mobile"></i>
                                        +84 191819</a>
                                    <a href="" class="founder-mail">
                                        <i class="ti-email"></i>
                                        Mason@gmail.com</a>
                                </div>
                            </div>

                            <!-- TEAM 2 -->
                            <div class="col l-3 m-6 c-6 founder-info">
                                <div class="fouder-image">
                                    <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fp2.png?alt=media&token=899c9168-ab2b-4f2f-bc65-40484653ead7"
                                         alt="" class="founder-img">
                                </div>
                                <div class="founder-item">
                                    <span class="founder-name">Russell Myers</span>
                                    <a href="" class="founder-phone">
                                        <i class="ti-mobile"></i>
                                        +84 191819</a>
                                    <a href="" class="founder-mail">
                                        <i class="ti-email"></i>
                                        Myers@gmail.com</a>
                                </div>
                            </div>

                            <!-- TEAM 3 -->
                            <div class="col l-3 m-6 c-6 founder-info">
                                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fp3.png?alt=media&token=d2dde336-c89b-465f-93e0-ad09dc48e325"
                                     alt="" class="founder-img">
                                <div class="founder-item">
                                    <span class="founder-name">Shirley Vasquez</span>
                                    <a href="" class="founder-phone">
                                        <i class="ti-mobile"></i>
                                        +84 191819</a>
                                    <a href="" class="founder-mail">
                                        <i class="ti-email"></i>
                                        Vasquez@gmail.com</a>
                                </div>
                            </div>

                            <!-- TEAM 4 -->
                            <div class="col l-3 m-6 c-6 founder-info">
                                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fuser%20(4).jpg?alt=media&token=615de7b9-a3fd-41cd-a732-69f13e05861f"
                                     alt="" class="founder-img">
                                <div class="founder-item">
                                    <span class="founder-name">Terry Sandoval</span>
                                    <a href="" class="founder-phone">
                                        <i class="ti-mobile"></i>
                                        +84 191819</a>
                                    <a href="" class="founder-mail">
                                        <i class="ti-email"></i>
                                        Sandoval@gmail.com</a>
                                </div>
                            </div>

                            <!-- TEAM 5 -->
                            <div class="col l-3 m-6 c-6 founder-info">
                                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fp4.png?alt=media&token=ada887ce-fbd8-4fb2-b746-54d3c9334ee7"
                                     alt="" class="founder-img">
                                <div class="founder-item">
                                    <span class="founder-name">Randy Schneider</span>
                                    <a href="" class="founder-phone">
                                        <i class="ti-mobile"></i>
                                        +84 191819</a>
                                    <a href="" class="founder-mail">
                                        <i class="ti-email"></i>
                                        Randy@gmail.com</a>
                                </div>
                            </div>

                            <!-- TEAM 6 -->
                            <div class="col l-3 m-6 c-6 founder-info">
                                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fperson%20(4).jpeg?alt=media&token=efae8f64-6962-4467-879c-75a32e7bd532"
                                     alt="" class="founder-img">
                                <div class="founder-item">
                                    <span class="founder-name">Maria Georgel</span>
                                    <a href="" class="founder-phone">
                                        <i class="ti-mobile"></i>
                                        +84 191819</a>
                                    <a href="" class="founder-mail">
                                        <i class="ti-email"></i>
                                        Maria@gmail.com</a>
                                </div>
                            </div>

                            <!-- TEAM 7 -->
                            <div class="col l-3 m-6 c-6 founder-info">
                                <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fperson%20(5).jpeg?alt=media&token=d462a8ba-9a92-4dad-bb8d-8143029ef2a2"
                                     alt="" class="founder-img">
                                <div class="founder-item">
                                    <span class="founder-name">Olivia Marshall</span>
                                    <a href="" class="founder-phone">
                                        <i class="ti-mobile"></i>
                                        +84 191819</a>
                                    <a href="" class="founder-mail">
                                        <i class="ti-email"></i>
                                        Olivia@gmail.com</a>
                                </div>
                            </div>

                            <!-- TEAM 8 -->
                            <div class="col l-3 m-6 c-6 founder-info">
                                <div class="fouder-image">
                                    <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fperson%20(1).jpeg?alt=media&token=7b5dfda1-d24f-4fac-8f9c-a9e763e14a62"
                                         alt="" class="founder-img">
                                </div>
                                <div class="founder-item">
                                    <span class="founder-name">Samantha Nelson</span>
                                    <a href="" class="founder-phone">
                                        <i class="ti-mobile"></i>
                                        +84 191819</a>
                                    <a href="" class="founder-mail">
                                        <i class="ti-email"></i>
                                        Samantha@gmail.com</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- TESTIMONIALS -->
        <div class="display-none-comment" style="display: none;">
            <div class="about-company-comment">
                <div class="grid wide">
                    <div class="row">
                        <div class="col l-6 m-12 c-12 about-company-comment-content">
                            <div><img
                                    src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fuser%20(1).jpg?alt=media&token=86cfc3e9-3b22-4ef8-9307-b73cf005b6f5"
                                    alt="" class="comment-content-img"></div>
                            <div class="comment-content-info">
                                <p class="comment-content-info-text">
                                    Cảm ơn bạn đã phản hồi nhanh chóng và sự giúp đỡ mà bạn đã cho tôi. Bạn luôn có một
                                    giải pháp nhanh chóng cho mọi vấn đề. Thật là một mức độ dịch vụ khách hàng tuyệt
                                    vời</p>
                                <h4 class="comment-content-info-name">-Lisa Evans</h4>
                            </div>
                        </div>
                        <div class="col l-6 m-12 c-12 about-company-comment-content">
                            <div><img
                                    src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fuser%20(2).jpg?alt=media&token=c8c824ab-e69d-4134-b6c3-02bb4ab2e90c"
                                    alt="" class="comment-content-img"></div>
                            <div class="comment-content-info">
                                <p class="comment-content-info-text">Tôi chỉ muốn cảm ơn vì sự giúp đỡ của bạn. Tôi rất
                                    hài lòng và biết ơn. hãy luôn làm tốt như vậy nhé! Trang web của bạn cung cấp sự hỗ
                                    trợ tốt nhất mà tôi từng gặp.</p>
                                <h4 class="comment-content-info-name">-Nicholas Lane</h4>
                            </div>
                        </div>
                        <div class="col l-6 m-12 c-12 about-company-comment-content">
                            <div><img
                                    src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fuser%20(7).jpg?alt=media&token=9d54428a-de2e-4844-b8f2-cbffeb64c76b"
                                    alt="" class="comment-content-img"></div>
                            <div class="comment-content-info">
                                <p class="comment-content-info-text">Cảm ơn bạn rất nhiều vì phản hồi nhanh chóng của
                                    bạn. Không nghi ngờ gì nữa, công ty của bạn rất đáng để ngưỡng mộ! Tôi đã trải
                                    nghiệm hỗ trợ nhanh nhất từ ​​trước đến nay. ort bao giờ hết. Cảm ơn bạn một
                                    nghìn</p>
                                <h4 class="comment-content-info-name">-Ethan Dean</h4>
                            </div>
                        </div>
                        <div class="col l-6 m-12 c-12 about-company-comment-content">
                            <div><img
                                    src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fuser%20(6).jpg?alt=media&token=668c226c-90f6-4c2d-9920-bd1d341dd843"
                                    alt="" class="comment-content-img"></div>
                            <div class="comment-content-info">
                                <p class="comment-content-info-text">Tôi chỉ muốn nói lời cảm ơn vì dịch vụ nhanh chóng
                                    và hiệu quả của bạn, vì đội ngũ nhân viên hỗ trợ thân thiện và chuyên nghiệp của
                                    bạn! Tôi sẽ giới thiệu công ty chuyên gia của bạn cho tất cả bạn bè của tôi</p>
                                <h4 class="comment-content-info-name">-Pamela Hansen</h4>
                            </div>
                        </div>
                        <div class="col l-6 m-12 c-12 about-company-comment-content">
                            <div><img
                                    src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fuser%20(5).jpg?alt=media&token=26fbc4c7-d80f-424d-b4c4-2b993779ee20"
                                    alt="" class="comment-content-img"></div>
                            <div class="comment-content-info">
                                <p class="comment-content-info-text">Wow, tôi rất hài lòng với dịch vụ của bạn. Bạn đã
                                    quản lý để vượt quá mong đợi của tôi! Các bạn làm việc rất hiệu quả và tôi sẽ giới
                                    thiệu nhiều người hơn đến công ty của bạn!</p>
                                <h4 class="comment-content-info-name">-Donald Webb</h4>
                            </div>
                        </div>
                        <div class="col l-6 m-12 c-12 about-company-comment-content">
                            <div><img
                                    src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fteam%2Fuser%20(3).jpg?alt=media&token=321847ad-16cf-4f25-954f-f1eb444431bf"
                                    alt="" class="comment-content-img"></div>
                            <div class="comment-content-info">
                                <p class="comment-content-info-text">Tôi chỉ không biết làm thế nào để mô tả các dịch vụ
                                    của bạn ... Chúng thật phi thường! Tôi khá hài lòng với họ! Chỉ cần tiếp tục đi theo
                                    cách này!</p>
                                <h4 class="comment-content-info-name">-Donna Keller</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                            <i class="footer-item__icon ti-facebook"></i>
                            Facebook</a>
                    </li>
                    <li class="footer-item">
                        <a href="" class="footer-item__link">
                            <i class="footer-item__icon ti-instagram"></i>
                            Instagram</a>
                    </li>
                    <li class="footer-item">
                        <a href="" class="footer-item__link">
                            <i class="footer-item__icon ti-linkedin"></i>
                            LinkedIn</a>
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
        <div class="grid">

            <p class="footer__text">Đại Học Nông Lâm TP.HCM</p>
            <p class="footer__text">Lập Trình Web: Lê Quốc Sơn Giang - Trần Đình Danh - Phạm Công Danh</p>

        </div>
    </div>
</footer>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $(".js-company-item-over").click(function () {
            $(".js-company-item-over").css("color", "var(--primary-color");
            $(".js-company-item-soul").css("color", "#807e7e");
            $(".js-company-item-team").css("color", "#807e7e");
            $(".js-company-item-test").css("color", "#807e7e");

            $(".about-company-overview").show();
            $(".display-none-soulof").hide();
            $(".display-none-team").hide();
            $(".display-none-comment").hide();
        });
        $(".js-company-item-soul").click(function () {
            $(".js-company-item-soul").css("color", "var(--primary-color");
            $(".js-company-item-over").css("color", "#807e7e");
            $(".js-company-item-team").css("color", "#807e7e");
            $(".js-company-item-test").css("color", "#807e7e");

            $(".display-none-soulof").show();
            $(".about-company-overview").hide();
            $(".display-none-team").hide();
            $(".display-none-comment").hide();
        });

        $(".js-company-item-team").click(function () {
            $(".js-company-item-team").css("color", "var(--primary-color");
            $(".js-company-item-soul").css("color", "#807e7e");
            $(".js-company-item-over").css("color", "#807e7e");
            $(".js-company-item-test").css("color", "#807e7e");

            $(".display-none-team").show();
            $(".about-company-overview").hide();
            $(".display-none-soulof").hide();
            $(".display-none-comment").hide();
        });
        $(".js-company-item-test").click(function () {
            $(".js-company-item-test").css("color", "var(--primary-color");
            $(".js-company-item-soul").css("color", "#807e7e");
            $(".js-company-item-team").css("color", "#807e7e");
            $(".js-company-item-over").css("color", "#807e7e");

            $(".display-none-comment").show();
            $(".about-company-overview").hide();
            $(".display-none-team").hide();
            $(".display-none-soulof").hide();
        });
    });
</script>

<script src="<c:url value='/template/web/js/appfunction.js' />"></script>

</body>

</html>