<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>클래스 등록 메인페이지</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>
	<jsp:include page="header.jsp"></jsp:include>
<body>
	<div class="left">
		<div class="left1">
		<div style="width: 1400px; margin: 0 auto; padding: 50px; border: 1px solid #efefef;">
			<a href="insert.do?menu=1" class="btn btn-outline-success">카테고리</a> <br />
			<a href="insert.do?menu=2" class="btn btn-outline-success">강사소개</a><br />
			<a href="insert.do?menu=3" class="btn btn-outline-success">클래스소개</a><br />
			<a href="insert.do?menu=4" class="btn btn-outline-success">커리큘럼</a><br />
			<a href="insert.do?menu=5" class="btn btn-outline-success">가격</a><br />

			<c:if test="${param.menu == 1 }">
				<jsp:include page="./menu1.jsp"></jsp:include>
			</c:if>
			<c:if test="${param.menu == 2 }">
				<jsp:include page="./menu2.jsp"></jsp:include>
			</c:if>
			<c:if test="${param.menu == 3 }">
				<jsp:include page="./menu3.jsp"></jsp:include>
			</c:if>
			<c:if test="${param.menu == 4 }">
				<jsp:include page="./menu4.jsp"></jsp:include>
			</c:if>
			<c:if test="${param.menu == 5 }">
				<jsp:include page="./menu5.jsp"></jsp:include>
			</c:if>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
		
	
	<script>
		
	</script>
	
</body>
</html>