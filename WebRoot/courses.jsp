<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-05-25
  Time: 22:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>courses page</title>
</head>
<body>
<h1>courses</h1>
<ul>
    <c:forEach var="course" items="${sessionScope.courses}">
        <li><a href="course/courseStudents/${course.id}">${course.title}</a></li>
    </c:forEach>
</ul>
</body>
</html>
