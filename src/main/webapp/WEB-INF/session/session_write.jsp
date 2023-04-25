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
    <link rel='stylesheet' href="${pageContext.request.contextPath}/resources/css/session.css"/>
    <!-- datepicker css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css">
	
	
	<style>
	/* datepicker css */
	.ui-widget-header {
		border: 0px solid #dddddd;
		background: #fff;
	}
	
	.ui-datepicker-calendar>thead>tr>th {
		font-size: 14px !important;
	}
	
	.ui-datepicker .ui-datepicker-header {
		position: relative;
		padding: 10px 0;
	}
	
	.ui-state-default, .ui-widget-content .ui-state-default,
		.ui-widget-header .ui-state-default, .ui-button, html .ui-button.ui-state-disabled:hover,
		html .ui-button.ui-state-disabled:active {
		border: 0px solid #c5c5c5;
		background-color: transparent;
		font-weight: normal;
		color: #454545;
		text-align: center;
	}
	
	.ui-datepicker .ui-datepicker-title {
		margin: 0 0em;
		line-height: 16px;
		text-align: center;
		font-size: 14px;
		padding: 0px;
		font-weight: bold;
	}
	
	.ui-datepicker {
		display: none;
		background-color: #fff;
		border-radius: 4px;
		margin-top: 10px;
		margin-left: 0px;
		margin-right: 0px;
		padding: 20px;
		padding-bottom: 10px;
		width: 300px;
		box-shadow: 10px 10px 40px rgba(0, 0, 0, 0.1);
	}
	
	.ui-widget.ui-widget-content {
		border: 1px solid #eee;
	}
	
	#datepicker:focus>.ui-datepicker {
		display: block;
	}
	
	.ui-datepicker-prev, .ui-datepicker-next {
		cursor: pointer;
	}
	
	.ui-datepicker-next {
		float: right;
	}
	
	.ui-state-disabled {
		cursor: auto;
		color: hsla(0, 0%, 80%, 1);
	}
	
	.ui-datepicker-title {
		text-align: center;
		padding: 10px;
		font-weight: 100;
		font-size: 20px;
	}
	
	.ui-datepicker-calendar {
		width: 100%;
	}
	
	.ui-datepicker-calendar>thead>tr>th {
		padding: 5px;
		font-size: 20px;
		font-weight: 400;
	}
	
	.ui-datepicker-calendar>tbody>tr>td>a {
		color: #000;
		font-size: 12px !important;
		font-weight: bold !important;
		text-decoration: none;
	}
	
	.ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover {
		cursor: auto;
		background-color: #fff;
	}
	
	.ui-datepicker-calendar>tbody>tr>td {
		border-radius: 100%;
		width: 44px;
		height: 30px;
		cursor: pointer;
		padding: 5px;
		font-weight: 100;
		text-align: center;
		font-size: 12px;
	}
	
	.ui-datepicker-calendar>tbody>tr>td:hover {
		background-color: transparent;
		opacity: 0.6;
	}
	
	.ui-state-hover, .ui-widget-content .ui-state-hover, .ui-widget-header .ui-state-hover,
		.ui-state-focus, .ui-widget-content .ui-state-focus, .ui-widget-header .ui-state-focus,
		.ui-button:hover, .ui-button:focus {
		border: 0px solid #cccccc;
		background-color: transparent;
		font-weight: normal;
		color: #2b2b2b;
	}
	
	.ui-widget-header .ui-icon {
		background-image:
			url('${pageContext.request.contextPath}/resources/images/btns.png');
	}
	
	.ui-icon-circle-triangle-e {
		background-position: -20px 0px;
		background-size: 36px;
	}
	
	.ui-icon-circle-triangle-w {
		background-position: -0px -0px;
		background-size: 36px;
	}
	
	.ui-datepicker-calendar>tbody>tr>td:first-child a {
		color: red !important;
	}
	
	.ui-datepicker-calendar>tbody>tr>td:last-child a {
		color: #0099ff !important;
	}
	
	.ui-datepicker-calendar>thead>tr>th:first-child {
		color: red !important;
	}
	
	.ui-datepicker-calendar>thead>tr>th:last-child {
		color: #0099ff !important;
	}
	
	.ui-state-highlight, .ui-widget-content .ui-state-highlight,
		.ui-widget-header .ui-state-highlight {
		border: 0px;
		background: #f1f1f1;
		border-radius: 50%;
		padding-top: 10px;
		padding-bottom: 10px;
	}
	
	.inp {
		padding: 10px 10px;
		background-color: #f1f1f1;
		border-radius: 4px;
		border: 0px;
	}
	
	.inp:focus {
		outline: none;
		background-color: #eee;
	}
	    
	</style>
