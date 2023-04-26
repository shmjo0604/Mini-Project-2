<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- jstl - format 만들때 사용 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div>
   <form action="deletepurchase.do" method="post" id="form4">
      <table class="table mt-2">
             <thead style="background-color: lightgray;">
                     <tr>
                        <th>클래스번호</th>
                        <th>클래스명</th>
                        <th>클래스 참여일자</th>
                        <th>클래스 참여시간</th>
                        <th>신청자 아이디</th>
                        <th>신청자 성명</th>
                        <th>참여 인원</th>
                        <th>결제할 금액</th>
                        <th>총 가격</th>
                     </tr>
               </thead>
               <tbody>
                     <c:set var="total" value="${0}"/> <!-- 변수 만들기 (초기값은 0) -->
                     <c:forEach var="obj" items="${list}">
                           <tr>
                             <th><input type="checkbox" name="chk[]" value="${obj.no}"> ${obj.no}</th>
                            <td><fmt:formatNumber value="${obj.cnt}" pattern="#,###"/></td>
                            <td><fmt:formatDate value="${obj.regdate}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
                            <td>${obj.customerid}</td>
                            <td>${obj.customername}</td>
                            <td>${obj.itemno}</td>
                            <td>${obj.itemname}</td>
                            <td><fmt:formatNumber value="${obj.itemprice}" pattern="#,###"/></td>
                            <td><fmt:formatNumber value="${obj.cnt*obj.itemprice}" pattern="#,###"/></td>
                           <c:set var="total" value="${total + (obj.cnt*obj.itemprice)}"/>
                         </tr>
                     </c:forEach>
                     <tr>
                           <th colspan="8">합계</th>
                           <td>
                              <fmt:formatNumber value="${total}" pattern="#,###"/>
                           </td>
                     </tr>
               </tbody>
      </table>
      <input type="button" class="btn btn-sm btn-primary" value="주문취소" onclick="deletePurchaseAction()" />
   </form>
</div>

<script>
   function deletePurchaseAction() {
      const ret = confirm('주문을 취소할까요?');
      if (ret) {
         // name값이 chk[]인 것을 n개 찾음
         const chk = document.getElementsByName("chk[]");
         
         let isCheck = 0;
         for (let i=0; i<chk.length; i++) { // 찾은 개수만큼 반복함
            if (chk[i].checked === true) { // 체크된게 있다면
               isCheck = 1;
               break;
            } 
         }
         
         // 체크된 것이 있는지 확인
         if (isCheck === 1) {
            if (confirm('주문을 취소할까요?')) {
               document.getElementById("form4").submit();
            }
         }
         else {
            alert('항목을 체크하세요.');
            return false;
         }
      }
   }
</script>