<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action="session.do?menu=1" method="post" id="form">
	
	<div class="first_row">
		<div class="form-floating mb-3 grid-item">
		    <input type="number" id="min" name="min" class="form-control">
		    <label for="min" class="form-label">최소인원</label>
		</div>
		
		<div class="form-floating mb-3 grid-item">
		    <input type="number" id="max" name="max" class="form-control" required>
		    <label for="max" class="form-label">최대인원</label>
		</div>
	</div>
	
	<div class="form-floating mb-3">
	    <input type="date" id="date" name="date" class="form-control">
	    <label for="date" class="form-label">날짜</label>
	</div>
	   
	<div class="form-floating mb-3">
	    <select class="selectpicker" id="day" name="day" aria-label="Example select with button addon">
		   <option selected>요일</option>
		   <option value="월요일">월요일</option>
		   <option value="화요일">화요일</option>
		   <option value="수요일">수요일</option>
		   <option value="목요일">목요일</option>
		   <option value="금요일">금요일</option>
		   <option value="토요일">토요일</option>
		   <option value="일요일">일요일</option>
		 </select>
	</div>
	   
	<div class="form-floating mb-3">
	    <input type="time" id="start" name="start" class="form-control">
	    <label for="start" class="form-label">시작시간</label>
	</div>
	
	<div class="form-floating mb-3">
	    <input type="time" id="end" name="end" class="form-control">
	    <label for="end" class="form-label">종료시간</label>
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
		<input type="button" value="할인가격 계산하기" class ="btn btn-success" onclick="ShowPrice()"/>
	</div>
	
	<div class="form-floating mb-3">
	 	 <input type="number" id="total" name="total" class="form-control" readonly> 
		 <label for="total" class="form-label">판매금액</label>
	</div>
	
	<div>
	   	<input type="button" value="등록하기" class="btn btn-secondary" onclick="registerSession()" />
	</div>
	
</form>	


		