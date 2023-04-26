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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
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
							<input type="text" name="id" id="id" class="form-control" /> <label
								for="id" class="form-label">아이디</label>
						</div>
						<div class="form-floating mb-2">
							<input type="password" name="pw" id="pw" class="form-control" />
							<label for="pw" class="form-label">암호</label>
						</div>
						<div>
							<input type="submit" value="로그인" class="btn btn-primary"
								onclick="loginAction()" /> <a href="join.do"
								class="btn btn-primary">회원가입</a>
							<button type="button" class="btn btn-primary"
								data-bs-toggle="modal" data-bs-target="#exampleModal">아이디찾기</button>
							<input type="button" value="비밀번호재설정" class="btn btn-primary" />
						</div>

					</div>
				</div>
			</form>
		</div>
		<form action="selectid.do" method="post" id="form5">
			<div class="modal fade" id="exampleModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">아이디찾기</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<input type="text" name="name" id="name" placeholder="이름"><br/>
							<input type="email" name="email" id="email"placeholder="주소"><br/> 
							<input type="tel" name="phone" id="phone" placeholder="전화번호"><br/>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" >아이디찾기</button>
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
			</div>
		</form>

	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.5/axios.min.js"></script>
	<script>
		function loginAction(){
			const id =document.getElementById("id");
			const pw= document.getElemntById("password");
			
			if(id.value.length <= 0){
				alert('아이디를 입력하세요');
				id.focus();
				return false;
				
			}
			if(pw.value.length <= 0){
				alert('비밀번호를 입력하세요');
				password.focus();
				return false;
				
			}
		}
	
		function memberselectid() {
			const name  = document.getElementById("name");
			const email = document.getElementById("email");
			const phone = document.getElementById("phone");
			if (name.value.length <= 0) {
				alert('이름을 입력하세요');
				name.focus();
				return false;
			}

			if (email.value.length <= 0) {
				alert('이메일을 입력해주세요');
				email.focus();
				return false;
			}
			if (phone.value.length <= 0) {
				alert('전화번호를 입력해주세요');
				phone.focus();
				return false;
			}
			document.getElementById("form").submit();
		}
	</script>
</body>
</html>