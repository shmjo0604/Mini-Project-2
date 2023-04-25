<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 등록 페이지</title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Permanent+Marker&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/menu5.css">
</head>

<body>
	<div>
		<div class="container">
			<div class="col-10">
				<div class="won">
					<h4>가격</h4>
					<input id="price" type="text" autofocus>
					<span style="font-size:22px; margin-left: 2px;">원</span>
				</div>
			</div>
		</div>
	<div class="btn_1">
		<a href="insert.do?menu=4" class="btn_before btn">이전</a> 
		<input class="btn_in btn" type="button" value="등록" onclick="insertClassAction()" />
	</div>
	</div>
</body>

<!--jQuery-->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script>
	
</script>
</html>