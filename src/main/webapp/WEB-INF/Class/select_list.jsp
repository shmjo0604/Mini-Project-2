<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section>
	<div class="container">
		<div class="row mb-2">
			<div class="col d-flex">
				<div>
					<div class="input-group">
						<!-- <select class="form-select" aria-label="Default select example">
	                            <option selected value="title">제목</option>
	                            <option value="keyword">내용</option>
	                            <option value="2"></option>
	                            <option value="3">Three</option>
	                        </select> -->
						<input type="text" class="form-control" placeholder="검색어를 입력하세요."
							aria-label="Text input with dropdown button">
						<button class="btn btn-primary" type="button">
							<i class="fas fa-search fa-sm"></i>
						</button>
					</div>
				</div>
				<div class="ms-auto">
					<a href="select.do?search=map">
						<button class="btn btn-outline-success">지도 보기</button>
					</a>
				</div>
			</div>
		</div>
		
		<hr class="divider">

		<div class="row mb-4">
			<div class="col-2">
				<div>지역</div>
			</div>
			<div class="col-4">
				<select class="form-select" aria-label="Default select example" onchange="getLocalcate(this.value)">
					<c:forEach var="obj" items="${list2}">
						<option value="${obj.code}">${obj.cate}</option>
					</c:forEach>
					<!-- <option selected>Open this select menu</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option> -->
				</select>
			</div>
			<div class="col-2">
				<div>세부 지역</div>
			</div>
			<div class="col-4">
				<select id="localselect" class="form-select" aria-label="Default select example">
					<option>전체</option>
				</select>
			</div>
		</div>
		<div class="row mb-4">
			<div class="col-2">
				<div>카테고리</div>
			</div>
			<div class="col-4">
				<select class="form-select" aria-label="Default select example">
					<c:forEach var="obj" items="${list1}">
						<option value="${obj.code}">${obj.cate}</option>
					</c:forEach>
				</select>
			</div>
			<div class="col-2">
				<div>세부 카테고리</div>
			</div>
			<div class="col-4">
				<select class="form-select" aria-label="Default select example">
					<option selected>Open this select menu</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select>
			</div>
		</div>
		<div class="row mb-4">
			<div class="col-2">날짜</div>
			<div class="col-4">
				<div>
					<input class="form-control datepicker">
				</div>
			</div>
			<div class="col-2">시간</div>
			<div class="col-4"></div>
		</div>
		<div class="row mb-4">
			<div class="col-2">난이도</div>
			<div class="col-4">
				<div>
					<button class="btn btn-outline-success active">입문자</button>
					<button class="btn btn-outline-success">경험자</button>
					<button class="btn btn-outline-success">숙련자</button>
				</div>
			</div>
			<div class="col-2">가격</div>
			<div class="col-4">
				
			</div>
		</div>
		<div class="row mb-2 ">
			<div class="text-center">
				<button class="btn btn-outline-success">검색 조건 초기화</button>
				<button class="btn btn-outline-primary">검색</button>
			</div>
		</div>
	</div>
</section>

<!--axios library-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.5/axios.min.js">
</script>
<!--jQuery-->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	async function getLocalcate(code) {
		console.log(code);
		
		//const localselect = $('#localselect')[0];
		
		if(code == 1) {
			
			$('#localselect').children('option').remove();
			$('#localselect').append('<option>전체</option>');
			
			//localselect.options.length = 0;
			//localselect.innerHTML += '<option>' + '전체' + '</option>';

		}
		
		else {
			
			const url = '${pageContext.request.contextPath}/api/class/selectcatelist.json?refcode='+code;
			const headers = {"Content-Type":"application/json"};
			//const body = {refcode : code};
			
			const {data} = await axios.get(url, {headers});
			console.log(data);
			
			$('#localselect').children('option').remove();
			
			//localselect.options.length = 0;
			
			var options = "";
			for(let obj of data.list) {
				options += "<option value=" + obj.code +  ">" + obj.localcate + "</option>";
			}
			$('#localselect').append(options);
		}
		
	}
</script>