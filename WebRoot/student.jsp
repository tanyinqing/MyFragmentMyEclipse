<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-06-03
  Time: 09:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>student page</title>
</head>
<body>
<h1>student</h1>
<p>${sessionScope.student.name}</p>
<c:choose>
    <c:when test="${fn:length(sessionScope.student.courses) eq 0}">
        未选课
    </c:when>
    <c:otherwise>
        <ul>
            <c:forEach var="course" items="${sessionScope.student.courses}">
                <li>${course.title}</li>
            </c:forEach>
        </ul>
    </c:otherwise>
</c:choose>

</body>
</html>
