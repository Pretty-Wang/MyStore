<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询</title>
<style type="text/css">
	body {
		margin-top: 5px;
		margin-bottom: 0px;
		margin-left:200px;
		color: #404040;
	}
	input {
		width: 300px;
		height: 30px;
		border-style:solid;
		margin:0px;
		border-color: #ffc001;
	}
	a {
		text-transform:none;
		text-decoration:none;
		border-width: 0px;
	} 
	a:hover {
		text-decoration:underline;
		border-width: 0px;
	}
	span {
		margin: 0px;
	}
</style>
</head>
<body>
	<form action="<c:url value='/PetServlet'/>" method="get" target="body" id="form1">
		<input type="hidden" name="method" value="findByBname" />
		<input type="text" name="bname" />
		<span>
			<a href="javascript:document.getElementById('form1').submit();">
				<img align="top" border="0" src="../images/btn.bmp" />
			</a>
		</span>
	</form>
</body>
</html>