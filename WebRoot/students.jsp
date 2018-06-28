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
    <title>students page</title>
</head>
<body>
<h1>students</h1>
<ul>
    <c:forEach var="student" items="${sessionScope.students}">
        <li><a href="student/studentCourses/${student.id}">${student.name}</a></li>
        <li><a href="student/studentCoursesJson/${student.id}">${student.name} 返回json数据</a></li>
    </c:forEach>
</ul>
</body>
</html>
