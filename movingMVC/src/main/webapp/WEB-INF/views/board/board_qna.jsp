<%@ page contentType="text/html; charset=UTF-8"%>
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
 	 
		<table id="bQna_table" cellspacing="0">
			<thead>
				<%--thead 요소는 테이블의 제목 그룹화. 한 번만 선언 가능하며,
  tbody나 tfoot 보다 먼저 위치.  --%>
				<tr>
					<th id="no"><span>번호</span></th>

					<th id="title"><span>제목</span></th>

					<th id="author"><span>글쓴이</span></th>

					<th id="time"><span>날짜</span></th>

					<th id="hit"><span>조회</span></th>

				</tr>
			</thead>

			<tbody>
				<tr>
					<td id="no">5</td>
					<td><a href="#" id="link">흥행 성공한 영화 뭐가 있을까요?</a></td>
					<td id="author"><a href="#">아아</a></td>
					<td id="time">17:25:04</td>
					<td id="hit">3</td>
				</tr>

				<tr>
					<td id="no"></td>
					<td><a href="#" id="link">
					 <img src="../resources/images/bQna.gif" width="16" border="0" alt="답변글이미지" />
					[답변:] 흥행 성공한 영화 뭐가 있을까요?</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">17:27:48</td>
					<td id="hit">6</td>
				</tr>

				<tr>
					<td id="no">4</td>
					<td><a href="#" id="link">결제가 안돼요</a></td>
					<td id="author"><a href="#">이바바바</a></td>
					<td id="time">17:09:09</td>
					<td id="hit">17</td>
				</tr>

				<tr>
					<td id="no"></td>
					<td><a href="#" id="link">
					 <img src="../resources/images/bQna.gif" width="16" border="0" alt="답변글이미지" />
					[답변:] 결제가 안돼요</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">17:19:22</td>
					<td id="hit">25</td>
				</tr>

				<tr>
					<td id="no">3</td>
					<td><a href="#" id="link">수수료 문의합니다.</a></td>
					<td id="author"><a href="#">그느드르므브스</a></td>
					<td id="time">16:46:56</td>
					<td id="hit">44</td>
				</tr>

				<tr>
					<td id="no"></td>
					<td><a href="#" id="link">
					 <img src="../resources/images/bQna.gif" width="16" border="0" alt="답변글이미지" />
					[답변:] 수수료 문의합니다.</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">16:47:55</td>
					<td id="hit">37</td>
				</tr>

				<tr>
					<td id="no">2</td>
					<td><a href="#" id="link">후원한 금액이 정상적으로 이용되나요?</a></td>
					<td id="author"><a href="#">예비군안가버리기</a></td>
					<td id="time">16:33:24</td>
					<td id="hit">78</td>
				</tr>

				<tr>
					<td id="no"></td>
					<td><a href="#" id="link">
					 <img src="../resources/images/bQna.gif" width="16" border="0" alt="답변글이미지" />
					[답변:] 후원한 금액이 정상적으로 이용되나요?</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">16:41:04</td>
					<td id="hit">56</td>
				</tr>

				<tr>
					<td id="no">1</td>
					<td><a href="#" id="link">사이트 공유해가도 되나요?</a></td>
					<td id="author"><a href="#">브라움</a></td>
					<td id="time">14:26:04</td>
					<td id="hit">64</td>
				</tr>

				<tr>
					<td id="no"></td>
					<td><a href="#" id="link">
					 <img src="../resources/images/bQna.gif" width="16" border="0" alt="답변글이미지" />
					[답변:] 사이트 공유해가도 되나요?</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">14:28:24</td>
					<td id="hit">70</td>
				</tr>
			</tbody>
		</table>
		
    <div id="bQna_writing"> <%-- 글 쓰기 폼 div --%>
      <input type="button" class="bQna_writing_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
      value="글 쓰기" />
    </div> <%-- 글 쓰기 폼 div --%>
    
    <div style="clear:both"></div>
		
		<div id="bQna_pagination"> <%--페이지 순번 --%>
		 <a href="board_qna">첫페이지</a>
		 <a href="board_qna">&lt;&lt;</a>
		 <a href="board_qna">1</a>
		 <a href="board_qna">2</a>
		 <a href="board_qna">3</a>
		 <a href="board_qna">4</a>
		 <a href="board_qna">5</a>
		 <a href="board_qna">6</a>
		 <a href="board_qna">7</a>
		 <a href="board_qna">8</a>
		 <a href="board_qna">9</a>
		 <a href="board_qna">10</a>
		 <a href="board_qna">&gt;&gt;</a>
		 <a href="board_qna">끝페이지</a>
		</div>

		  <div id="bQna_search"> <%--검색 구간 전체 div --%>
   <select name="bQna_combo" id="bQna_combo">
    <option value="title_content">제목+내용</option>
    <option value="title">제목</option>
    <option value="content">내용</option>
    <option value="user_name">이름</option>
    <option value="tag">태그</option>
   </select>
   
   <div id="bQna_input"> <%--텍필,버튼 --%>
    <input id="search_text" name="search_text" size="20" />
    <input type="submit" class="search_btn button_wce8e8e8" value="검색" />
   </div> <%--텍필,버튼 --%>
   
  </div> <%--검색 구간 전체 div --%>
 	
 	
 	
 	</div> <%--커뮤니티 제외 전체 --%>
 
 
 
 
 
 
 
 
 </div> <%--전체 div 묶음 --%>
 
<%@ include file="../include/footer.jsp" %>