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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Permanent+Marker&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/menu1.css">
</head>

<body>
	<form action="/class/insert.do" method="post" id="form1">
		<div class="right mt-6">

			<div class="row">
				<div class="col-4 p-3">
					<label for="cate1" name="cate1">지역</label> <select id="cate1"
						class="form-select" onchange="getLocalcate(this.value)">
						<c:forEach var="obj" items="${list}">
							<option value="${obj.code}">${obj.cate}</option>
						</c:forEach>
					</select>
				</div>
				<div class="col-4 p-3">
					<label for="cate2" name="cate2">세부 지역</label> <select
						id="localselect" class="form-select"
						onchange="setLocalcate(this.value)">
						<option>전체</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col-4 p-3">
					<label for="cate3">종류</label> <select id="cate3"
						class="form-select" onchange="getActivitycate(this.value)">
						<c:forEach var="obj" items="${list1}">
							<option value="${obj.code}">${obj.cate}</option>
						</c:forEach>
					</select>
				</div>
				<div class="col-4 p-3">
					<label for="cate4" name="cate4">세부 종류</label> <select
						id="actdetailselect" class="form-select"
						onchange="setActcate(this.value)">
						<option>전체</option>
					</select>
				</div>
			</div>

			<div class="post">
				<section>
					<input type="text" class="mb-3" id="sample6_postcode"
						placeholder="우편번호" name="postcode"> <input type="button"
						class="btn btn-sm btn-primary mb-3"
						onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample6_address" placeholder="주소"
						name="address"><br> <input type="text"
						id="sample6_detailAddress" placeholder="상세주소" name="detailaddress">
					<input type="text" id="sample6_extraAddress" placeholder="참고항목"
						name="extraAddress">
				</section>
			</div>

			<div class="changepage">
				<div class="btn_1">
					<a href="insert.do?menu=2" class="btn_after btn">다음</a> 
				</div>
			</div>
		</div>

	</form>

	<!--axios library-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.5/axios.min.js"></script>
	<!--jQuery-->
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		
	</script>

</body>
</html>