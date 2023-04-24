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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Permanent+Marker&display=swap"
	rel="stylesheet">
<!-- sources -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/viewselect.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/home.css" />
</head>

<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	<hr />
	<div class="container ">
		<div class="row d-flex flex-nowrap">
			<div class="col-8 mx-1 "
				style="border: 1px solid black; height: 500px;">
				<h3 class="mt-4" style="text-decoration: underline;">클래스 이미지</h3>
				<img
					src="${pageContext.request.contextPath}/resources/images/드로잉.jpg"
					class="img-fluid" style="height: 390px; margin: 1px;">
			</div>
			<div class="col-4" style="border: 1px solid black; height: 500px;">
				<div style="height: 280px;">
					<h3 class="mt-3" style="text-decoration: underline;">달력 API</h3>
				</div>
				<hr />
				<div id="scroll">
					<table class="table table-hover" id="table">
						<thead>
							<tr>
								<th scope="col">날짜</th>
								<th scope="col">요일</th>
								<th scope="col">시간</th>
								<th scope="col">인원</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td>2023년 5월1일</td>
								<td>(월)</td>
								<td>14:00~ 16:00</td>
								<td>남은인원</td>
							</tr>
							<tr>
								<td style="">2023년 5월3일</td>
								<td>(수)</td>
								<td>15:00~ 18:00</td>
								<td>남은인원</td>
							</tr>
							<tr>
								<td style="">2023년 5월4일</td>
								<td>(목)</td>
								<td>13:00~ 14:00</td>
								<td>남은인원</td>
							</tr>
							<tr>
								<td style="">2023년 5월7일</td>
								<td>(일)</td>
								<td>09:00~ 12:00</td>
								<td>남은인원</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<!-- 클래스 소개 -->
		<div class=" mt-1" style="border: 1px solid black; height: 400px;">
			<h3 class="mt-3 mx-1"
				style="text-decoration: underline; margin-bottom: 30px;">클래스 소개
			</h3>

			<div class="row d-flex flex-nowrap">
				<div class="col-8 mx-1">
					<div style="width: 500px; height: 50px; margin-left: 10px; margin-bottom : 5px; border: 1px solid black;">
						<h5>제목 :</h5>
					</div>
					<div style="width: 700px; height: 250px; margin-left: 10px; border: 1px solid black;">
						<h5>소개글 :</h5>
					</div>
				</div>
				<div class="col-4">
					<div style="width: 500px; height: 50px; margin-left: 10px;">
						<h6>난이도 :</h6>
					</div>
					<div style="width: 500px; height: 50px; margin-left: 10px;">
						<h6>가격 :</h6>
					</div>
					<div style="width: 500px; height: 130px; margin-left: 10px;">
						<h6>주소 :</h6>
					</div>
					<div style="width: 500px; height: 50px; margin-left: 10px;">
						<h6>등록날짜 :</h6>
					</div>
				</div>
				
				
				
			</div>
		</div>

		<!-- 커리큘럼 -->
		<div class="col mt-1 " style="border: 1px solid black; height: 400px;">
			<h3 class="mt-3 mx-1"
				style="text-decoration: underline; margin-bottom: 50px;">커리큘럼</h3>
			<div style="width: 500px; height: 80px; margin-left: 10px;">
				<h5>스텝1:</h5>
			</div>
			<div style="width: 500px; height: 80px; margin-left: 10px;">
				<h5>스텝2:</h5>
			</div>
			<div style="width: 500px; height: 80px; margin-left: 10px;">
				<h5>스텝3:</h5>
			</div>
			<div style="width: 500px; height: 80px; margin-left: 10px;">
				<h5>스텝4:</h5>
			</div>
		</div>
		<div class="row d-flex flex-nowrap">
		<div class="col-6 mx-1 mt-1 mb-2 "
			style="border: 1px solid black; height: 500px;">
			<h3 class="mt-3" style="text-decoration: underline;">위치 (카카오지도 뛰우기)</h3>
		</div>
		<div class="col-6 mt-1 mb-2 "
			style="border: 1px solid black; height: 500px;">
			<h3 class="mt-3" style="text-decoration: underline;">리뷰테이블</h3>
			<table class="table table-hover" >
			<thead>
				<tr >
					<th scope="col">신청번호</th>
					<th scope="col">제목</th>
					<th scope="col">내용</th>
					<th scope="col">평점</th>
					<th scope="col">날짜</th>
					<th scope="col"></th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="obj" items="${list}">
					<tr>
						<td scope="row">${obj.no}</td>
						<td><a href="#">${obj.title}</a></td>
						<td>${obj.content}</td>
						<td>${obj.rating}</td>
						<td>${obj.regdate}</td>
						<td style="width: 8px;"><input type="button" class="btn btn-primary" value="삭제" ></td>
						<td style="width: 8px;"><input type="button" class="btn btn-primary" value="수정"></td>
					</tr>
				</c:forEach>
			</tbody>	
		</table>
		</div>
		</div>
	</div>



	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

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

