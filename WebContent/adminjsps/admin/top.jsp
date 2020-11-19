<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>top</title>
    <base target="body">
    <style type="text/css">
	body {font-size: 10pt;}
	a {color: #000000;}
	</style>
</head>
<body style="background: rgb(255, 193, 1);color: #000000;">
	<h1 style="text-align: center; line-height: 30px;">天然宠物商城后台管理</h1>
	<div style="line-height: 10px;">
		<span>管理员：${sessionScope.admin.adminname }</span>
		<a target="_top" href="<c:url value='/adminjsps/login.jsp'/>">退出</a>
		<span style="padding-left:50px;">
			<a href="<c:url value='/AdminCategoryServlet?method=findAll'/>">分类管理</a>
			<a href="<c:url value='/adminjsps/admin/pet/main.jsp'/>">宠物管理</a>
			<a href="<c:url value='/AdminOrderServlet?method=findAll'/>">订单管理</a>
		</span>
	</div>
</body>
</html>