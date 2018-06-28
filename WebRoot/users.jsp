<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/22 0022
  Time: 下午 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>users page</title>
</head>
<body>
<h1>users page</h1>

<ul>
    <c:forEach var="user" items="${sessionScope.users}">
        <li><a href="user/queryBooksByUserId/${user.id}">${user.username}</a></li>
    </c:forEach>
</ul>
</body>
</html>
