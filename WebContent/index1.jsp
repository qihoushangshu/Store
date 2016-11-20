<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/28
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="${pageContext.request.contextPath}/UserServlet" method="post">
    name:<input type="text" name="name"><br/>
    <input type="hidden" name="flag" value="add"><br/>
    <input type="submit">
  </form>
  <form action="AddServlet" method="post">
    name:<input type="text" name="name"><br/>
    <input type="hidden" name="flag" value="search"><br/>
    <input type="submit">
  </form>
  <form action="AddServlet" method="post">
    name:<input type="text" name="name"><br/>
    <input type="hidden" name="flag" value="delete"><br/>
    <input type="submit">
  </form>
  </body>
</html>
