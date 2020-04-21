<%--
  Created by IntelliJ IDEA.
  User: Luke
  Date: 2020/4/17
  Time: 8:20
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
    <title>Goods main</title>
    <base href="<%=basePath%>">
    <script src="<%=basePath%>js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#insert").click(function () {
                $("#goodsForm").attr("action", "goods/insert");
                $("#goodsForm").attr("method", "post");
                $("#goodsForm").submit();
            });
            $("#query").click(function () {
                $("#goodsForm").attr("action", "goods/handleQuery");
                $("#goodsForm").attr("method", "post");
                $("#goodsForm").submit();
            });

        })
    </script>
</head>
<body style="text-align: center">
<h2>商品主界面</h2>
<hr>
<form id="goodsForm" action="" method="">
    <table border="0" align="center">
        <tr>
            <td><button id="insert" value="新增" onclick="insertGoods()">新增</button></td>
            <td><button id="query" value="查询" onclick="queryGoods()">查询</button></td>
        </tr>


    </table>

</form>
<hr>
<c:if test="${!empty(goodsList)}">
    <table border="1" align="center">
        <tr>
            <td>商品序号</td>
            <td>商品名称</td>
            <td>商品单位</td>
            <td>商品单价</td>
            <td>商品库存</td>
            <td>操作</td>


        </tr>
        <c:forEach var="good" items="${goodsList}">
            <tr>
                <td>${good.goodId}</td>
                <td>${good.goodName}</td>
                <td>${good.goodUnit}</td>
                <td>${good.goodPrice}</td>
                <td>${good.goodStock}</td>
                <td>
                    <a href="goods/delete?id=${good.goodId}" onclick="return confirm('确认要删除商品记录吗?')">删除</a>&nbsp;&nbsp;
                    <a href="goods/updates?id=${good.goodId}">修改</a>
                </td>
            </tr>

        </c:forEach>

    </table>
</c:if>
</body>
</html>
