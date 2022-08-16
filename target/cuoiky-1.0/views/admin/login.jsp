<%--
  Created by IntelliJ IDEA.
  User: lequo
  Date: 6/17/2022
  Time: 3:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login-admin</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" href="<c:url value='/template/admin/images/icons/favicon.ico'/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<c:url value='/template/admin/animate/animate.css'/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<c:url value='/template/admin/css-hamburgers/hamburgers.min.css'/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<c:url value='/template/admin/select2/select2.min.css'/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<c:url value='/template/admin/css/util.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/admin/css/login.css'/>">
    <!--===============================================================================================-->

    <% String msg =(String)  request.getAttribute("msg");
        System.out.println("msg"+ msg);
    %>
</head>
<body>

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt>
                <img src="<c:url value='/template/admin/images/img-01.png'/>" alt="IMG">
            </div>

            <form class="login100-form validate-form" id="form-login" action="LoginAdminServlet" method="post">
					<span class="login100-form-title">
						Admin Login
					</span>

                <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                    <input class="input100" type="text" name="email" placeholder="Email">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Password is required">
                    <input class="input100" type="password" name="password" placeholder="Password" id="password">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                </div>
                <%if (msg != null) {%>
                <div style="display: flex;justify-content:center;" id="mess-err">
                    <p style="color: red; font-family: 'Roboto', sans-serif;">Email or Password is incorrect</p>
                </div>
                <%}%>
                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" id="btn-login">
                        Login
                    </button>
                </div>

                <div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
                    <a class="txt2" href="#">
                        Username / Password?
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>


<!--===============================================================================================-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!--===============================================================================================-->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<!--===============================================================================================-->
<script src="<c:url value='/template/admin/tilt/tilt.jquery.min.js'/>"></script>
<script>
    // $('.js-tilt').tilt({
    //     scale: 1.1
    // })
</script>
<!--===============================================================================================-->
<script src="<c:url value='/template/admin/js/login.js'/>"></script>
</body>
</html>
