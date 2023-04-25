<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- jstl - format 만들때 사용 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div>
	<a href="write.do" class="btn btn-secondary">일정작성하기</a>
	<form action="deletesession.do" method="post" id="form4">
		<table class="table">
			<thead class="table">
				  <tr>
				  	<th scope="col"> </th>
				    <th scope="col">NO</th>
				    <th scope="col">날짜</th>
				    <th scope="col">시작시간</th>
				    <th scope="col">종료시간</th>
				    <th scope="col">신청인원</th>
				    <th scope="col">금액</th>
				  </tr>
			</thead>
			<tbody>
				 <c:set var="total" value="${0}"/> <!-- 변수 만들기 (초기값은 0) -->
				 <c:forEach var="obj" items="${list}">
			   		<tr>
			   		 <th><input type="checkbox" name="chk[]" value="${obj.no}"></th>
			   		 <td>${obj.no}</td>
				     <td>${obj.classdate}</td>
				     <td>${obj.classstart}</td>
				     <td>${obj.classend}</td>
				     <td>${obj.cnt}</td>
				     <td>${obj.addprice}</td>
				     <td><a href="imagewrite.do?ino=${obj.no}" class="btn btn-success">변경하기</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>
</div>
