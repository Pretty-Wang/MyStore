<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My JSP 'mgs.jsp' starting page</title>
<style type="text/css">
	body {background: rgb(188,230,114);}
</style>
</head>
<body>
	<h2>${msg }</h2>
	<ul>
	<c:forEach items="${links }" var="link">
		<li>${link }</li>
	</c:forEach>
	</ul>
</body>
</html>