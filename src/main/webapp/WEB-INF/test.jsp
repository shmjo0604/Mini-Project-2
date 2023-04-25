<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>클래스 등록 메인페이지</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" /> --%>
</head>
<style>
.main {
	height: 100%;
	display: flex;
}
</style>

<body>
	<!--header 영역-->
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<div class="container">

				<!-- (1) 로고 -->
				<a
					class="navbar-brand d-flex align-items-center lh-1 me-10 transition-opacity opacity-75-hover"
					href="./index.html"> <!-- 로고 아이콘 추가예정 -->
					<div class="logo">Special Day</div>
				</a>
				<!-- / 로고 -->

				<!-- (2) 메뉴 항목 -->
				<div
					class="collapse navbar-collapse justify-content-center align-items-center"
					id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li class="nav-item dropdown position-static"><a
							class="nav-link dropdown-toggle" href="#" role="button">카테고리</a>
							<!--  드롭다운 메뉴-->
							<div class="dropdown-menu dropdown-megamenu">
								<div class="container">
									<!-- 드롭다운 메뉴 섹션-->
									<div class=""></div>
								</div>
							</div> <!-- / 드롭다운 메뉴--></li>
						<li class="nav-item"><a class="nav-link" href="">공지사항</a></li>
						<li class="nav-item"><a class="nav-link" href="">이용안내</a></li>
						<li class="nav-item"><a class="nav-link" href="">FAQ</a></li>
						<li class="nav-item"><a class="nav-link" href="">마이페이지</a></li>
					</ul>

				</div>
				<!-- / 메뉴 항목 -->

				<!-- (3) 클래스등록&로그인 -->
				<div class="d-none d-lg-flex">
					<a href="#" class="btn btn-outline-success" role="button">클래스
						등록</a> <a href="#" class="btn btn-outline-secondary" role="button">로그인</a>
				</div>
				<!-- / 클래스등록&로그인 -->
			</div>
		</nav>
	</header>

	<div class="main">
		<div class="left col-2 m-5">
			<a href="insert.do?menu=1" class="btn btn-outline-success m-3">카테고리</a>
			<br /> 
			<button
				class="btn btn-outline-success m-3" onclick="nextMenu1()">강사소개</button>
				<br /> <a
				href="insert.do?menu=3" class="btn btn-outline-success m-3">클래스소개</a><br />
			<a href="insert.do?menu=4" class="btn btn-outline-success m-3">커리큘럼</a><br />
			<a href="insert.do?menu=5" class="btn btn-outline-success m-3">가격</a><br />
		</div>
		
		<div class="right col-10 m-5">
			<!-- 메뉴 1 -->
			<div id="menu1" style="display: block;">
				<div class="right mt-6">

					<div class="row">
						<div class="col-4 p-3">
							<label for="cate1" name="cate1">지역</label> <select id="cate1"
								class="form-select" onchange="getLocalcate(this.value)">
								<c:forEach var="obj" items="${list}">
									<option value="${obj.code}">${obj.cate}</option>
								</c:forEach>
							</select>
						</div>
						<div class="col-4 p-3">
							<label for="cate2" name="cate2">세부 지역</label> <select
								id="localselect" class="form-select"
								onchange="setLocalcate(this.value)">
								<option>전체</option>
							</select>
						</div>
					</div>

					<div class="row">
						<div class="col-4 p-3">
							<label for="cate3">종류</label> <select id="cate3"
								class="form-select" onchange="getActivitycate(this.value)">
								<c:forEach var="obj" items="${list1}">
									<option value="${obj.code}">${obj.cate}</option>
								</c:forEach>
							</select>
						</div>
						<div class="col-4 p-3">
							<label for="cate4" name="cate4">세부 종류</label> <select
								id="actdetailselect" class="form-select"
								onchange="setActcate(this.value)">
								<option>전체</option>
							</select>
						</div>
					</div>

					<div class="post">
						<section>
							<input type="text" class="mb-3" id="sample6_postcode"
								placeholder="우편번호" name="postcode"> <input type="button"
								class="btn btn-sm btn-primary mb-3"
								onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" id="sample6_address" placeholder="주소"
								name="address"><br> <input type="text"
								id="sample6_detailAddress" placeholder="상세주소"
								name="detailaddress"> <input type="text"
								id="sample6_extraAddress" placeholder="참고항목" name="extraAddress">
						</section>
					</div>

					<div class="changepage">
						<div>
							<div>
								<button class="btn btn-primary" onclick="nextMenu1()">다음</button>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 메뉴 2 -->
			<div id="menu2" style="display:none;">
				<div class="container">
					<section>
						<p>프로필 이미지</p>
						<div id="input-image" class="mb-3">
							<img id="insert-img"
								src="${pageContext.request.contextPath}/resources/images/default.png"
								style="width: 150px; height: 150px; curosr: pointer;"
								class="mb-3" onclick="clickItemImage()" /> <input type="file"
								name="file" id="file" class="form-control"
								onchange="changeItemImage(this)">
						</div>

						<div>
							<input type="button" value="등록" class="btn btn-primary"
								onclick="insertItemImage()" />
						</div>
					</section>
				</div>

				<section>
					<p>상호명 및 닉네임(필수)</p>
					<p>
						<input type="text" name="name" required>
					</p>
				</section>

				<section>
					<p>강사 소개 (필수)</p>
					<!-- Create the editor container -->
					<div style="margin-bottom: 5px; background-color: white;">
						<div id="editor" style="height: 300px;">
							<p>자신의 경험,경력을 소개해주세요.</p>
							<p>
								<br>
							</p>
						</div>
					</div>
				</section>

				<section>
					<p>SNS 링크</p>
					<p>(선택)</p>
					<input placeholder="https://instagram.com/sample" type="text"
						class="" value="">
				</section>



				<div class="changepage">
					<div>
						<div>
							<button class="btn btn-primary" onclick="prevMenu1()">이전</button> 
							<button class="btn btn-primary"
								onclick="nextMenu2">다음</button>
						</div>

						<!-- 가이드 라인 작성 -->
						<div role="tooltip">
							<p>가이드 라인</p>
							<p>• 강사님의 SNS 링크를 작성해 주세요.</p>
							<p>• 클래스 홍보와 정보제공에 도움이 됩니다.</p>
						</div>
					</div>
				</div>
			</div>


		</div>



	</div>

	<!--footer 영역-->
	<footer class="bg-dark">
		<div class="container">
			<!-- footer top -->
			<div
				class="d-flex flex-column flex-md-row justify-content-md-between align-items-center">
				<!-- Footer Logo-->
				<a
					class="d-flex align-items-center lh-1 text-white transition-opacity opacity-50-hover text-decoration-none mb-4 mb-md-0"
					href="#"> <!-- 로고 아이콘 추가예정 -->
					<div class="logo">Special Day</div>
				</a>
				<!-- /Footer Logo-->

				<!-- Footer socials-->
				<ul
					class="list-unstyled d-flex align-items-center justify-content-end">
					<li class="ms-5"><a href="#" class=""><img src="" alt=""><i
							class="ri-facebook-circle-line ri-lg"></i></a></li>
					<li class="ms-5"><a href="#"
						class="text-white text-decoration-none opacity-50-hover transition-opacity"><i
							class="ri-twitter-line ri-lg"></i></a></li>
					<li class="ms-5"><a href="#"
						class="text-white text-decoration-none opacity-50-hover transition-opacity"><i
							class="ri-instagram-line ri-lg"></i></a></li>
					<li class="ms-5"><a href="#"
						class="text-white text-decoration-none opacity-50-hover transition-opacity"><i
							class="ri-snapchat-line ri-lg"></i></a></li>
				</ul>
				<!-- Footer socials-->
			</div>
			<!-- / footer top -->

			<!-- footer menu -->
			<div class="d-flex flex-wrap justify-content footer_menu">
				<h6
					class="text-uppercase fs-xs fw-bolder tracking-wider text-white opacity-50">회사소개
					|&nbsp;</h6>
				<h6
					class="text-uppercase fs-xs fw-bolder tracking-wider text-white opacity-50">고객센터
					|&nbsp;</h6>
				<h6
					class="text-uppercase fs-xs fw-bolder tracking-wider text-white opacity-50">약관
					및 정책</h6>
			</div>
			<h6
				class="text-uppercase fs-xs fw-bolder tracking-wider text-white opacity-50">주소
				: 부산광역시 남구 용소로 *** (대표전화) 123-456-7890</h6>
			<!-- / footer menu -->

			<!-- Footer bottom-->
			<div class="small text-white opacity-50 mb-2 mb-md-0">All
				rights reserved &copy Special day 2023</div>
			<!-- Footer bottom-->
		</div>
	</footer>


<!--jQuery-->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<!--axios library-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.5/axios.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
	
	/* function setLocalcate(code) {
		console.log(code);
		$('#localcode').attr('value', code);
	}
	
	function insertClassAction() {
		console.log($('#localcode').val());
	}
	
	function setActcate(code){
		console.log(code)
	} */
	
	function nextMenu1() {
		$('#menu1').css('display', 'none');
		$('#menu2').css('display', 'block');
	}
	
	function prevMenu1() {
		$('#menu1').css('display', 'block');
		$('#menu2').css('display', 'none');
	}
	
	function nextMenu2() {
		$('#menu2').css('display', 'none');
		$('#menu3').css('display', 'block');
	}
	
</script>

</body>
</html>