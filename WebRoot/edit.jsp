<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/12 0012
  Time: 下午 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>edit page</h1>

<form action="book/update" method="post">
<%--<form action="/book" method="post">--%>
    <%--<input type="hidden" name="action" value="update">--%>
    <%--<input type="hidden" name="id" value="${sessionScope.book.id}">--%>
    <input type="hidden" name="id" value="${sessionScope.book.id}">
    <input name="title" placeholder="Title" value="${sessionScope.book.title}"><br>
    <input name="price" placeholder="Price" value="${sessionScope.book.price}"><br>
    <input name="amount" placeholder="Amount" value="${sessionScope.book.amount}"><br>
    <input name="pubTime" placeholder="Publish time" value="${sessionScope.book.pubTime}"><br>
    <input type="submit" value="Save"><br>
</form>

</body>
</html>
