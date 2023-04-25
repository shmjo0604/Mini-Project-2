<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script src='main.js'></script>
<title>신청 상태 페이지</title>
</head>
<body>
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>
	<main class="container">
		<div class="py-5 text-center">
			<h2>신청페이지</h2>
			<p class="lead">신청하신 클래스 화면</p>
		</div>
		
		
		
		
		<form>
  <div class="form-group">
    <label for="exampleInputEmail1">신청 처리상태(1:결제완료, 2:결제취소, 3:참여완료)</label>
    <input class="form-control" type="text" placeholder="chk- 신청 처리 상태" readonly>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">상태 등록 일자</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="상태 등록 일자">
  </div>
  <a href="home.do" class="btn btn-primary btn-lg" onclick="ApplyclearAction()">홈으로</a>
  <!--  <input type="button" value="홈으로" class="btn btn-primary btn-lg" 
					href="home.do" onclick="ApplyclearAction()"/> -->
  
  </form>


	</main>
	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
	<script src="form-validation.js"></script>
	
	<script>
	function
	document.getElementByid("display").innerHTML = 100 / 20;
	</script>

</body>
</html>