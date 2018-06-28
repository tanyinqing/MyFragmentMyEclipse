<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/22 0022
  Time: 下午 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>user books page</h1>
<h3>${sessionScope.user.username}</h3>

<hr>
<table border="1">
    <tr>
        <th>COUNT</th>
        <th>TITLE</th>
        <th>PRICE</th>
        <th>AMOUNT</th>
        <th>PUBLISH TIME</th>
    </tr>
    <c:forEach var="book" items="${sessionScope.user.books}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${book.title}</td>
            <td>${book.price}</td>
            <td>${book.amount}</td>
            <td>${book.pubTime}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
