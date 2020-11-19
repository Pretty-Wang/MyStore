<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>宠物管理</title>
	<link rel="stylesheet" type="text/css" href="<c:url value='/adminjsps/admin/css/pet/main.css'/>">
</head>
<body>
	<table class="table" align="center" width="1200px" height="600px" border="0">
		<tr style="height: 120px;">
			<td align="center" width="200px;">
				<iframe frameborder="0" src="<c:url value='/AdminPetServlet?method=findCategoryAll'/>" name="left"></iframe>
			</td>
			<td>
				<iframe frameborder="0" src="<c:url value='/adminjsps/admin/pet/body.jsp'/>" name="body"></iframe>
			</td>
		</tr>
	</table>
</body>
</html>