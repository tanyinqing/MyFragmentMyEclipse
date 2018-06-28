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
    <title>user address page</title>
</head>
<body>
<h1>user address</h1>
${sessionScope.user.username} -> ${sessionScope.user.address.detail}
</body>
</html>
