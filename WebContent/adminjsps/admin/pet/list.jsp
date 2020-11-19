<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>分类</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/adminjsps/admin/css/pet/list.css'/>">
<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/pager/pager.css'/>" />
<script type="text/javascript" src="<c:url value='/jsps/pager/pager.js'/>"></script>

<script type="text/javascript" src="<c:url value='/adminjsps/admin/js/pet/list.js'/>"></script>
</head>
<body>
<div class="divPet">
<ul>


<c:forEach items="${pb.beanList }" var="pet">
 <li>
  <div class="inner">
    <a class="pic" href="<c:url value='AdminPetServlet?method=load&bid=${pet.bid }'/>"><img src="<c:url value='/${pet.image_b }'/>" border="0"/></a>
    <p class="price" >
		<span class="price_n">&yen;${pet.currPrice }</span>
		(<span class="price_s">${pet.discount }折</span>)
	</p>


	<p><a id="petname" title="${pet.bname }" href="<c:url value='/AdminPetServlet?method=load&bid=${pet.bid }'/>">${pet.bname }</a></p>
  </div>
 </li>
</c:forEach>
</ul>
</div>
<div style="float:left; width: 100%; text-align: center;">
	<hr/>
	<br/>
	<%@include file="/jsps/pager/pager.jsp" %>
</div>
  </body>
</body>
</html>