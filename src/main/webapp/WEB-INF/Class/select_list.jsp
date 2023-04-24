<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 검색 영역 -->

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
				<select id="localselect" class="form-select" aria-label="Default select example" onchange="setLocalcate(this.value)">
					<option>전체</option>
				</select>
			</div>
		</div>
		<div class="row mb-4">
			<div class="col-2">
				<div>클래스 카테고리</div>
			</div>
			<div class="col-4">
				<select class="form-select" aria-label="Default select example" onchange="getClasscate(this.value)">
					<c:forEach var="obj" items="${list1}">
						<option value="${obj.code}">${obj.cate}</option>
					</c:forEach>
				</select>
			</div>
			<div class="col-2">
				<div>세부 카테고리</div>
			</div>
			<div class="col-4">
				<select id="actdetailselect" class="form-select" aria-label="Default select example" onchange="setActcate(this.value)">
					<option>전체</option>
				</select>
			</div>
		</div>
		<div class="row mb-4">
			<div class="col-2">날짜</div>
			<div class="col-4">
				<div>
					<input id="classdate" class="form-control datepicker">
				</div>
			</div>
			<div class="col-2">시간</div>
			<div class="col-4"></div>
		</div>
		<div class="row mb-4">
			<div class="col-2">난이도</div>
			<div class="col-4">
				<div>
					<!-- <input type="button" class="levelchk btn btn-outline-success" value="입문자">
					<input type="button" class="levelchk btn btn-outline-success" value="경험자">
					<input type="button" class="levelchk btn btn-outline-success" value="숙련자"> -->
					<button class="levelchk btn btn-outline-success" value="1">입문자</button>
					<button class="levelchk btn btn-outline-success" value="2">경험자</button>
					<button class="levelchk btn btn-outline-success" value="3">숙련자</button>
				</div>
			</div>
			<div class="col-2">가격</div>
			<div class="col-2">
				<input id="minprice" class="form-control" type="number" placeholder="최소 가격" />
			</div>
			<div class="col-2">
				<input id="maxprice" class="form-control" type="number" placeholder="최대 가격" />
			</div>
		</div>
		
		<div class="row mb-3 ">
			<div class="text-center">
				<button class="btn btn-outline-success">검색 조건 초기화</button>
				<button class="btn btn-outline-primary" type="button" onclick="searchClassAction()">검색</button>
			</div>
		</div>
		
		<hr class="divider">
	</div>
</section>

<!-- 리스트 영역 -->
<section>
	<div class="container">
		<div class="row row-cols-3 g-3 mb-3">
	 			<c:forEach var="obj" items="${list3}">
	 				<a href="product.do?classcode=${obj.classcode}">
	  			<div class="col">
	  				<div class="card shadow-sm">
	  					<%-- <c:if test="${obj.imageNo eq 0}">
	  						<img src="${pageContext.request.contextPath}/resources/assets/default.png" width="100%" height="225" focusable="false">
	  					</c:if>
	  					<c:if test="${obj.imageNo ne 0}">
	  						<img src="${pageContext.request.contextPath}/item/image?no=${obj.imageNo}" width="100%" height="225" focusable="false">
	  					</c:if> --%>
	                           <div class="card-body">
	                           	<h4 class="card-text text-center">${obj.title}</h4>
	                               <%-- <div>${obj.content}</div> --%>
	                               <p class="card-text">가격 : ${obj.price}</p>
	                               <p class="card-text">주소 : ${obj.address1}</p>
	                               <div class="d-flex justify-content-between align-items-center">
	                                   <div>
	                                       <button class="btn btn-sm btn-outline-secondary">상세 조회</button>
	                                       <c:if test = "${sessionScope.UID ne null}">
	                                       	<button class="btn btn-sm btn-outline-primary" onclick="modalOrder('${obj.no}', '${obj.price}', '${obj.imageNo}' )">물품 주문</button>
	                                  		</c:if>
	                                   </div>
	                               </div>
	                           </div>
	  				</div>
	  			</div>
	  			 </a>
	 			</c:forEach>
	 		</div>
	 	</div>
</section>

