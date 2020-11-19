<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改密码</title>

	<link rel="stylesheet" type="text/css" href="<c:url value='/css/css.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/user/pwd.css'/>">
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/jsps/js/user/pwd.js'/>"></script>
	<script src="<c:url value='/js/common.js'/>"></script>
</head>
<body>
	<div class="div0">
		<span id="spanTitle">修改密码</span>
	</div>

	<div class="div1">
		<form action="<c:url value='/UserServlet'/>" method="post" target="_top">
			<input type="hidden" name="method" value="updatePassword" />
			<table>
				<tr>
					<td>
						<label class="error">${msg }</label>
					</td>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td align="right">原密码:</td>
					<td>
						<input class="input" type="password" name="loginpass" id="loginpass" value="${user.loginpass }" />
					</td>
					<td>
						<label id="loginpassError" class="error"></label>
					</td>
				</tr>
				<tr>
					<td align="right">新密码:</td>
					<td>
						<input class="input" type="password" name="newpass" id="newpass" value="${user.newpass }" "/>
					</td>
					<td>
						<label id="newpassError" class="error"></label>
					</td>
				</tr>
				<tr>
					<td align="right">确认密码:</td>
					<td>
						<input class="input" type="password" name="reloginpass" id="reloginpass" value="${user.reloginpass }" "/>
					</td>
					<td>
						<label id="reloginpassError" class="error"></label>
					</td>
				</tr>
				<tr>
					<td align="right"></td>
					<td>
						<img id="vCode" src="<c:url value='/VerifyCodeServlet'/>" border="1" />
						<a href="javascript:_change();">看不清，换一张</a>
					</td>
				</tr>
				<tr>
					<td align="right">验证码:</td>
					<td>
						<input class="input" type="text" name="verifyCode" id="verifyCode" value="${user.verifyCode }" "/>
					</td>
					<td>
						<label id="verifyCodeError" class="error"></label>
					</td>
				</tr>
				<tr>
					<td align="right"></td>
					<td>
						<input id="submit" type="submit" value="修改密码" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>