<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员登录界面</title>
<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
<style type="text/css">
body {
	background:url(/MyStore/images/htbg.jpg) no-repeat;
	text-align:center;
	margin-top: 200px;
	margin-left: 520px;
	margin-right: 520px;
}
</style>
<script type="text/javascript">
	function checkForm() {
		if (!$("#adminname").val()) {
			alert("管理员名称不能为空！");
			return false;
		}
		if (!$("#adminpwd").val()) {
			alert("管理员密码不能为空！");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<h1>管理员登录页面</h1>
	<hr />
	<p style="font-weight: 900; color: red">${msg }</p>
	<form action="<c:url value='/AdminServlet'/>" method="post" onsubmit="return checkForm()" target="_top">
		<input type="hidden" name="method" value="login" />
		账 &nbsp;户：
		<input type="text" name="adminname" value="" id="adminname" />
		<br />
		<br />
		密 &nbsp;码：
		<input type="password" name="adminpwd" id="adminpwd" />
		<br />
		<br />
		<input type="submit" value="进入后台" />
	</form>
</body>
</html>