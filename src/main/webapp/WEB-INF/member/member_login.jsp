<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>로그인</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<div
			style="width: 600px; margin: 10 auto; padding: 50px; border: 1px solid #efefef;">
			<h3>로그인</h3>
			<form action="${pageContext.request.contextPath}/member/login.do"
				method="post" id="form">
				<div class="row">
					<div class="col-sm">
					<div class="form-floating mb-2">
	                    <input type="text" name="id" id="id" class="form-control" />
	                    <label for="id" class="form-label">아이디</label>
	                </div>
					<div class="form-floating mb-2">
						<input type="password" name="pw" id ="pw" class="form-control" /> 
						<label for="pw" class="form-label">암호</label>
					</div>
					<div>
						<input type="submit" value="로그인" class="btn btn-primary"
						onclick ="loginAction()" />
						<a href ="join.do" class="btn btn-primary">회원가입</a>
						<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">아이디찾기</button>
						<input type="button" value="비밀번호재설정" class="btn btn-primary"/>
					</div>
					<div>
					
						
					</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.5/axios.min.js"></script>
	<script>
	function loginAction(){
		const id = document.getElementById("id");
		const pw = document.getElementById("pw");
		
		if (id.value.length <= 0){
			alert('아이디를 입력하세요');
			id.focus();
			return false();
		}
		
		if(pw.value.length <= 0){
			alert('비밀번호를 입력해주세요');
			pw.focus();
			return false();
		}
		
		
		document.getElementById("form").submit();
	}
	
	</script>
</body>
</html>