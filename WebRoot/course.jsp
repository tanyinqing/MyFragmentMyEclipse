<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-06-03
  Time: 09:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>course page</title>
</head>
<body>
<h1>course</h1>
<p>${sessionScope.course.title}</p>
<ul>
    <c:forEach var="student" items="${sessionScope.course.students}">
        <li>${student.name}</li>
    </c:forEach>
</ul>
</body>
</html>