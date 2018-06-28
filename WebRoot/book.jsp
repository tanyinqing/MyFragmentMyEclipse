<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-05-23
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>book page</title>
</head>
<body>
<h1>book page</h1>
<h3>${sessionScope.book.user.username}</h3>
<hr>
${sessionScope.book.title}<br>
${sessionScope.book.price}<br>
${sessionScope.book.amount}<br>
${sessionScope.book.pubTime}<br>
</body>
</html>
