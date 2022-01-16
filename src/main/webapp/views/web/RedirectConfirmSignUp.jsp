<%--
  Created by IntelliJ IDEA.
  User: lequo
  Date: 15/01/2022
  Time: 07:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<input type="text" id="data" name="email">
<script src="${pageContext.request.contextPath}../ClientGlobalContext.js.aspx" type="text/javascript" ></script>
<script>
    function getCurrentUserEmail() {
        var serverUrl;
        if (Xrm.Page.context.getClientUrl !== undefined) {
            serverUrl = Xrm.Page.context.getClientUrl();
        } else {
            serverUrl = Xrm.Page.context.getServerUrl();
        }
        var ODataPath = serverUrl + "/XRMServices/2011/OrganizationData.svc";
        var userRequest = new XMLHttpRequest();
        userRequest.open("GET", ODataPath + "/SystemUserSet(guid'" + Xrm.Page.context.getUserId() + "')", false);
        userRequest.setRequestHeader("Accept", "application/json");
        userRequest.setRequestHeader("Content-Type", "application/json; charset=utf-8");
        userRequest.send();
        if (userRequest.status === 200) {
            var retrievedUser = JSON.parse(userRequest.responseText).d;
            var userEmail = retrievedUser.InternalEMailAddress;
            console.log(userEmail)
            return userEmail;
        }
        else {
            console.log("error")
            return "error";
        }
    }
</script>
</body>
</html>
