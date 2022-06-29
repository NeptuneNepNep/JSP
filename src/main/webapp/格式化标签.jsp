<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2022/6/29
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%request.setAttribute("time",new Date());%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--value要格式化的数值 type格式化类型 number percent current-->
<fmt:formatNumber value="10" type="number" var="num"/>${num}
<fmt:formatNumber value="10" type="percent" var="pre"/>${pre}
<fmt:formatDate value="${time}" type="date" var="d"/>${d}<br>
<fmt:formatDate value="${time}" type="time" var="t"/>${t}<br>
<fmt:formatDate value="${time}" type="both" var="b"/>${b}<br>
<fmt:formatDate value="${time}" pattern="yyyy年MM月dd日" var="p"/>${p}<br>

<fmt:parseNumber value="100%" type="percent" var="per"/>${per}<br>
<fmt:parseNumber value="￥100" type="currency" var="c"/>${c}<br>
<fmt:parseDate value="${d}" type="date" var="pd"/>${pd}

</body>
</html>
