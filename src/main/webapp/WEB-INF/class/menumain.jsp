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
<style>
.main{
	height:100%;
	display:flex;
}

</style>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="main">
		<div class="left col-2 m-5">
				<a href="insert.do?menu=1" class="btn btn-outline-success m-3">카테고리</a> <br />
				<a href="insert.do?menu=2" class="btn btn-outline-success m-3">강사소개</a><br />
				<a href="insert.do?menu=3" class="btn btn-outline-success m-3">클래스소개</a><br />
				<a href="insert.do?menu=4" class="btn btn-outline-success m-3">커리큘럼</a><br />
				<a href="insert.do?menu=5" class="btn btn-outline-success m-3">가격</a><br />
			</div>
			<div class="right col-10 m-5">
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
		
		<form action="insert.do" method="post">
			<input id="localcode" type="text" name="localcode">
		</form>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
		
<!--jQuery-->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>	
<script>
	
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample6_extraAddress").value = extraAddr;

						} else {
							document.getElementById("sample6_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}

	function updateAddressAction() {
		//const memberid = document.getElementById("id");
		
		const postcode = document.getElementById("sample6_postcode");
		const detailAddress = document.getElementById("sample6_detailAddress");
		
		// 1. 유효성 검사
		
		if ( postcode.value.length <= 0 ) {
			alert('우편번호를 입력하세요.');
			return false;
		}
		if ( detailAddress.value.length <= 0 ) {
			alert('상세주소를 입력하세요.');
			return false;
		}
		
		// 2. 전송
		document.getElementById("form5_update").submit();
	}

	async function getLocalcate(code){
		console.log(code);
		
		if( code==1 ){
			$('#localselect').children('option').remove();
			$('#localselect').append('<option>전체</option>');
		}
		else{
			const url =  '${pageContext.request.contextPath}/api/class/selectcatelist.json?refcode='+code+'&chk=local';
			const headers =  {"Content-Type":"application/json"};
			
			const{data} = await axios.get(url, {headers});
			
			$('#localselect').children('option').remove();
			
			var options = "";
			for(let obj of data.list){
				options += "<option value=" + obj.code + ">" + obj.localcate + "</option>";
			}
			$('#localselect').append(options);
		}
	}
	
	
	async function getActivitycate(code){
		console.log(code);
		
		if( code==1 ){
			$('#actdetailselect').children('option').remove();
			$('#actdetailselect').append('<option>전체</option>');
		}
		else{
			const url =  '${pageContext.request.contextPath}/api/class/selectcatelist.json?refcode='+code+'&chk=act';
			const headers =  {"Content-Type":"application/json"};
			
			const{data} = await axios.get(url, {headers});
			
			$('#actdetailselect').children('option').remove();
			
			var options = "";
			for(let obj of data.list1){
				options += "<option value=" + obj.code + ">" + obj.actcate + "</option>";
			}
			$('#actdetailselect').append(options);
		}
	}
	
	function setLocalcate(code) {
		console.log(code);
		$('#localcode').attr('value', code);
	}
	
	function insertClassAction() {
		console.log($('#localcode').val());
	}
	
	function setActcate(code){
		console.log(code)
	}
</script>
	
</body>
</html>