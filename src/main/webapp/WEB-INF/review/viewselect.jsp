<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset='utf-8'>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<title>Review</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Permanent+Marker&display=swap"
	rel="stylesheet">
<!-- sources -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reviewlist.css" />
</head>

<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	<hr />
	<div class="container" >
		<div class="row align-items-center mb-2s">
			<div class="col-6 " style= "border:2px solid black;  height: 500px;">
				<img src="${pageContext.request.contextPath}/resources/images/드로잉.jpg" class="img-fluid"
				style="height: 480px; margin: 5px;">
				</div>
			<div class="col-5 m-1" style=" border:2px solid black; height: 500px;">
			<img src="${pageContext.request.contextPath}/resources/images/달력.png" class="img-fluid"
				style="height: 480px; margin: 5px;">
			
			</div>
		</div>
		<div>
			<div class="row align-items-center justify-content-between col-6"
			style= "border:1px solid black; height: 170px;"  >
				<div class="col-4" style= "height: 150px;">
				<img class="m-1s" src="${pageContext.request.contextPath}/resources/images/IT.jpg" class="img-fluid"  
				style="width: 170px; height: 150px;">
				</div>
				<div class="col-4" style= "height: 150px;">
				<img class="m-1s" src="${pageContext.request.contextPath}/resources/images/design.jpg" class="img-fluid"
				style="width: 170px; height: 150px;">
				</div>
				<div class="col-4" style= "height: 150px;">
				<img class="m-1s" src="${pageContext.request.contextPath}/resources/images/DIY.jpg" class="img-fluid" 
				style="width: 170px; height: 150px;">
				</div>
			</div>
			</div>
			<div class="col-6 m-1" style=" border:1px solid black; height: 700px;">
			<h3>클래스 소개</h3>
			
			</div>
		</div>
	

	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.twbsPagination.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.5/axios.min.js"></script>



	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>



</html>

