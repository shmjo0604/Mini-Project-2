<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>신청 페이지</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src='main.js'></script>
    
</head>

<body>
<jsp:include page="/WEB-INF/header.jsp"></jsp:include>
    <main class="container">
        <div class="py-5 text-center">
            <h2>신청페이지</h2>
            <p class="lead">신청하실 페이지를 선택하세요.</p>
        </div>

        <!--  <div class="row g-5">
            <div class="col-md-5 col-lg-4 order-md-last">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-primary">수업 날짜</span> 
                </h4>
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                        <label class="day">날짜 지정하기</label><!-- 날짜 범위를 제한하여 입력하기 -->
                       <!-- <input type="date" id="day" min="2023-04-25" max="2023-07-31">
                    </li>
                </ul>
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                        <label class="time">시간 지정하기</label><!-- 날짜 범위를 제한하여 입력하기 -->
                        <!--<input type="time" id="time" min="09:00:00" max="24:00:00">
                    </li>
                </ul>
            </div>-->
            <div class="col-md-7 col-lg-8">
                <h4 class="mb-3">신청한 페이지를 골라주십오</h4>
                <form class="needs-validation" novalidate>
                    <div class="row g-3">
                        <div class="col-12">
                            <label for="participants" class="form-label">참여인원</label> 
                         <input type="text" class="form-control" id="participants" placeholder="최대 인원은 30명 입니다."
                                value="" required>
                            <div class="invalid-feedback">Valid first name is
                                required.</div>
                        </div>
                        

                       
                            <!-- <select class="form-select" id="person"  required>
                                <option value="">Choose...</option>
                                <option>1명</option>
                                <option>2명</option>
                                <option>3명</option>
                                <option>4명</option>
                                <option>5명</option>
                                <option>6명</option>
                                <option>7명</option>
                                <option>8명</option>
                                <option>9명</option>
                                <option>10명</option>
                                <option>11명</option>
                                <option>12명</option>
                                <option>13명</option>
                                <option>14명</option>
                                <option>15명</option>
                            </select> -->
                         
                        <div class="col-12">
                            <label for="MemberId" class="form-label">Member
                                <span class="text-muted">(id)</span></label>
                            <input type="email" class="form-control" id="MemberId" placeholder="아이디를 입력하세요">
                            <div class="invalid-feedback">Please enter a valid email
                                address for shipping updates.</div>
                        </div>

                       

                        <div class="col-md-4">
                              	<label class="day">날짜 지정하기</label><!-- 날짜 범위를 제한하여 입력하기 -->
                                <input type="date" id="day" min="2023-04-25" max="2023-07-31">
                        
                            <div class="invalid-feedback">날짜를 선택하세요</div>
                        </div>
                        <div class="col-md-4">
                              	<label class="time">시간 지정하기</label><!-- 날짜 범위를 제한하여 입력하기 -->
                                <input type="time" id="time"  min="09:00:00" max="24:00:00">
                           
                            <div class="invalid-feedback">날짜를 선택하세요</div>
                        </div>

                    </div>

              

                    <hr class="my-4">
	
					<input type="button" value="신청완료" class="btn btn-primary btn-lg" 
					href="applyinsert.do" onclick="ApplyInsertAction()"/> 
                    <input type="button" value="신청실패" class="btn btn-primary btn-lg" 
					href="apply.do" onclick="ApplyAction()"/> 
                </form>
            </div>
        </div>
    </main>
    <jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="form-validation.js"></script>

</body>
<script>

//공통변수 모든 함수에서 사용가능함.

function ApplyInsertAction(){ //함수
	const id   = document.getElementById("MemberId");
	const participants   = document.getElementById("participants");
	const sessionno  = document.getElementById("sessionno");
	
	if( id.value.length <= 0 ){
		alert('모두 입력하였는지 확인 부탁드립니다.');
		id.focus();
		return false; // 함수 종료, 전송하지 않음
	}
	function ApplyAction() {
		var form = document.createElement("form");
		form.setAttribute("action", "apply.do");
		form.setAttribute("method", "post");
		form.style.display="none";
		document.body.appendChild(form);
		form.submit();
	}


</script>

</html>