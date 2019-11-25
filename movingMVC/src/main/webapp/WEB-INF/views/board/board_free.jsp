<%@ page contentType="text/html; charset=UTF-8"%>
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
		     <a href="board_actors">배우모집</a>
		    </li>
		    
		    <li>
		     <a href="board_contest">시나리오 공모</a>
		    </li>
		    
		    <li class="bFree_community_list_free">
		     <a href="board_free">자유게시판</a>
		    </li>
		    
		    <li>
		     <a href="board_qna">QnA</a> <%--QnA 작업해야 됨 --%>
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

					<th id="hit"><span>조회</span></th>

				</tr>
			</thead>

			<tbody>
				<tr>
					<td id="no">10</td>
					<td><a href="#" id="link">곧 있으면 펀딩 끝난다 ㅅㅅ</a></td>
					<td id="author"><a href="#">아무나</a></td>
					<td id="time">17:25:04</td>
					<td id="hit">3</td>
				</tr>

				<tr>
					<td id="no">9</td>
					<td><a href="#" id="link">여기 펀딩 사이트 맞나요?</a></td>
					<td id="author"><a href="#">분노유도</a></td>
					<td id="time">17:20:48</td>
					<td id="hit">6</td>
				</tr>

				<tr>
					<td id="no">8</td>
					<td><a href="#" id="link">아이폰 써보니 신세계임 ㄹㅇ</a></td>
					<td id="author"><a href="#">이재용</a></td>
					<td id="time">17:09:09</td>
					<td id="hit">17</td>
				</tr>

				<tr>
					<td id="no">7</td>
					<td><a href="#" id="link">음식보면서 먹을 영화 추천좀</a></td>
					<td id="author"><a href="#">박진우</a></td>
					<td id="time">16:59:22</td>
					<td id="hit">25</td>
				</tr>

				<tr>
					<td id="no">6</td>
					<td><a href="#" id="link">춤추는 작은 카타리나</a></td>
					<td id="author"><a href="#">그칼에가지마오</a></td>
					<td id="time">16:46:56</td>
					<td id="hit">44</td>
				</tr>

				<tr>
					<td id="no">5</td>
					<td><a href="#" id="link">그래서 님 다이아?</a></td>
					<td id="author"><a href="#">붕붕방방붕붕</a></td>
					<td id="time">16:35:13</td>
					<td id="hit">37</td>
				</tr>

				<tr>
					<td id="no">4</td>
					<td><a href="#" id="link">저는 멍청이 입니다.</a></td>
					<td id="author"><a href="#">예비군안가버리기</a></td>
					<td id="time">16:33:24</td>
					<td id="hit">78</td>
				</tr>

				<tr>
					<td id="no">3</td>
					<td><a href="#" id="link">재미난거 추천좀</a></td>
					<td id="author"><a href="#">하이바이</a></td>
					<td id="time">15:01:04</td>
					<td id="hit">56</td>
				</tr>

				<tr>
					<td id="no">2</td>
					<td><a href="#" id="link">여기는 ㅇㅅㅇ 하는 사람 없어서 좋다</a></td>
					<td id="author"><a href="#">브라운돈까스</a></td>
					<td id="time">14:26:04</td>
					<td id="hit">64</td>
				</tr>

				<tr>
					<td id="no">1</td>
					<td><a href="#" id="link">나무아미타불 관세음보살</a></td>
					<td id="author"><a href="#">한화우승</a></td>
					<td id="time">14:25:24</td>
					<td id="hit">70</td>
				</tr>
			</tbody>
		</table>
		
    <div id="bFree_writing"> <%-- 글 쓰기 폼 div --%>
      <input type="button" class="bFree_writing_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4" 
      value="글 쓰기" />
    </div> <%-- 글 쓰기 폼 div --%>
    
    <div style="clear:both"></div>
		
		<div id="bFree_pagination"> <%--페이지 순번 --%>
		 <a href="board_free">첫페이지</a>
		 <a href="board_free">&lt;&lt;</a>
		 <a href="board_free">1</a>
		 <a href="board_free">2</a>
		 <a href="board_free">3</a>
		 <a href="board_free">4</a>
		 <a href="board_free">5</a>
		 <a href="board_free">6</a>
		 <a href="board_free">7</a>
		 <a href="board_free">8</a>
		 <a href="board_free">9</a>
		 <a href="board_free">10</a>
		 <a href="board_free">&gt;&gt;</a>
		 <a href="board_free">끝페이지</a>
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