<%--
  Created by IntelliJ IDEA.
  User: Luke
  Date: 2020/4/14
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
    <base href="<%=basePath%>">
</head>
<body>
    <table border="1">
        <tr>
            <td>序号</td>
            <td>学号</td>
            <td>学生姓名</td>
            <td>所学专业</td>
        </tr>
        <c:forEach var="stu" items="${stuList}">
            <tr>
                <td>${stu.stuId}</td>
                <td>${stu.stuNo}</td>
                <td>${stu.stuName}</td>
                <td>${stu.stuMajor}</td>
            </tr>

        </c:forEach>

    </table>

</body>
</html>
