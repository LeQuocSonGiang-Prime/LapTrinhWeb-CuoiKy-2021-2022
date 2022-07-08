<%@ page import="vn.edu.hcmuaf.fit.model.HouseModel" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.StringTokenizer" %>
<%@ page import="vn.edu.hcmuaf.fit.model.BillModel" %><%--
  Created by IntelliJ IDEA.
  User: lequo
  Date: 07/01/2022
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HomeStay</title>

    <link rel="icon"
          href="data:image/png;base64,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"
          type="image/x-icon"/>
    <link rel="stylesheet" href="<c:url value='/template/web/css/base.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/web/css/main.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/grid.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/reponsive.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/admin/css/detailHouse.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/admin/css/cssforbookroomadmin.css'/>">

    <link rel="stylesheet" href="<c:url value='/template/font/themify-icons/themify-icons.css'/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

    <% HouseModel house = (HouseModel) request.getAttribute("currentHouse");
        List<BillModel> listBill = (List<BillModel>) request.getAttribute("listBill");
    %>

</head>

<body>
<div class="modal" id="modal">
    <div class="form-box">
        <i id="close" onclick="hide()" class="login-colose-btn ti-close"></i>
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

        <!-- NÚT TRỞ LẠI ĐẦU TRANG -->
        <button id="myBtn" title="Lên đầu trang"><i class="ti-arrow-up"></i></button>


        <!-- HEADER -->
        <!-- <div class="grid">      -->
        <div class="header__info">
            <ul class="header__info-list">
                <li class="header__info-item">
                    <button class="header__info-item-a" onclick="show()">Đăng Nhập</button>
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
                    <button class="header__info-item-a navbar-item-a-mobile" onclick="show()"><i
                            class="fas fa-sign-in-alt" style="display: flex;align-items: center"></i>Đăng Nhập
                    </button>
                </li>
            </ul>
        </div>

        <!-- </div> -->
    </div>

    <div class="about">
        <div class="about-img">
            <h1 class="about-img-name">Chi Tiết</h1>
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
                <div class="about-title-link"><a href="${pageContext.request.contextPath}/trang-chu">Trang Chủ</a> /
                    <span>Chi Tiết</span></div>
            </div>
        </div>
    </div>

    <!-- CATALOG -->

    <div class="grid wide">
        <div class="detail">
            <div class="detail-info">
                <h1><%=house.getName()%>
                </h1>
                <div class="detail-info-list">
                    <i class="fas fa-star"><%=house.getStar()%>
                    </i>
                    <span> (<%=house.getTotalAssess()%> Đánh Giá)</span>
                    <span><%=house.getAddress()%></span>
                    <span><%=house.getDetail()%></span>
                </div>
            </div>
            <!-- Slideshow container -->
            <div class="slideshow-container">
                <!-- Full-width images with number and caption text -->
                <div class="mySlides fade" style="display: block;">
                    <img src="<%=house.getImage().get(0)%>" alt="">
                </div>

                <% for (int i = 1; i < house.getImage().size(); i++) { %>
                <div class="mySlides fade">
                    <img src="<%=house.getImage().get(i)%>" alt="">
                </div>
                <%}%>

                <!-- Next and previous buttons -->
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <div style="text-align:center; margin-top: 10px;">
                <% for (int i = 1; i <= house.getImage().size(); i++) { %>
                <span class="dot" onclick="currentSlide(<%=i%>)"></span>
                <% }%>
            </div>
            <br>
            <!-- The dots/circles -->

            <div class="grid wide">
                <div class="row">
                    <div class="house-detail col l-7">

                        <div class="house-info">
                            <h4><i class="ti-home"></i> Toàn Bộ Nhà</h4>
                            <span>Bạn sẽ có 1 nơi ở thoải mái</span>
                        </div>
                        <div class="house-info">
                            <h4><i class="ti-layout-tab"></i> Vệ sinh tăng cường</h4>
                            <span>Chủ nhà này đã cam kết thực hiện quy trình vệ sinh tăng cường 5 bước của Chúng tôi</span>
                        </div>
                        <div class="house-info">
                            <h4><i class="ti-mobile"></i> Tự nhận phòng</h4>
                            <span>Bạn có thể gặp nhân viên trực cửa để nhận phòng.</span>
                        </div>
                        <div class="house-info">
                            <h4><i class="ti-check-box"></i> Hủy miễn phí trước 1 Tuần</h4>
                        </div>
                        <h1>NƠI NÀY CÓ NHỮNG GÌ CHO BẠN</h1>
                        <div class="house-detail2">
                            <% StringTokenizer stk = new StringTokenizer(house.getForYou(), ","); %>
                            <% if (stk.nextToken().equals("1")) {%>
                            <div class="house-info house-info2">
                                <p><i class="ti-thought "></i>Hướng nhìn ra vịnh</p>
                            </div>
                            <%}%>
                            <% if (stk.nextToken().equals("1")) {%>
                            <div class="house-info house-info2">
                                <p><i class="ti-car"></i> Chỗ đỗ xe miễn phí tại nơi ở</p>
                            </div>
                            <%}%>
                            <% if (stk.nextToken().equals("1")) {%>
                            <div class="house-info house-info2">
                                <p><i class="ti-star"></i> Sân hiên hoặc ban công riêng</p>
                            </div>
                            <%}%>
                            <% if (stk.nextToken().equals("1")) {%>
                            <div class="house-info house-info2">
                                <p><i class="ti-pin2"></i> Cho phép thú cưng</p>
                            </div>
                            <%}%>
                            <% if (stk.nextToken().equals("1")) {%>
                            <div class="house-info house-info2">
                                <p><i class="ti-key"></i> Tự nhận phòng</p>
                            </div>
                            <%}%>
                            <% if (stk.nextToken().equals("1")) {%>
                            <div class="house-info house-info2">
                                <p><i class="ti-car"></i> Máy phát hiện khí CO </p>
                            </div>
                            <%}%>
                        </div>
                    </div>
                    <!-- ĐẶT PHÒNG -->
                    <div class="col l-5 m-12 c-12">

                        <div id="sg-book-room">
                            <div class="book-room-header">
                                <div class="book-room-header-price">
                                    <span style="color: #ff385c;">đ <%=house.getPrice()%>.000</span> / đêm
                                </div>
                                <div class="book-room-assess">
                                    <i class="fas fa-star" style="color: #ff385c ;"></i>
                                    <h3><%=house.getStar()%>
                                    </h3>
                                    <p>(<%=house.getTotalAssess()%> đánh giá)</p>
                                </div>

                            </div>
                            <div id="sg-control" class="light show-calendar" style="z-index: 1;">
                                <div class="calendar">
                                    <div class="calendar-header">
                                        <span class="month-picker" id="month-picker">February</span>
                                        <div class="year-picker">
                                                                <span class="year-change" id="prev-year">
                                                                    <pre style="margin: 0;"><</pre>
                                                                </span>
                                            <span class="year">2001</span>
                                            <span class="year-change" id="next-year">
                                                                    <pre style="margin: 0;">></pre>
                                                                </span>
                                        </div>
                                    </div>

                                    <div class="calendar-body">
                                        <div class="calendar-week-day">
                                            <div>CN</div>
                                            <div>T2</div>
                                            <div>T3</div>
                                            <div>T4</div>
                                            <div>T5</div>
                                            <div>T6</div>
                                            <div>T7</div>
                                        </div>
                                        <div class="calendar-days"></div>
                                    </div>
                                    <div class="month-list"></div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
            <div class="grid wide detail-comment">
                <h1>ĐÁNH GIÁ <i class="fas fa-star"><%=house.getStar()%>
                </i></h1>
                <div class="row">
                    <c:forEach var="comment" items="<%=house.getListComment()%>">
                        <div class="col c-12 m-12 l-6 about-company-comment-content">
                            <div>
                                <img src="${comment.user.avatar}" alt="" class="comment-content-img">
                            </div>
                            <div class="comment-content-info">
                                <p class="comment-content-info-text">${comment.comment}</p>
                                <h4 class="comment-content-info-name">${comment.user.fullName}</h4>
                            </div>
                        </div>
                    </c:forEach>
                </div>

            </div>
        </div>
    </div>

    <!-- FOOTER -->
    <footer class="footer">
        <div class="footer__bottom">
            <div class="grid">
                <p class="footer__text">Đại Học Nông Lâm TP.HCM</p>
                <p class="footer__text">Lập Trình Web: Lê Quốc Sơn Giang - Trần Đình Danh - Phạm Công Danh</p>

            </div>
        </div>
    </footer>

</div>
<script>
    $(document).ready(function () {
        $(".navbar-btn").click(function () {
            $(".header__navbar-mobile").show();
        });
        $(".ti-close").click(function () {
            $(".header__navbar-mobile").hide();
        });
    });

</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="<c:url value='/template/web/js/appfunction.js' />"></script>
<script src="<c:url value='/template/admin/js/bookroom.js' />"></script>


</body>
</html>
