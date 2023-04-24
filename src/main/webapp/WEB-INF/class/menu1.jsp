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
	href="${pageContext.request.contextPath}/resources/css/menu1.css">
</head>
<body>
	<form action="mypage.do?menu=1" method="post" >
	<div class="container">


		<!-- 왼쪽 화면 -->
		<div class="side_left">
			<div class="col">
			
			</div>
			</div>
		
		<!-- 오른쪽 화면 -->
		<main class="contents">
		<div class="side_right">
		
			<section>
				<label for="cate1" name="cate1">지역 카테고리</label>
				<select id="cate1">
					<option value="#">서울</option>
					<c:forEach var="obj" items="${list}" >
						${obj.cate}
					</c:forEach>
				</select>
				<label for="cate2" name="cate2">지역 상세 카테고리</label>
			</section>
			<section>
				<label for="cate3">종류 카테고리</label> 
				<select id="cate3">
					<option value="#">스포츠</option>
					<option value="#">쿠킹</option>
				</select>
			</section>



		<div class="changepage">
			<div>
				<!-- <button onclick="location:'menu1.jsp'">이전</button> -->
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