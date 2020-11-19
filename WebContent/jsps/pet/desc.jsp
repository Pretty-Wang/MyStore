<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>宠物详情</title>
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/pager/pager.css'/>" />
    <script type="text/javascript" src="<c:url value='/jsps/pager/pager.js'/>"></script>
	<script src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/pet/desc.css'/>">
	<script src="<c:url value='/jsps/js/pet/desc.js'/>"></script>
</head>
<body>
<div class="divPetkName">${pet.bname }</div>
  <div>
    <img align="top" src="<c:url value='/${pet.image_w }'/>" class="img_image_w"/>
    <div class="divPetDesc">
	    <ul>
	    	<li>商品编号：${pet.bid }</li>
	    	<li>当前价格：<span class="price_n">&yen;${pet.currPrice }</span></li>
	    	<li>折扣：<span style="color: #c30;">${pet.discount }</span>折</li>
	    </ul>
		<hr class="hr1"/>
		<div class="divForm">
			<form id="form1" action="<c:url value='/CartItemServlet'/>" method="post">
				<input type="hidden" name="method" value="add"/>
				<input type="hidden" name="bid" value="${pet.bid }"/>
  				我要买：<input id="cnt" style="width: 40px;text-align: center;" type="text" name="quantity" value="1"/>件
  			</form>
  			<a id="btn" href="javascript:$('#form1').submit();"></a>
  		</div>
	</div>
  </div>
</body>
</html>