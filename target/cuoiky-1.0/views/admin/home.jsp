<%@ page import="vn.edu.hcmuaf.fit.model.HouseModel" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.AdminModel" %>
<%@ page import="vn.edu.hcmuaf.fit.model.CommentModel" %><%--
  Created by IntelliJ IDEA.
  User: lequo
  Date: 07/01/2022
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="icon"
          href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAO4AAADUCAMAAACs0e/bAAAAjVBMVEUjHx7////u7u7t7e319fX5+fn39/fy8vL8/PwAAAAdGBchHRwKAAAQCQYTDApGQ0KPjo3Av8C0s7QYExOYl5ba2dpMSknLysvl5eW5uLiqqak8OTjg39+Fg4MrKCdycG9dW1tiYmB9e3vS0dGkoqNQTk1DQEApJiVqaGkxLyyMioqkpKNXVVScm5p0cnIXfUMWAAALDElEQVR4nO2de2OjKhPGVUDEXHpxc2mbtns2e2n37fb7f7xXNA0JggyKSC5z/nHtcfQXgXkYMiGKudEkSRDmRxnihxk/xOVRQqu/8yNE+BHhh4m4KBUX7U8mladYeEqVnlC7p4PbQzyJ2x+CyJ6iK+4V1woXBY+LSts9JLf6/+JHVJzcuS4tERftHnJ/keypfkjhKQF7km9v8CTfXu0potwIyUiW1odZ+Q/Mj1J+kuz+rjtZXYSri4QnAvGED09m7Z7sbn8AQqWLomTfUOTWRUDtFHVpp8ipJ7nFE5Wn6qJExqV714kKtzkKAR4yUXZLN57ERVrc5IJxxTDAe/zOtRgGLEah4/EsMY1CKk+JahQyepLHM6LyVF8UYW6825NUHFZHqTgUf1eelC8K0VN9aBGI9p+cw0CE9J7ggajl9rKnq6q6AFWlwu30kEO/Xe3wbYtbP2RWvT3V203E2z2IVqm4SO8p1XpqxBhx8iBaKT1RiCcZRApEyFkgGkYOgwORBiRYmZFcVdUVt5+I9NN36Xh9N+NWzyWrw2paWB2l4nA3gSyNSCdT6WQ9lR3CE7HzJN++9iTH3YM2Ic8lwXFXOZVFhnaqjLuNqWy3uCtufxWRFyAiUZfGjFS4Kk/GxqzypMzL6D3Jt9c05vSiTIq76ODjbsRdw4uDNwGt+je+OHBqbh/SjkDGkRkZWq/ryy9BRK5ec8bY93sHH1xf3LY8M2rHBTZm+p0VkyiKCva+OJpem3B1jdmEe9SYPQumeBPNo53l7CHuKZhspZfv1Nxqlkd7m7BbvadzSM2t2CQ6NPas9XQyqkqP+yDRlrz/nTyuVkQ+NmijaHZDw1zf7d13/7EGLB+hX9apv74rItPAScb4h5K2HKCnWztPLdnSTAVy4EkvM5Truz1kxpuGlg/Qd1aeTC0+hPXd71MdLR+wfp5Raq7sluTXrIW2CkiQSfFppOYIfZq30vKARBLFKOQ8NWdYJk2lZdIuC67ZelIYaMuA9Jtm/ReBTSDAQJSoXlwCDESLPDfSlgHpD7ILRMfPBPyikehhQ6mqLYPQ8hnD4gxU1Z1CSqmNByTPuFJqrnUqq8RFR54SpXDU8/5MjwZdd3nmL1w+lJDdKgLvzLsZYvnfLvmuOMkHFXFRRr5mpU1PmVo4ao09k687Ye3tcXV7Kt8eAjJwILq1oy153+JBA9GgMuPTlrYMSEtyqqqqVTjqrHhH+ARxaWYQjjrL8xU+ORFJ1zcm4ajlZQ9pW9+1mJM3+q6SBOSqfXqfvJiFo9bYY5uqsnglMshQqmo9g0kpHe/fQ0URtqoqcbf9aEvez9PBzeT8ageb/kJ01NQc+Fsm6X1/Wh6QNvQUSi80GUdry6eL+ARKL/66oeUzhlVsmJGMXXqRafOrnXgfiWOZ4RY3iV/d0UbVDMkt7rGC6Fl6QZNlN+Go533DwZZeEGTMOFrbbFkNSiGWXqCnHsJRZ8UTpe2BaCQRCcmvdrC82OLwVBXeADOO1jZhd2lopRdpc6naIe//SJ/UnAq3X+kFsck42hv7m8qvYNTSi2Fp+QyJqBYtRkrNfXMqLlRWz5CCUFXEoXDU2vxpQ0PApVS/MO/SimhLx0/NJahTfrWD5dO7uG/f7Vt6EZPOGUdr4zMkyDMNV3qR0T4ZR2tjt7jbkpgbEUk3f3zS8oBExxOReFsMJBy1Nv1o/Uo7DBd1acwIO8g4Wtv8ad2CiwyNuUcdQ+wk42ht+WSTjVB6Mbhw1PJWMyT5xR3HXeelF9hRfrWDlQEpTfa4XlRV+jwabcQDUuoEF1p6kfoRjnreTzCui9KLD0/CUWvT7yWCn9ILSj4c51c7WBmQqJfUHF3/9iaTW6yIFtSDqqKbYTKO1pZPV/HQuGgE4aizCXvohgvvu3g1DYW2NPbPsu+KyAQqvXCxMO/S2I9ycN63QNelF+njuOG2aey/RkLJ2fouGT7jaG2zG9SO21lEYmcL8y6teKFwXHhqDmMf+dUOVrxLw2lLag5cepFmvjKO1sb+EdelFwnq+I1OD5a/00QORD1LL9IAZLLW2Ja6VVX0Psx+Wxu764irK73AvwPSUg0z4AoQYOkFXoT8ciO2xm5LL1Yh4+ZLcCACyoygcav6X6eqKuTGPHuLXePGT82hKoxJfjRfxnBcqIhsTIUm7Md4vIWYhRbvuykCqO/Wb9M8vcc3x3D5bPUwmqgsXidfjW3+hA+e2Vlqjq6PvgFY/NmQ+9FwZ//oe/007IYMk6uiKBLdd/6EYjwi7rc4XbI8n7Fv8VCpuRi9fMnm6bLsD+PixvT218c3FHfChaTmSJw9s1lRFLP6h3lGxk0oxl95ZkXfdVB6gbPNz9e3t5+b+gshd6Phzm9Jy1YZrkov0C6G7dZ370aTHvNb6r30IhRcT9+aO0ncYzFiU3oRBi7yVXqRjaeqyqHKe+nF2IEI1AIlkB5fIxsbVzyTl2/NnRmuqfTitHGtSy/G1szHzzR46UXQgch96UUYuFdVNT4u/0Fmk3nB9dJ385vNYrHituC25Ufb6lCcXOTwL31077vdSy9S+MicLzO8+85mabR6qKxSddXJSvXFBRy3HJm9l15YBKL8JjXuemGJ6730wg7XWCs6IC5IVZ0xLhq3MSNnuMjQmLtXXljMd/NlbHRnh9ux+KJP6YVFIFo2P265McXzToFIk5pzv+tFD1zJUz/c8FRVsLgWu170a8z+cB3temGHa9wmzGaomt+m3ne96BaI9iJWXtmxDkThpuZCkxlX3HPG9dZ30ch9V0Qm210vbAPRQbsQcbc62SEQYe+7XgQhMwQZLO5qcS9CVZ07rp/U3LL53RD591U64lqm5sClF40dJojVfLdtrwrcITXnfdeLjtkMhadq/wz7uKsLaS5KL85KZlwqrsWuF6eDK0B67HphNVRlh3tVENVeFbZD1W5O7m3Xi56BSA4ffgLRhcmMK+45447Rd+l4fVdNAnFFT3F6v2+nFykzrrhniAvpu25mRCpPPfuun10vLEovxKKJ8IQP3ZeHdosmxPuuF0Gv715Tc5eIe6wgBiq98J+aG7X0osQ17lVhOVSFXHpxXd+9qqpxcR2WXgBwE8+4Q5ZeHOOqCyZsRubASy9AqbmnwFNzWzBu8QmQGb/gPyI0fRxBVcVT6Ptg92bc7C/8l1TZopkxHxo3i2+BnXcyJ2ZcAm8s87e0K273vpvF5AXW/qqf4DGl5lL8Cf30+Mv1XnpRTjQXM8DvwEzq/b/N+2dksB99ztk2HmfXC7r5YLO81QpWPPA2ZSy94OHjk83bveX5nP1eqDwNXnpRR8vF7fKmtiW3xuHrfWaxTdem8qb2VB8932Glp8FFpHjI6pv3deOovjSf7U/u/gzGjWm7p7KHu9jkQ5VNMe96kSj231V5SoUnNa7KkzIvo/c0eOnFKVqP0gv544Y3AWVqDvTiwBvSui+92D+kcbLTeEiApwTmyaeqGhIX6KknrkXphfyQdo3ZHlfrySbPbBAnLQUTQOkF8GQqmNALJo+lF9qd0dv2JNan5kAbOIa0Ie3XyWY7VXpSyQy1OIB48qiqLhu3GVJDw/XWd9HIfbd6W51KL1QftzE1KD5uufTC1pPv0osgZIaqxQ+zvhsE7lVEDpaai9tGoZbxTLm+606LDFN6AVoE1i+4DuJpwNILqtq72ygiwZ6Mgchz6cVVVZ2KqlI9pKn0Qo2LVLiAQReemrPHFRf1KL34umhf+5AZPbWVXhx4IntPytsfePJYetEzEIHksPNAdGEy44p7xT0X3P8DvWPV8WBFg8AAAAAASUVORK5CYII="
          type="image/x-icon"/>
    <link rel="stylesheet" href="<c:url value='/template/web/css/base.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/web/css/main.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/grid.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/reponsive.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/web/css/dividePage.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/font/themify-icons/themify-icons.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/admin/css/admin.css'/>">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">

    <jsp:useBean id="bill" scope="request" type="vn.edu.hcmuaf.fit.model.BillModel"/>
    <jsp:useBean id="user" scope="request" type="vn.edu.hcmuaf.fit.model.UserModel"/>
    <% List<HouseModel> listHouse = (List<HouseModel>) request.getAttribute("listHouse");
        AdminModel currentAdmin = (AdminModel) request.getAttribute("adminCurrent");
        List<CommentModel> listComment = (List<CommentModel>) request.getAttribute("listComment");
        //       System.out.println("listHouse: "+ listHouse.size());
