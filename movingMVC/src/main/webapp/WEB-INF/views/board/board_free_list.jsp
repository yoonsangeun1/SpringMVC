<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>						<!-- 임시 테스트용 jsp 나중에 삭제 할것! -->
<head>
<meta charset="UTF-8">
<title>자유게시판 목록</title>
</head>
<body>
 <table border="1">
 
  <caption>자유게시판 목록</caption>
  
  <tr>
   <td colspan="5" align="right">
   총게시물 수: <b>${totalCount}</b> 개</td>
  </tr>
  
  <tr>
   <th>번호</th> <th>제목</th> <th>글쓴이</th>
   <th>조회수</th> <th>등록날짜</th>
  </tr>
  
  <c:if test="${!empty bflist}"> <%-- bflist에 값이 있으면  --%>
   <c:forEach var="bf" items="${bflist}">
   
   <c:set var="bf.free_title" value="${bf.free_title}" /> <%-- 변수에 제목값 저장 --%>
   <c:set var="bf.free_name" value="${bf.free_name}" /> <%--변수에 이름값 저장 --%>
   
   <tr>
   
    <th>${bf.free_id}</th>
    
    <c:choose>
     <c:when test="${fn:length(bf.free_title > 14}">
	  <c:set var="free_title" value="${fn:substring(bf.free_title,0,13)}..." />
	  <th>
       <a href="/moving.com/board/free_cont?free_id=${bf.free_id}&page=${page}">
	  <c:out value="free_title" />
	   </a><%-- board_cont?bno=번호값&page=쪽번호 2개의 피라미터 값이 get방식으로 전달됨. --%>
      </th>
     </c:when>
     
     <c:otherwise>
      <th>
       <a href="/moving.com/board/free_cont?free_id=${bf.free_id}&page=${page}">
	   ${bf.free_title} 
	   </a><%-- board_cont?bno=번호값&page=쪽번호 2개의 피라미터 값이 get방식으로 전달됨. --%>
      </th>
     </c:otherwise>
     
    </c:choose>

    <th>${bf.free_name}</th>
    <th>${bf.free_hit}</th> <th>${bf.free_date}</th>
    
   </tr>
   </c:forEach>
  </c:if>
  
  <c:if test="${empty bflist}"> <!-- bflist에 값이 없으면 -->
   <tr>
   <th colspan="5">게시물 목록이 없습니다.</th>
   </tr>
  </c:if>
  
  <%-- 페이징 추가 --%>
  <tr>
   <th colspan="5">
   <c:if test="${page <= 1}"> <!-- 첫번째 페이지 -->
   &lt;&lt;&nbsp;
   </c:if>
   
   <c:if test="${page>1}"> <!-- 첫페이지 이상 -->
   <a href="/moving.com/board/free_list?page=${page-1}">
	&lt;&lt;
   </a>&nbsp;
   </c:if>
   
   <%--현재 쪽번호 출력 --%>
   <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
  	<c:if test="${a==page}"> <%--현재쪽번호가 선택된 경우 --%>
   [${a}]
  	</c:if>
  
  <c:if test="${a != page}"><%--현재쪽번호가 선택안된
  경우 --%>
     <a href="/moving.com/board/free_list?page=${a}">
   		${a}
  	 </a> &nbsp;  
  </c:if>
   </c:forEach>   

	<c:if test="${page>=maxpage}">
 &gt;&gt;
</c:if>

<c:if test="${page<maxpage}">
<a href="/moving.com/board/free_list?page=${page+1}">
&gt;&gt;
</a>
</c:if>

   </th>
   
  </tr>
  <%--페이징 끝 --%>
  <tr>
  
  <th colspan="5">
  <input type="button" value="글쓰기"
 onclick="location='/board_free_write';"/>
  </th>
  
  </tr>
  
  </table>


