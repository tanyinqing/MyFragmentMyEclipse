<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-05-23
  Time: 23:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>books page</title>
</head>
<body>
<h1>books page</h1>
<hr>
<table border="1">
    <tr>
        <th>COUNT</th>
        <th>TITLE</th>
        <th>PRICE</th>
        <th>AMOUNT</th>
        <th>PUBLISH TIME</th>
    </tr>
    <c:forEach var="book" items="${sessionScope.books}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td><a href="/book/queryUserByBookId/${book.id}">${book.title}</a></td>
            <td>${book.price}</td>
            <td>${book.amount}</td>
            <td>${book.pubTime}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
