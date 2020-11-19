<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>body</title>
</head>
<body>
<h1 align="center">宠物管理</h1>
	<p align="center">
		<a href="<c:url value='/AdminPetServlet?method=addPre'/>" style="margin: 20px; font-size: 20px;">添加宠物</a>
	</p>
</body>
</html>