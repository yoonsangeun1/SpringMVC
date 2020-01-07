<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
<link rel="stylesheet" type="text/css" href="../css/board_qna.css">
</head>
<body>

 <div id="bQna_body"> <%--전체 div 묶음 --%>
  
  <div id="bQna_community"> <%-- 커뮤니티 배우모집,시나리오 공모 등  div --%>
		 <div class="bQna_community_tit"> <%--커뮤니티--%>
		  	<h1>커뮤니티</h1>
		 </div> <%--커뮤니티 --%>
		 
		  <div class="bQna_community_list"> <%--커뮤니티 밑에 리스트들 div --%>
		   <ul>
		   
		    <li>
		     <a href="actors">배우 프로필</a>
		    </li>
		    
		    <li>
		     <a href="contest">시나리오 공모</a>
		    </li>
		    
		    <li>
		     <a href="free">자유게시판</a>
		    </li>
		    
		    <li class="bQna_community_list_qna">
		     <a href="qna">QnA</a> <%--QnA 작업해야 됨 --%>
		    </li>
	    
		   </ul>
		  </div> <%--커뮤니티 밑에 리스트들 div --%>
		
		</div> <%--커뮤니티 배우모집,시나리오 공모 등 div --%>
 
 	<div id="bQna_cont"> <%--커뮤니티 제외 전체 --%>
 	
 	<form method="get" action="/moving.com/board/qna">
 		<table id="bQna_table" cellspacing="0">
 		 <tr>
 		  <th id="no"><span>번호</span></th>
 		  <th id="title"><span>제목</span></th>
 		  <th id="author"><span>닉네임</span></th>
 		  <th id="time"><span>날짜</span></th>
 		  <th id="hit"><span>조회수</span></th>
 		 </tr>
 		 
 		 <c:if test="${!empty bqlist}"> <%--bqlist에 값이 있으면 --%>
 		  <c:forEach var="bqlist" items="${bqlist}">
 		   <tr style="height:44px">
 		    <td id="no">${bqlist.id}</td>
 		   <c:set var="bqlist.title" value="${bqlist.title}" /> <%--변수에 제목값 저장 --%>
 		   <c:set var="bqlist.mUserVO.nickname" value="${bqlist.mUserVO.nickname}" />
 		   
 		   <c:choose>
 		    <c:when test="${fn:length(bqlist.title) > 19}"> <%--19자 넘을경우--%>
 		     <c:set var="title" value="${fn:substring(bqlist.title,0,18)}..." />
 		      <td>
 		       <c:if test="${(empty findFiled) && (empty findName)}"> <%--검색 전 --%>
 		       <a href="/moving.com/board/qna_cont?id=${bqlist.id}&page=${page}">
 		        ${title}
 		       </a>
 		       </c:if>
 		       
 		       <c:if test="${(!empty findField) || (!empty findName)}"> <%--검색 후 --%>
 		       <a href="/moving.com/board/free_cont?id=${bqlist.id}&page=${page}&findField=${findField}&findNam${findName}">
 		       ${title}
 		       </a>
 		       </c:if>
 		      </td>
 		    </c:when>
 		    
 		    <c:otherwise>
 		     <td>
 		      <c:if test="${(empty findFiled) && (empty ifndName)}"> <%--검색 전 --%>
 		      <a href="/moving.com/board/qna_cont?id=${bqlist.id}&page=${page}">
 		      ${bqlist.title}
 		      </a>
 		      </c:if>
 		      <c:if test="${(!empty findField) || (!empty findName)}"> <%--검색 후 --%>
 		      <a href="/moving.com/board/qna_cont?id=${bqlist.id}&page=${page}&findField=${findField}&findName=${findName}">
 		       ${bqlist.title}
 		      </a>
 		      </c:if>
 		     </td>
 		    </c:otherwise>
 		    
 		   </c:choose>
 		   
 		   <td id="author">
 		   
 		    <c:if test="${bqlist.socialProfileVO.id != 0}">
 		    <a href="/moving.com/social/profile?id=${bqlist.socialProfileVO.id}">
 		     ${bqlist.mUserVO.nickname}
 		    </a>
 		    </c:if>
 		    
 		    <c:if test="${bqlist.socialProfileVO.id == 0}">
 		    ${bqlist.mUserVO.nickname}
 		    </c:if>	    
 		   </td>
 		   
 		   <td id="time">
 		   <c:if test="${fn:length(bqlist.registerDate) > 10}"> <%--10글자 이상일 시 --%>
 		   <c:out value="${fn:substring(bqlist.registerDate,0,10)}" /> 
 		   </c:if>
 		   </td>
 		   
 		   <td id="hit">${bqlist.hit}</td>	   
 		   
 		   </tr>
 		  </c:forEach>
 		 </c:if>
 		 
 		 <c:if test="${empty bqlist}"> <%--bqlist에 값이 없으면 --%>
 		  <tr>
 		   <th colspan="5">게시물 목록이 없습니다.</th>
 		  </tr>
 		 </c:if> 
 		</table>
 	</form>
		
    <div id="bQna_writing"> <%-- 글 쓰기 폼 div --%>
      <input type="button" class="bQna_writing_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
      value="글 쓰기" onclick="location='/moving.com/board/qna_write?page=${page}';" />
    </div> <%-- 글 쓰기 폼 div --%>
    
    <div style="clear:both"></div>
    
    <div id="bQna_pagination"> <%--페이징 div --%>
    
    <%--페이징 추가 --%>
    <c:if test="${(empty findField) && (empty findName)}"> <%--검색 전 --%>
     <c:if test="${page <= 1}"> <%--첫번째 페이지 --%>
     &lt;&lt;
    </c:if>
    
    <c:if test="${page>1}"> <%--첫페이지 초과 --%>
     <a href="/moving.com/board/qna?page=${page-1}">
      &lt;&lt;
     </a>
    </c:if>
    
    <%--현재 쪽번호 출력 --%>
    <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
     <c:if test="${a==page}">  <%--현재 쪽번호가 선택된 경우 --%>
     [${a}]
     </c:if>
     
     <c:if test="${a != page}"> <%--현재쪽번호가 선택안된 경우 --%>
      <a href="/moving.com/board/qna?page=${a}">
       ${a}
      </a>
     </c:if>    
    </c:forEach>
    
    <c:if test="${page>=maxpage}">
     &gt;&gt;
    </c:if>
    
    <c:if test="${page<maxpage}">
     <a href="/moving.com/board/qna?page="${page+1}>
      &gt;&gt;
     </a>
    </c:if>
    </c:if> <%--검색 전 --%>
    
    <c:if test="${(!empty findField) || (!empty findName)}"> <%--검색 후 --%>
     <c:if test="${page <= 1}">
     &lt;&lt;
     </c:if>
     
     <c:if test="${page>1}"> <%--첫페이지 초과 --%>
      <a href="/moving.com/board/qna?page=${page-1}&findField=${findField}&findName=${findName}">
       &lt;&lt;
      </a>
     </c:if>
     
     <%--현재 쪽번호 출력 --%>
     <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
      <c:if test="${a==page}"> <%--현재 쪽번호가 선택된 경우 --%>
      [${a}]
      </c:if>
      
      <c:if test="${a != page}"> <%--현재쪽번호가 선택 안된 경우 --%>
       <a href="/moving.com/board/qna?page=${a}?findField=${findField}&findName=${findName}">
       ${a}
       </a>
      </c:if>
     </c:forEach>
     
     <c:if test="${page>=maxpage}">
      &gt;&gt;
     </c:if>
     
     <c:if test="${page<maxpage}">
      <a href="/moving.com/board/qna?page=${page+1}&findField=${findField}&findName=${findName}">
       &gt;&gt;
      </a>
     </c:if>
    </c:if> <%--검색 후 --%>
    
    </div> <%--페이징 div --%>

		  <div id="bQna_search"> <%--검색 구간 전체 div --%>
   <select name="findField" id="findField">
	<option value="title"
	<c:if test="${findFiled == 'title'}">
	${'selected'}</c:if>>제목</option>
	<option value="content"
	<c:if test="${findFiled == 'content'}">
	${'selected'}</c:if>>내용</option>
	<option value="nickname"
	<c:if test="${findField == 'nickname'}">
	${'selected'}</c:if>>닉네임</option>
   </select>
   
   <div id="bQna_input"> <%--텍필,버튼 --%>
    <input id="findName" name="findName" size="20" value="${findName}" />
    <input type="submit" class="search_btn button_wce8e8e8" value="검색" />
   </div> <%--텍필,버튼 --%>
   
  </div> <%--검색 구간 전체 div --%>
 	
 	
 	
 	</div> <%--커뮤니티 제외 전체 --%>

 
 </div> <%--전체 div 묶음 --%>
 
<%@ include file="../include/footer.jsp" %>