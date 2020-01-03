<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<img src="${ba.thumbnailImage}" />
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
	${ba.birthDate}
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
    <input type="reset" value="취소"
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
		 location.replace('/moving.com/board/actors_cont?id=${id}&page=${page}');//no
	 }//if else
 }//function delconfirm()
</script>
 
</body>
</html>
