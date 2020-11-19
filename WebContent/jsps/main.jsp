<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>天然宠物商城——主页</title>
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/main.css'/>">
</head>
<body>
	<table class="table" align="center">
		<tr class="trTop">
			<td colspan="2" class="tdTop">
				<iframe frameborder="0" src="<c:url value='/jsps/top.jsp'/>" name="top"></iframe>
			</td>
		</tr>
		<tr>
			<td class="tdLeft" rowspan="2">
				<iframe frameborder="0" src="<c:url value='/CategoryServlet?method=findAll'/>" name="left"></iframe>
			</td>
			<td class="tdSearch" style="border-bottom-width: 0px;">
				<iframe frameborder="0" src="<c:url value='/jsps/search.jsp'/>" name="search"></iframe>
			</td>
		</tr>
		<tr>
			<td style="border-top-width: 0px;">
				<iframe frameborder="0" src="<c:url value='/jsps/body.jsp'/>" name="body"></iframe>
			</td>
		</tr>
	</table>
</body>
</html>