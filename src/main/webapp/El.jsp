<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2022/6/29
  Time: 17:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% pageContext.setAttribute("uname","zhangsan");
    request.setAttribute("uname","zhang4");
    session.setAttribute("uname","zhang5");
    application.setAttribute("uname","zhang6");


%>
${uname}
${sessionScope.uname}
</body>
</html>
