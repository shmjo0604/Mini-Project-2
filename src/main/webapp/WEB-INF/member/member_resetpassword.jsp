<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>비밀번호 재설정</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<div style="width: 600px; margin: 0 auto; padding: 50px; border: 1px solid #green;"></div>
		<h4>비밀번호 재설정</h4>
		<div class="row">
			<div class="col-sm">
				<form action ="resetpw1.do" method ="post">
				<div class="form-floating mb-2">
						<input type="text" placeholder="아이디"  id="id"
							name="id" value="${obj.id}" />
					</div>
					<div class="form-floating mb-2">
						<input type="password" placeholder="새비밀번호"  id="newpassword"
							name="newpassword" value="${obj.newpassword}" />
					</div>
					<div class="form-floating mb-2">
						<input type="password" placeholder="새비밀번호확인" id="newpassword"
							name="newpassword1" value="${obj.newpassword1}" />
					</div>
					<input type="submit" value="정보변경" class="btn btn-primary"
						onclick="updatepassword()" />
				</form>
			</div>
			<script>
				function updatepassword() {
					const newpassword = document
							.getElementsByName("newpassword")[0];

					if (id.value.length <= 0) {
						alert('아이디를 입력해주세요');
						name.focus();
						return false;

					}
					if (newpassword.value.length <= 0) {
						alert('새비밀번호를 입력해주세요');
						name.focus();
						return false;

					}
					if (newpassword.value !== newpassword1.value) {
						alert('비밀번호가 일치하지않습니다');
						name.focus();
						return false;

					}
					const form = document.getElementsByTagName("form");
					form[0].submit();
				}
			</script>
		</div>
	</div>
</body>
</html>