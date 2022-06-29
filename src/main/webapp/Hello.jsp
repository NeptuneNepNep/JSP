<%@ page import="jdk.nashorn.internal.ir.RuntimeNode" %><%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2022/6/29
  Time: 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>你好 <%
        System.out.println(request);
        String name = request.getParameter("uname");

        out.write(name);%></h1>
</body>
</html>
