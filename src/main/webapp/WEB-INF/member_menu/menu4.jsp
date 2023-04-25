<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>비밀번호 변경</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>

<div>
	<form action ="mypage.do?menu=4" method ="post">
	<input type ="password" placeholder ="현재비밀번호" id = "password" name ="password" value ="${obj.password}" />
	<input type ="password" placeholder ="새비밀번호" id = "newpassword" name ="newpassword" value ="${obj.newpassword}"/>
	<input type ="password" placeholder ="새비밀번호 확인" id = "newpassword" name ="newpassword1" value ="${obj.newpassword}"/>
	<input type ="submit" value ="정보변경" onclick ="updatepassword()"/>
	</form>
</div>