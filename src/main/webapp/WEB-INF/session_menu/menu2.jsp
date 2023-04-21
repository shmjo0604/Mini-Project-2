<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action="join.do" method="post" id="form">
	<div class="form-floating mb-2">
	    <input type="text" id="id" name="id" class="form-control" onkeyup="ajaxIDCheck(this)">
	    <label for="id" id="lbl_check" class="form-label">최소인원</label>
	</div>
	
	<div class="form-floating mb-2">
	    <input type="password" id="pw" name="pw" class="form-control" required>
	    <label for="pw" class="form-label">최대인원</label>
	</div>
	   
	<div class="form-floating mb-2">
	    <input type="password" id="pw1" class="form-control">
	    <label for="pw1" class="form-label">요일</label>
	</div>
	   
	<div class="form-floating mb-2">
	    <input type="text" id="name" name="name" class="form-control">
	    <label for="name" class="form-label">시작시간</label>
	</div>
	
	<div class="form-floating mb-2">
	    <input type="number" id="age" name="age" class="form-control">
	    <label for="age" class="form-label">종료시간</label>
	</div>
	   
	<div>
	   	<input type="button" value="등록하기" class="btn btn-primary" onclick="joinAction()" />
	</div>
</form>			