<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>top</title>
<style type="text/css">
	body {
		background: #ffc001;
		margin: 0px;
		color: #000000;
	}
	a {
		text-decoration:none;
		color: #000000;
		font-weight: 900;
	} 
	a:hover {
		text-decoration: underline;
		color: #000000;
		font-weight: 900;
	}
</style>
</head>
<body>
	<h1 style="text-align: center;">天&nbsp;&nbsp;然&nbsp;&nbsp;宠&nbsp;&nbsp;物&nbsp;&nbsp;商&nbsp;&nbsp;城</h1>
	<div style="font-size: 10pt; line-height: 10px;">
		<!-- 根据用户是否登录，显示不同的链接 -->
		<c:choose>
			<c:when test="${empty sessionScope.sessionUser }">
				<a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">登录</a> |&nbsp; 
		  <a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">注册</a>
			</c:when>
			<c:otherwise>
		      会员中心：${sessionScope.sessionUser.loginname }&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/CartItemServlet?method=myCart'/>" target="body">我的购物车</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/OrderServlet?method=myOrders'/>" target="body">我的订单</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/jsps/user/pwd.jsp'/>" target="body">修改密码</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/UserServlet?method=quit'/>" target="_parent">退出</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="#" target="_top">联系我们</a>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>