</head>

<body class="d-flex flex-column min-vh-100"> 
	<!-- header -->
    <jsp:include page="../header.jsp"></jsp:include>
    
    <div class="container body row">
    
    	<!-- left menu bar -->
    	<div class="col-lg-3">
			<div class="col-9">
		    	<div id="list-example" class="list-group">
			      <h5 class="text-center">일정 작업실</h5>
			      <a class="list-group-item list-group-item-action" href="session.do?menu=1">일정관리하기</a>
			      <a class="list-group-item list-group-item-action" href="session.do?menu=2">신청자관리하기</a>
			      <a class="list-group-item list-group-item-action" href="session.do?menu=3">문의하기</a>
			    </div>
  			</div>
  		</div>
 		<!-- / left menu bar -->
 		
 		<!-- right side -->
 		<div class="col-lg-9 right_side" >
 		
			<form action="select.do?menu=1" method="post" id="form">
		   
			   <div class="row">
			      <div class="form-floating mb-3 col-lg-3">
			          <input type="number" id="min" name="min" class="form-control">
			          <label for="min" class="form-label">최소인원</label>
			      </div>
			      <div class="form-floating mb-3 col-lg-3">
			          <input type="number" id="max" name="max" class="form-control" required>
			          <label for="max" class="form-label">최대인원</label>
			      </div>
			   </div>
			   <div class="row">
			      <div class="form-floating mb-3 col-lg-6">
			          <input id="date" name="date" class="form-control datepicker">
			      </div>
			      <div class="form-floating mb-3 col-lg-0">
			      	<input type="hidden" name="day" id="day">
			      </div> 
			      <div class="form-floating mb-3 col-lg-3">
			          <input type="time" id="start" name="start" class="form-control">
			          <label for="start" class="form-label">시작시간</label>
			      </div>
			      <div class="form-floating mb-3 col-lg-3">
			          <input type="time" id="end" name="end" class="form-control">
			          <label for="end" class="form-label">종료시간</label>
			      </div>
			   </div>
			   <div class="form-floating mb-3">
			      <input type="number" id="default" name="default" class="form-control" value="${price}" readonly>
			      <label for="default" class="form-label">기본가격</label>
			   </div>
			   <div class="form-floating mb-3">  
			      <input type="radio" name="level" value="1" checked> 입문자
			      <input type="radio" name="level" value="2" > 경험자
			      <input type="radio" name="level" value="3" > 숙련자
			   </div>		   
			   <div class="form-floating mb-3">
			       <input type="number" id="addprice" name="addprice" class="form-control" >
			       <label for="addprice" class="form-label">추가금액(수강대상 변경으로 추가비용 발생 시 입력)</label>
			   </div>		   
			   <div class="form-floating mb-3">
			       <input type="number" id="discount" name="rate" class="form-control">
			       <label for="rate" class="form-label">할인률(%)</label>
			   </div>		   
			   <div>
			      <input type="button" value="할인가격 계산하기" class ="btn btn-success mb-3" onclick="ShowPrice()"/>
			   </div>		   
			   <div class="form-floating mb-3">
			        <input type="number" id="total" name="total" class="form-control mb-3" readonly> 
			       <label for="total" class="form-label">판매금액</label>
			   </div>		   
			   <div>
			         <input type="button" value="등록하기" class="btn btn-secondary" onclick="registerSession()" />
			   </div>   
			</form> 
		</div>
		<!-- / right side -->
	</div>
	
	<!-- footer -->
    <jsp:include page="../footer.jsp"></jsp:include>
    
    
    <!-- datepicker js -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
    
    
    <script>
	    $.datepicker.setDefaults({
	               dateFormat: 'yy-mm-dd',
	               prevText: '이전 달',
	               nextText: '다음 달',
	               monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	               monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	               dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	               dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	               dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	               showMonthAfterYear: true,
	               yearSuffix: '년'
	           });
	
	   $(function () {
	       $('.datepicker').datepicker({
	       	onSelect:function(d) {
	       		var week = new Array('일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일');
	       		var today = new Date(d).getDay();
	       		var todaylabel = week[today];
	       		document.getElementById("day").value = todaylabel;
	       	}
	       });
	   });    
    </script>
</body>
</html>
      