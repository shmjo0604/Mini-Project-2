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
	href="${pageContext.request.contextPath}/resources/css/review.css" />
<!-- quill -->
<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css"
	rel="stylesheet" />
</head>

<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	
	<body>
	<div class="container">
		<a href="write.do" class="btn btn-primary">글쓰기</a>
		
		<div style="width: 800px; margin-top: 10px;">
			<form class="row g-2">
				<div class="col-auto">
					<input type="text" class="form-control" placeholder="검색어" style="width: 300px;" />
				</div>
				<div class="col-auto">
					<input type="submit" class="btn btn-primary" value="검색" />
				</div>
			</form>
		</div>

		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">글번호</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">조회수</th>
					<th scope="col">날짜</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="obj" items="${list}">
					<tr>
						<td scope="row">${obj.no}</td>
						<td><a href="#" onclick="ajuxUpdateHit('${obj.no}')">${obj.title}</a></td>
						<td name = "writer">${obj.writer}</td>
						<td>${obj.hit}</td>
						<td>${obj.regdate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	<div class="row justify-content-center">
			<div class="col-4">
				<ul id="pagination-demo" class="pagination"></ul>
			</div>
		</div>
	</div>

	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.twbsPagination.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.5/axios.min.js"></script>
	
	
		<script>
		async function ajuxUpdateHit(no){
		// 1. restful을 이용해서 조회수를 증가
		const url = '${pageContext.request.contextPath}/api/board/updatehit.json?no=' +no;
		const headers = {"Content-Type":"application/json"};
		
		//await axios.get(url, {headers});
		//await axios.post(url, body, {headers});
		//await axios.put(url, body, {headers});
		//await axios.delete(url, {headers:{ }, data:{ }});
		const {data} = await axios.put(url,{},{headers});
		console.log(data);
		if(data.result === 1){
			// 2. 상세화면페이지로 전환
			window.location.href='selectone.do?no=' +no;
		}	
	}
	</script>
	
	<script>
		// $(document).ready(function(){
		$(function() {
			$('#pagination-demo').twbsPagination({
				totalPages : Number('${pages}'),
				visiblePages : 10,
				first : '처음',
				last : '마지막',
				prev : '이전',
				next : '다음',
				initiateStartPageClick : false,
				startPage : Number('${param.page}'),
				onPageClick : function(event, page) {
					window.location.href = "selectlist.do?page=" + page;
				}
			});
		});
	</script>
	
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
	
	

</html>