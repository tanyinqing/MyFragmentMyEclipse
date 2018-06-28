<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/10 0010
  Time: 上午 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Sign up page</h1>
<%--<form action="signUp.jsp" method="post">--%>
<%--<form action="/user" method="post">--%>
<form action="user/signUp" method="post" enctype="multipart/form-data">
    <%--<input type="hidden" name="action" value="signUp">--%>
    <%--name属性必须和模型类匹配--%>
    <input name="username" placeholder="username" value="tan"> <br>
    <input type="password" name="password" placeholder="Passsword" value="123"><br>
    <input type="file" name="avatarFile"><br>
    <input type="submit" value="Sign up">
</form>
${requestScope.message}
</body>
</html>
