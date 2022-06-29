<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2022/6/29
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="loginServlet" method="post">
    姓名:<input type="text" name="uname">
    密码:<input type="password" name="password">
    ${msg}
    <input type="submit" value="submit">
</form>
</body>
</html>
