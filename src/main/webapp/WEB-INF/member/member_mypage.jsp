<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<a href="mypage.do?menu=1" class="btn btn-primary">회원정보수정</a> <a
			href="mypage.do?menu=2" class="btn btn-primary">클래스관리</a> <a
			href="mypage.do?menu=3" class="btn btn-primary">클래스신청내역</a> <a
			href="mypage.do?menu=4" class="btn btn-primary">비밀번호재설정</a> <a
			href="mypage.do?menu=5" class="btn btn-primary">리뷰내역관리</a>
			<a href="mypage.do?menu=6" class="btn btn-primary">회원탈퇴</a>
			
		<hr />
		<c:if test="${param.menu == 1}">
			<jsp:include page="/WEB-INF/member_menu/menu1.jsp"></jsp:include>
		</c:if>
		<c:if test="${param.menu == 2}">
			<jsp:include page="/WEB-INF/member_menu/menu2.jsp"></jsp:include>
		</c:if>
		<c:if test="${param.menu == 3}">
			<jsp:include page="/WEB-INF/member_menu/menu3.jsp"></jsp:include>
		</c:if>
		<c:if test="${param.menu == 4}">
			<jsp:include page="/WEB-INF/member_menu/menu4.jsp"></jsp:include>
		</c:if>
		<c:if test="${param.menu == 5}">
			<jsp:include page="/WEB-INF/member_menu/menu5.jsp"></jsp:include>
		</c:if>
			<c:if test="${param.menu == 6}">
			<jsp:include page="/WEB-INF/member_menu/menu6.jsp"></jsp:include>
		</c:if>
		
	</div>
	<script>
		function updateMemberOne() {
			//유효성 검사
			const name = document.getElementsByName("name")[0];
			const email = document.getElementsByName("email")[0];
			const phone = document.getElementsByName("phone")[0];
			
			if (name.value.length <= 0) {
				alert('이름을 입력해주세요');
				name.focus();
				return false;

			}

			if (email.value.length<= 0) {
				alert('이메일을 입력해주세요');
				email.focus();
				return false;
			}
			
			if(phone.value.length <= 0){
				alert('전화번호를 입력해주세요');
				phone.focus();
				return false;
			}
			
			
			const form = document.getElementsByTagName("form");
			form[0].submit();
		}
		
		function updatepassword() {
			const password = document.getElementsByName("password")[0];
			const newpassword = document.getElementsByName("newpassword")[0];

			if (password.value.length <= 0) {
				alert('비밀번호를 입력해주세요');
				name.focus();
				return false;
			}
			
			if (newpassword.value.length <= 0) {
				alert('새비밀번호를 입력해주세요');
				name.focus();
				return false;

			}
			if(newpassword.value !== newpassword1.value){
				alert('비밀번호가 일치하지않습니다');
				name.focus();
				return false;
				
			}
			const form = document.getElementsByTagName("form");
			form[0].submit();
		}
		
		function deleteMemberOne() {
			const id = document.getElementsByName("id")[0];
			const password = document.getElementsByName("password")[0];
			
			if (id.value.length <= 0) {
				alert('아이디를 입력하세요');
				name.focus();
				return false();

				if (password.value.length <= 0) {
					alert('비밀번호를 입력해주세요');
					name.focus();
					return false();

				}
			}
			const form = document.getElementsByTagName("form");
			form[0].submit();

		}
	</script>
</body>
</html>