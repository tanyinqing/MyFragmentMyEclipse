<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/9 0009
  Time: 下午 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="user/signIn" method="post">
  <%--<form action="/user/" method="post">--%>
    <%--<input type="hidden" name="action" value="signIn">--%>
    <input name="username" placeholder="Username" value="tan"><br>
    <input type="password" name="password" placeholder="Password" value="123"><br>
    <input type="submit" value="Sign in">
  </form><%--<form action="/user" method="post">
    <input type="hidden" name="action" value="signIn">
    <input name="username" placeholder="Username" value="tan"><br>
    <input type="password" name="password" placeholder="Password" value="123"><br>
    <input type="submit" value="Sign in">
  </form>--%>
  ${requestScope.message}
  <p>
    <a href="sign_up.jsp">Sign up</a>
  </p>
  <hr>
  <p><a href="user/queryAll">列出所有的用户，并查处他对应的图书</a></p>
  <p><a href="user/queryAllUsers">同时列出所有的用户，和对应的所有图书</a></p>
  <p><a href="book/queryAllBooks">查询所有图书</a></p>
  <p><a href="user/toCreateAddress">添加地址</a></p>

  <p><a href="user/queryAll1">列出所有的用户</a></p>
  <p><a href="address/queryAll">列出所有的地址</a></p>

  <hr>
  <p><a href="student/queryAll">列出所有的学生</a></p>
  <p><a href="student/queryAllJson">列出所有的学生 返回json数据</a></p>
  <p><a href="course/queryAll">列出所有的课程</a></p>
  </body>
</html>
