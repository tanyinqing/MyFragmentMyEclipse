<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/11 0011
  Time: 下午 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script>
        function del() {
            return confirm("REMOVE??")
        }
    </script>
</head>
<body>
<c:if test="${sessionScope.user.username eq null}">
    <c:redirect url="index.jsp"/>
</c:if>


<h1>home page</h1>
${sessionScope.user.username}
<%--<p><a href="user?action=signOut">Sign out</a></p>--%>
<p><a href="user/signOut">Sign out</a></p>
<form action="book/create" method="post">
<%--<form action="/book" method="post">--%>
    <%--<input type="hidden" name="action" value="create">--%>
    <input type="hidden" name="userId" value="${sessionScope.user.id}">
    <input name="title" placeholder="Title" value="title1"><br>
    <input name="price" placeholder="Price" value="11.2"><br>
    <input name="amount" placeholder="Amount" value="100"><br>
    <input name="pubTime" placeholder="Publish time" value="2015-1-2"><br>
    <input type="submit" value="Create"><br>
</form>

<hr>
<form action="book/removeBooks" method="post" onsubmit="return del()">

<table border="1">
    <tr>
        <th><input type="checkbox"></th>
        <th>COUNT</th>
        <th>TITLE</th>
        <th>PRICE</th>
        <th>AMOUNT</th>
        <th>PUBLISH DATE</th>
        <th colspan="2">OPERATIONS</th>
    </tr>
    <c:forEach var="book" items="${sessionScope.books}" varStatus="vs">
        <tr>
            <td><input name="ids" type="checkbox" value="${book.id}"></td>
            <td>${vs.count}</td>
            <td>${book.title}</td>
            <td>${book.price}</td>
            <td>${book.amount}</td>
            <td>${book.pubTime}</td>
            <%--<td><a href="/book?action=queryById&id=${book.id}">EDIT</a></td>--%>
            <td><a href="book/queryById/${book.id}">EDIT</a></td>
            <td><a href="book/remove/${book.id}" onclick="return del()">REMOVE</a></td>
        </tr>
    </c:forEach>
</table>
<hr>
    <input type="submit" value="REMOVE SELECTED">
</form>
</body>
</html>
