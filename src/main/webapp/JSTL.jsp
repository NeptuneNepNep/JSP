<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.example.pojo.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2022/6/29
  Time: 21:59
  To change this template use File | Settings | File Templates.
  首先引库
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <!-- 首先下载导入依赖jar包-->

</head>
<body>
<% request.setAttribute("num",10);
    java.util.List<String> list = new ArrayList<>();
    list.add("aaa");
    list.add("bbb");
    list.add("ccc");
    request.setAttribute("list",list);
    Map map = new HashMap<>();
    map.put("aaa",111);
    map.put("bbb",222);
    map.put("ccc",333);
    request.setAttribute("map",map);
    User u1 = new User(1,"2","3");
    User u2 = new User(2,"2","3");
    User u3 = new User(3,"2","3");
    List<User> ul= new ArrayList<>();
    ul.add(u1);
    ul.add(u2);
    ul.add(u3);
    request.setAttribute("ul",ul);
%>
<c:if test="${!empty num}">
你好
</c:if>
<c:if test="${num>100}" var="flag" scope="request">
   ${flag}
    <%out.write(request.getParameter("num"));%>

</c:if>
${flag}
<c:choose>
    <c:when test="${num<1}">0</c:when>
    <c:when test="${num>1&&num<12}">01</c:when>
    <c:otherwise>?</c:otherwise>

</c:choose>
<c:forEach var="i" begin="2" end="10" step="2">
    ${i}
</c:forEach>
<c:forEach items="${list}" var="str">
    ${str}

</c:forEach>
<c:forEach items="${map}" var="var">
    ${var.key}--${var.value}

</c:forEach>
<c:forEach items="${ul}" var="user">
   <table border="1">
    <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>密码</th>

    </tr>
    <tr>
        <td>${user.userId}</td>
        <td>${user.uname}</td>
        <td>${user.upwd}</td>

    </tr>
   </table>
</c:forEach>
</body>
</html>
