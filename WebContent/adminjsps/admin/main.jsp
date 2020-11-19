<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>后台主页</title>
	<link rel="stylesheet" type="text/css" href="<c:url value='/adminjsps/admin/css/main.css'/>">
</head>
<body>
	<table class="table" align="center">
		<tr>
			<td colspan="2" align="center" height="100px;">
				<iframe frameborder="0" src="<c:url value='/adminjsps/admin/top.jsp'/>" name="top"></iframe>
			</td>
		</tr>
		<tr>
			<td>
				<img id="welcome" src="../../images/welcome.jpg" />
			</td>
		</tr>
	</table>
</body>
</html>