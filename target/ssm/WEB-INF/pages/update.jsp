<%--
  Created by IntelliJ IDEA.
  User: Luke
  Date: 2020/4/17
  Time: 8:21
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
    <title>Goods update</title>
    <base href="<%=basePath%>">
    <style type="text/css">
        .formFieldError {
            background-color: indianred;
        }
    </style>
</head>
<body style="text-align: center">
<h2>商品更新界面</h2>
<mvc:form modelAttribute="goods" action="goods/handleUpdate" method="post">
    <table align="center">
        <tr>
<%--            <td><mvc:label path="goodId" >商品编号</mvc:label></td>--%>
            <td><mvc:hidden path="goodId" autocomplete="off" cssErrorClass="formFieldError"/></td>
<%--            <td><mvc:errors path="goodId"/></td>--%>
        </tr>
        <tr>
            <td><mvc:label path="goodName" >商品名称</mvc:label></td>
            <td><mvc:input path="goodName" autocomplete="off" cssErrorClass="formFieldError"/></td>
            <td><mvc:errors path="goodName"/> </td>
        </tr>
        <tr>
            <td><mvc:label path="goodUnit" >单位</mvc:label></td>
            <td><mvc:input path="goodUnit" autocomplete="off" cssErrorClass="formFieldError"/></td>
            <td><mvc:errors path="goodUnit"/> </td>
        </tr>
        <tr>
            <td><mvc:label path="goodPrice" >商品价格</mvc:label></td>
            <td><mvc:input path="goodPrice" autocomplete="off" cssErrorClass="formFieldError"/></td>
            <td><mvc:errors path="goodPrice"/> </td>
        </tr>
        <tr>
            <td><mvc:label path="goodStock" >商品库存</mvc:label></td>
            <td><mvc:input path="goodStock" autocomplete="off" cssErrorClass="formFieldError"/></td>
            <td><mvc:errors path="goodStock"/> </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <input type="submit" value="修改" />&nbsp;&nbsp;
                <a href="goods/main">返回主界面</a>
            </td>
        </tr>
    </table>

</mvc:form>
</body>
</html>
