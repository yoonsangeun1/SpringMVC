<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연기자 프로필 내용</title>
<script src="../resources/js/jquery.js"></script>
</head>
<body>
  <table border="1" style="width:1024px" cellspacing="0" > <!-- width 임시로 넣어둠. -->
   <caption>연기자 프로필 내용</caption>
 
 	<tr>
 	 <th>조회수</th>
 	 <td>
 	 ${ba.hit}
 	 </td>
 	</tr>
 	
 	<tr>
 	 <th>등록날짜</th>
 	 <td>
 	 ${ba.registerDate}
 	 </td>
 	</tr>
 	
   <tr>
    <th>이름</th>
    <td>${ba.name}
   </tr>
   
   <tr>
    <th>썸네일</th>
    <td>
	<img src="${ba.thumbnailImage}" width="200" height="250" />
    </td>
   </tr>
   
   <tr>
    <th>카테고리</th>
	<td>
	<c:if test="${ba.category eq 'actor'}">
	배우
	</c:if>
	<c:if test="${ba.category eq 'stunt'}">
	스턴트맨
	</c:if>
	<c:if test="${ba.category eq 'childactor'}">
	아역배우
	</c:if>
	<c:if test="${ba.category eq 'etc'}">
	${ba.etctext}
	</c:if>
	
	</td>
   </tr>
   
   <tr>
    <th>E-MAIL</th>
    <td>
	${ba.email}
    </td>
   </tr>
   
   <tr>
    <th>생년월일</th>
    <td>
	${fn:substring(ba.birthDate,0,10)}
    </td>
   </tr>
   
   <tr>
    <th>신장</th>
    <td>
    ${ba.height}
    </td>
   </tr>
   
   <tr>
    <th>성별</th>
    <td>
   	<c:if test="${ba.sex eq 'male'}">
   	남성
   	</c:if>  
   	<c:if test="${ba.sex eq 'female'}">
   	여성
   	</c:if> 
    </td>
   </tr>
   
   <tr>
    <th>웹사이트</th>
    <td>
	${ba.websiteUrl}
    </td>
   </tr>
  
   <tr>
    <th>내용</th>
    <td>
    ${ba.content}
    </td>
   </tr> 
    
   <tr>
    <th colspan="2">
    <input type="button" value="수정"
    onclick="location='/moving.com/board/actors_edit?id=${ba.id}&page=${page}';" />
    <input type="reset" value="삭제"
    onclick="delconfirm()" />
    <input type="button" value="목록"
    onclick="location='/moving.com/board/actors?page=${page}';" />
    </th>
   </tr>
  </table>
  
<script>
 function delconfirm(){
	 if(confirm("삭제하시겠습니까?")){
		 location.replace('/moving.com/board/actors_del?id=${ba.id}&page=${page}');//yes
	 }else{
		 location.replace('/moving.com/board/actors_cont?id=${ba.id}&page=${page}');//no
	 }//if else
 }//function delconfirm()
</script>

<script>
 var msg="${msg}"; 
 
 if(msg == "BOARD/ACTORS_EDIT"){
	 alert("글수정을 성공 했습니다!");
 }//if
 
 if(msg == "BOARD/ACTORS_CON_X"){
	 alert("본인 게시글만 삭제 가능합니다!");
 }//if
 
 
 
</script>

<%@ include file="../include/footer.jsp"%>