//        for (HouseModel h : listHouse){
//            System.out.println("total: "+h.getTotalDayOrder());
//        }
    %>


</head>
<body>
<!-- NAVBAR -->
<div class="side-bar">
    <div class="logo">
        <img src="https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Ficon%2Flogo.png?alt=media&token=ab14d91d-f063-417b-9e61-528f1b8c4018"
             alt="">
    </div>
    <div class="admin-info">
        <img src="https://image-us.24h.com.vn/upload/1-2021/images/2021-03-18/gia-nhap-duong-dua-bikini-tieu-thu-ha-noi-chiem-tron-song-bb9-5639403-1616037657-573-width800height999.jpg"
             alt="">
        <h3>${adminCurrent.name}</h3>
        <div class="admin-info-icon">
            <i class="ti-user"></i>
            <i class="ti-email"></i>
            <i class="ti-github"></i>
            <i class="ti-facebook"></i>
        </div>
    </div>
    <ul class="nav-link">
        <li>
            <a href="#">
                <i class="ti-layout-media-overlay"><span>Quản Lí</span></i>
            </a>
        </li>
        <li>
            <a href="#booking">
                <i class="ti-direction-alt"><span>Đặt Chỗ</span></i>
            </a>
        </li>
        <li>
            <a href="#user">
                <i class="ti-user"><span>Người Dùng</span></i>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="ti-comment"><span>Tương Tác</span></i>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="ti-shift-left"><span>Đăng Xuất</span></i>
            </a>
        </li>

    </ul>
