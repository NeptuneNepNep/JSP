<%@ page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.example.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2022/6/29
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //List
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
    User user = new User(1,"zhangsan","123456");
    request.setAttribute("user",user);
%>
<h4>getlist</h4>
<h5>
    ${list.size()}<br>
    获取指定下标
        ${list.get(1)}<br>
    遍历
    ${list[2]}
    <h4>获取map</h4>
    ${map["aaa"]}<br>
    ${map.get("bbb")}
        <!--不存在的和空的会fanhuitrue-->
        ${empty s}
    ${empty map}
</h5>
<h3>javaBean对象</h3>
<!--可以使用get或者直接属性名-->
<%
    out.write(user.getUserId());
%>
<h5>获取属性(给了get就可以直接点型调用):${
user.uname

}</h5>


</body>
</html>
