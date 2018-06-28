<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-05-25
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>address user page</title>
</head>
<body>
<h1>address user</h1>
${sessionScope.address.id} : ${sessionScope.address.detail} -> ${sessionScope.address.user.id} ：${sessionScope.address.user.username}
</body>
</html>