</div>


<!-- HOME CONTENT -->
<div class="home-content">
    <nav>
        <div class="side-bar-button">
            <i class="ti-layout-menu-v side-btn"></i>
        </div>
        <div class="search-admin">
            <input type="text" placeholder="Tìm Kiếm..." name="" id="">
            <i class="ti-search"></i>
        </div>
        <div class="profile-admin">
            <div class="profile-admin-icon">
                <i class="ti-bell"></i>
                <i class="ti-email"></i>
            </div>
            <div class="profile-admin-info">
                <span></span>
                <i class="ti-angle-down"></i>
            </div>
            <div class="profile-admin-icon">
                <i class="ti-settings"></i>
            </div>
        </div>
    </nav>
    <div class="home-main">
        <h2>Chi Tiết</h2>
        <div class="home-main-info">
            <div class="box" style="background-color: #fd79a8;">
                <div class="box-icon">
                    <i class="ti-layers-alt"></i>
                </div>
                <div class="box-info">
                    <span>Order</span>
                    <span style="font-size: 3rem;">${bill.totalBill}</span>
                    <span><i class="ti-arrow-up"></i>60%</span>
                </div>
            </div>
            <div class="box" style="background-color: #a29bfe;">
                <div class="box-icon">
                    <i class="ti-shopping-cart"></i>
                </div>
                <div class="box-info">
                    <span>User</span>
                    <span style="font-size: 3rem;">${user.totalUser}</span>
                    <span><i class="ti-arrow-up"></i>30% </span>
                </div>
            </div>
            <div class="box" style="background-color: #fab1a0;">
                <div class="box-icon">
                    <i class="ti-eye"></i>
                </div>
                <div class="box-info">
                    <span>House</span>
                    <span style="font-size: 3rem;"> ${user.totalUser}</span>
                    <span><i class="ti-arrow-up"></i>20%</span>
                </div>
            </div>
            <div class="box" style="background-color : #55efc4;">
                <div class="box-icon">
                    <i class="ti-money"></i>
                </div>
                <div class="box-info">
                    <span>Maintenance</span>
                    <span style="font-size: 3rem;">280</span>
                    <span><i class="ti-arrow-up"></i>10%</span>
                </div>
            </div>
        </div>
        <div class="booking" id="booking">
            <h3 class="booking-title">Chi Tiết Đặt Chỗ</h3>
            <table>
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Khách hàng</th>
                    <th>Ngày Nhận</th>
                    <th>Ngày Trả</th>
                    <th>Nhà đặt</th>
                    <th>Thời gian đặt</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <%! int index = 1; %>
                <c:forEach var="bill_item" items="${bill.listNewBill}">
                    <tr>
                        <td><%= index++ %>
                        </td>
                        <td>${bill_item.user.fullName}</td>
                        <td>${bill_item.time_Checkin}</td>
                        <td>${bill_item.time_Checkout}</td>
                        <td>${bill_item.house.name}</td>
                        <td>${bill_item.time_Order}</td>
                        <td>
                            <i class="ti-pencil" style="background-color: #dfe6e9;"></i>
                            <i class="ti-trash" style="background-color: #ff7675;"></i>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="booking-list">
            <div class="booking booking-home">
                <h3 class="booking-title">Danh sách Các Ngôi Nhà</h3>
                <table>
                    <thead>
                    <tr>
                        <th>STT</th>
                        <th>Tên</th>
                        <th>Tổng số ngày được thuê</th>
                        <th>Đánh giá(<i class="fas fa-star" style="color: #ff7675;"></i>)</th>
                        <th>Chỉnh Sửa</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="house_item" items="<%=listHouse%>">
                        <tr>
                            <td>1</td>
                            <td>${house_item.name}</td>
                            <td>
                                <p>${house_item.totalDayOrder}</p>
                            </td>
                            <td>${house_item.star}</td>
                            <td>
                                <i class="ti-pencil" style="background-color: #dfe6e9;"></i>
                                <i class="ti-trash" style="background-color: #ff7675;"></i>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="booking booking-home booking-coment" id="user">
                <h3 class="booking-title">Đánh giá của khách hàng</h3>
                <table>
                    <tbody>

                    <% for (CommentModel cmt : listComment) {%>
                    <tr>
                        <td><img src="<%= cmt.getUser().getAvatar()%>" alt=""></td>
                        <td class="booking-user-cmt">
                            <span style="font-weight: bold;"><%= cmt.getUser().getFullName()%></span>
                            <span><%= cmt.getComment()%></span></td>

                        <td>

                            <% for (int i = 0; i < cmt.getStar(); i++) {%>
                                <i class="fas fa-star" style="color: #ff7675;"></i>
                            <%}%>
                            <% for (int i = 0; i < 5 - cmt.getStar(); i++) {%>
                                <i class="far fa-star" style="color: #ff7675;"></i>
                            <%}%>

                        </td>
                    </tr>
                    <% }%>
                    </tbody>
                </table>
            </div>
        </div>

    </div>

</div>
<script src="./assets/js/appfunction.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</body>
</html>