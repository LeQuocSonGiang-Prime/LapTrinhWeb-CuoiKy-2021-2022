<%--
  Created by IntelliJ IDEA.
  User: lequo
  Date: 8/10/2022
  Time: 1:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <form action="admin-addHouse" method="post">
        <div>
            <label for="name-house">name</label>
            <input type="text" name="name-house" id="name-house">
        </div>

        <div>
            <label for="type-house">type</label>
            <input type="text" name="type-house" id="type-house">
        </div>

        <div>
            <label for="tutorial-house">tutorial</label>
            <input type="text" name="tutorial-house" id="tutorial-house">
        </div>

        <div>
            <label for="address-house">add</label>
            <input type="text" name="add-house" id="address-house">
        </div>

        <div>
            <label for="detail-house">detail</label>
            <input type="text" name="detail-house" id="detail-house">
        </div>

        <div>
            <label for="foryou-house">for you</label>
            <input type="text" name="foryou-house" id="foryou-house">
        </div>

        <div>
            <label for="price-house">price</label>
            <input type="text" name="price-house" id="price-house">
        </div>
        <button>Thêm ngôi nhà</button>
    </form>
</div>

<script src="<c:url value='/template/web/js/appfunction.js' />"></script>
</body>
</html>
