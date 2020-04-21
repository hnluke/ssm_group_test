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
<h2>Hello World!</h2><br/>
<a href="stu/query">显示学生列表</a>
</body>
</html>
