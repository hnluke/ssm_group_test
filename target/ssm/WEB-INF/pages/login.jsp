<%--
  Created by IntelliJ IDEA.
  User: Luke
  Date: 2020/4/17
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
    <base href="<%=basePath%>">
</head>
<body style="text-align: center">
<h2>商品管理系统</h2>
<mvc:form modelAttribute="users" action="goods/login">
    <table align="center">
        <tr>
            <td><mvc:label path="userName" >用户名</mvc:label></td>
            <td><mvc:input path="userName" autocomplete="off"/></td>
        </tr>
        <tr>
            <td><mvc:label path="userPwd" >密码</mvc:label></td>
            <td><mvc:password path="userPwd" autocomplete="off"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="登录" /> &nbsp;&nbsp;
            <input type="reset" value="复位" /></td>
        </tr>
    </table>

</mvc:form>


</body>
</html>