<!-- 동적 form 전송 -->
<form id="form-search" action="select.do?search=list" method="get">
	<input id="input-citycode" type="text" name="citycode">
</form>

<!--axios library-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.5/axios.min.js">
</script>
<!--jQuery-->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	var citycode = 0;
	var localcode = 0;
	var activitycode = 0;
	var actcode = 0;
	var classlevel = 0;

	async function getLocalcate(code) {
		console.log(code);
		citycode = code;
		
		//const localselect = $('#localselect')[0];
		
		if(code == 1) {
			
			$('#localselect').children('option').remove();
			$('#localselect').append('<option>전체</option>');
			
			//localselect.options.length = 0;
			//localselect.innerHTML += '<option>' + '전체' + '</option>';

		}
		
		else {
			
			const url = '${pageContext.request.contextPath}/api/class/selectcatelist.json?refcode='+code+"&chk=citycate";
			const headers = {"Content-Type":"application/json"};
			//const body = {refcode : code};
			
			const {data} = await axios.get(url, {headers});
			console.log(data);
			
			$('#localselect').children('option').remove();
			//localselect.options.length = 0;
			
			if(data.list.length == 0) {
				$('#localselect').append('<option>전체</option>');
			}
			
			else {
				var options = "";
				for(let obj of data.list) {
					options += "<option value=" + obj.code +  ">" + obj.localcate + "</option>";
				}
				$('#localselect').append(options);
			}
			
		}
		
	}
	
	async function getClasscate(code) {
		console.log(code);
		activitycode = code;
		
		if(code == 1) {
			$('#actdetailselect').children('option').remove();
			$('#actdetailselect').append('<option>전체</option>');
		}
		
		else {
			
			const url = '${pageContext.request.contextPath}/api/class/selectcatelist.json?refcode='+code+"&chk=classcate";
			const headers = {"Content-Type":"application/json"};
			//const body = {refcode = code, chk = 'classcate'};
			
			const {data} = await axios.get(url, {headers});
			console.log(data);
			
			$('#actdetailselect').children('option').remove();
			
			if(data.list.length == 0) {
				$('#actdetailselect').append('<option>전체</option>');
			}
			else {
				var options = "";
				for(let obj of data.list) {
					options += "<option value=" + obj.code +  ">" + obj.actcate + "</option>";
				}
				$('#actdetailselect').append(options);
			}
			
		}
		
	}
	
	function setLocalcate(code) {
		console.log(code);
		localcode = code;
	}
	
	function setActcate(code) {
		console.log(code);
		actcode = code;
	}
	
	
	$(".levelchk").on("click", function() {
		$(".levelchk").removeClass('active');
		$(this).addClass('active');
	})
	
	$(".levelchk").on("click", function(e) {
		console.log(e.target.value);
		classlevel = e.target.value;
	})
	
	function searchClassAction() {
		/* console.log(citycode);
		console.log(activitycode);
		console.log(actcode);
		console.log(localcode);
		console.log(classlevel);
		
		console.log($("#classdate").val());
		console.log($("#minprice").val());
		console.log($("#maxprice").val()); */
		
		var classdate = $("#classdate").val();
		var minprice = $("#minprice").val();
		var maxprice = $("#maxprice").val();
		
		$('#input-citycode').attr('value', citycode);
		$('#form-search').submit();
		
		//console.log($('#input-citycode').val());
		
		/* var form = $('<form></form>');
		
		form.attr("action", "select.do");
		form.attr("method", "get");
		
		const input1 = $("<input name='citycode' value=" + citycode + ">");
		console.log(input1.val());
		
		form.append(input1);
		form.append($('<input/>', {name:'localcode', value: localcode}));
		form.append($('<input/>', {name:'activitycode', value: activitycode}));
		form.append($('<input/>', {name:'actcode', value: actcode}));
		form.append($('<input/>', {name:'classlevel', value: classlevel}));
		form.append($('<input/>', {name:'classdate', value: classdate}));
		form.append($('<input/>', {name:'minprice', value: minprice}));
		form.append($('<input/>', {name:'maxprice', value: maxprice}));
		
		form.appendTo('body');
		
		form.submit(); */
		
	}
</script>