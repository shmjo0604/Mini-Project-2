<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사소개 등록 페이지</title>

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
	href="${pageContext.request.contextPath}/resources/css/menu1.css">
</head>
<body>
	<form action="mypage.do?menu=2" method="post" >
	<div class="container">


		<!-- 왼쪽 화면 -->
		<div class="side_left">
			<div class="col">
			
			</div>
			</div>
		
		<!-- 오른쪽 화면 -->
		<main class="contents">
		<div class="side_right ">
		
			<section>
				<p>프로필 이미지</p>
				<img src="" />
			</section>
			
			<section>
				<p>상호명 및 닉네임</p>
			</section>
			
			<section>
				<p>강사 소개</p>
			</section>
			
			<section>
				<p>SNS</p>
			</section>



		<div class="changepage">
			<div>
				<button onclick="location:'menu1.jsp'">이전</button>
				<button onclick="location:'menu2.jsp'">다음</button>
			</div>
		</div>
		
		</div>
		</main>
		</div>
	</form>

</body>

<script>
	function(){
		
	}
</script>
</html>