<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>세션관리페이지</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Permanent+Marker&display=swap" rel="stylesheet">
    <!-- CSS -->
    <link rel='stylesheet' href="${pageContext.request.contextPath}/resources/css/home.css"/>
    
    <style>	   
   	h5 {font-weight: bold;}
   	
   	.body { margin : 50px;
   			height: auto; }
   	.grid-item {display: inline-block;
   	background-color : green;}
    
   		   
    </style>
    
</head>


<body class="d-flex flex-column min-vh-100"> <!-- d-flex flex-column min-vh-100는 footer고정용 -->
	<!-- header -->
    <jsp:include page="../header.jsp"></jsp:include>
    
    <div class="container body row">
    
    	<!-- left menu bar -->
    	<div class="col-lg-3">
			<div class="col-9">
		    	<div id="list-example" class="list-group">
			      <h5 class="text-center">세션 작업실</h5>
			      <a class="list-group-item list-group-item-action" href="session.do?menu=1">등록하기</a>
			      <a class="list-group-item list-group-item-action" href="session.do?menu=2">관리하기</a>
			      <a class="list-group-item list-group-item-action" href="session.do?menu=3">가이드라인</a>
			      <a class="list-group-item list-group-item-action" href="session.do?menu=4">문의하기</a>
			    </div>
  			</div>
  		</div>
  		<!-- / left menu bar -->
  		
  		<!-- right side -->
  		<div class="col-lg-9">
  			<div class="col-lg-4">
	  			<c:if test="${param.menu == 1}">
					<jsp:include page="./session_menu/menu1.jsp"></jsp:include>
				</c:if>
				<c:if test="${param.menu == 2}">
					<jsp:include page="./session_menu/menu2.jsp"></jsp:include>
				</c:if>
  			</div>
  		</div>
  		<!-- / right side -->
	</div>
    
    <!-- footer -->
    <jsp:include page="../footer.jsp"></jsp:include>
    
    
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
        crossorigin="anonymous"></script>
    
    
    <script>
    	function registerSession() {
    		const form = document.getElementsByTagName("form");
    		form[0].submit();
    	}
    </script>
</body>

</html>