<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>							<%-- 자유게시판 jsp --%>
<html>
<head>
<%--head안에 넣으니 노란표시 안남, 2번째 줄에 넣었더니 노란표시 뜸 --%>
<meta charset="UTF-8">
<title>자유게시판</title>
</head>
<body>

	<div id="bFree_body"> <%--전체 body div묶음 --%>
	
		<div id="bFree_community"> <%-- 커뮤니티 배우모집,시나리오 공모 등  div --%>
		 <div class="bFree_community_tit"> <%--커뮤니티--%>
		  	<h1>커뮤니티</h1>
		 </div> <%--커뮤니티 --%>
		 
		  <div class="bFree_community_list"> <%--커뮤니티 밑에 리스트들 div --%>
		   <ul>
		   
		    <li>
		     <a href="actors">배우모집</a>
		    </li>
		    
		    <li>
		     <a href="contest">시나리오 공모</a>
		    </li>
		    
		    <li class="bFree_community_list_free">
		     <a href="free">자유게시판</a>
		    </li>
		    
		    <li>
		     <a href="qna">QnA</a> <%--QnA 작업해야 됨 --%>
		    </li>
	    
		   </ul>
		  </div> <%--커뮤니티 밑에 리스트들 div --%>
		
		</div> <%--커뮤니티 배우모집,시나리오 공모 등 div --%>

		<table id="bFree_table" cellspacing="0">
		 <thead>
				<%--thead 요소는 테이블의 제목 그룹화. 한 번만 선언 가능하며,
  tbody나 tfoot 보다 먼저 위치.  --%>
		<tr>
		 <th id="no"><span>번호</span></th>
		 <th id="title"><span>제목</span></th>
		 <th id="author"><span>글쓴이</span></th>
		 <th id="time"><span>날짜</span></th>
		 <th id="hit"><span>조회수</span></th>
		</tr>
		
			</thead>

		<tbody>
		 <c:if test="${!empty bflist}"> <%--bflist에 값이 있으면 --%>
   		  <c:forEach var="bfdto" items="${bflist}">
		   <tr style="height:44px">
			<td id="no">${bfdto.normal_post.id}</td>
			
   	<c:set var="bfdto.normal_post.title" value="${bfdto.normal_post.title}" /> <%-- 변수에 제목값 저장 --%>
   	<c:set var="bfdto.m_user.nickname" value="${bfdto.m_user.nickname}" /> <%--변수에 이름값 저장 --%> 

			
			
	<c:choose>
     <c:when test="${fn:length(bfdto.normal_post.title) > 20}"> <%--20자 이상일 경우 --%>
	  <c:set var="title" value="${fn:substring(bfdto.normal_post.title,0,19)}..." />
	   <td>
        <a href="/moving.com/board/free_cont?id=${bfdto.normal_post.id}&page=${page}">
	  ${bfdto.normal_post.title}  <%--user_id가 아닌 닉네임이 들어가게 수정해야함. --%>
	    </a><%-- board_cont?bno=번호값&page=쪽번호 2개의 피라미터 값이 get방식으로 전달됨. --%>
       </td>
     </c:when>
     
     <c:otherwise>
      <td>
       <a href="/moving.com/board/free_cont?id=${bfdto.normal_post.id}&page=${page}">
	   ${bfdto.normal_post.title}
	   </a><%-- board_cont?bno=번호값&page=쪽번호 2개의 피라미터 값이 get방식으로 전달됨. --%>
      </td>
     </c:otherwise>
     
    </c:choose>
    
    
     <c:choose>
      <c:when test="${fn:length(bfdto.m_user.nickname) > 10}">
       <c:set var="bfdto.m_user.nickname" value="${fn:substring(bfdto.m_user.nickname,0,9)}.." />
        <td id="author">
         <a href=#>
       	  ${bfdto.m_user.nickname}
         </a>
        </td>
      </c:when>
      
      <c:otherwise>
       <td id="author">
        <a href="#">
         ${bfdto.m_user.nickname}
        </a>
       </td>
      </c:otherwise>

     </c:choose>
     		
			<td id="time">${bfdto.normal_post.register_date}</td>
			<td id="hit">${bfdto.normal_post.hit}</td>
		   </tr>
		  </c:forEach>
  		 </c:if>
  		 
   <c:if test="${empty bflist}"> <%--bflist에 값이 없으면 --%>
    <tr>
     <th colspan="5">게시물 목록이 없습니다.</th>
    </tr>
   </c:if>
		</tbody>
	   </table>
		
    <div id="bFree_writing"> <%-- 글 쓰기 폼 div --%>
      <input type="button" class="bFree_writing_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4" 
      value="글 쓰기" onclick="location='/moving.com/board/free_write';" />
    </div> <%-- 글 쓰기 폼 div --%>
    
    <div style="clear:both"></div>
		
	<div id="bFree_pagination"> <%--페이지 순번 --%>
	
		   <%-- 페이징 추가 --%>

   <c:if test="${page <= 1}"> <!-- 첫번째 페이지 -->
    &lt;&lt;
   </c:if>
   
   <c:if test="${page>1}"> <!-- 첫페이지 초과 -->
    <a href="/moving.com/board/free?page=${page-1}">
	 &lt;&lt;
    </a>
   </c:if>
   
   <%--현재 쪽번호 출력 --%>
 <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
  <c:if test="${a==page}"> <%--현재쪽번호가 선택된 경우 --%>
   [${a}]
  </c:if>
  
  	<c:if test="${a != page}"><%--현재쪽번호가 선택안된 경우 --%>
 	 <a href="/moving.com/board/free?page=${a}">
  	   ${a}
 	 </a> 
  	</c:if>
 </c:forEach>   

	<c:if test="${page>=maxpage}">
 	 &gt;&gt;
	</c:if>

	<c:if test="${page<maxpage}">
	 <a href="/moving.com/board/free?page=${page+1}">
	  &gt;&gt;
	 </a>
	</c:if>
	</div>

	<div id="bFree_search"> <%--검색 구간 전체 div --%>
     <select name="bFree_combo" id="bFree_combo">
      <option value="title_content">제목+내용</option>
      <option value="title">제목</option>
      <option value="content">내용</option>
      <option value="user_name">이름</option>
      <option value="tag">태그</option>
    </select>
   
   <div id="bFree_input"> <%--텍필,버튼 --%>
    <input id="search_text" name="search_text" size="20" />
    <input type="submit" class="search_btn button_wce8e8e8" value="검색" />
   </div> <%--텍필,버튼 --%>
   
  </div> <%--검색 구간 전체 div --%>
  
	</div> <%--body 안에 있는 전체를 씌운 div --%>

<%@ include file="../include/footer.jsp"%>
