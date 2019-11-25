<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>							<%-- 공모전 jsp --%>
<html>
<head>
<%--head안에 넣으니 노란표시 안남, 2번째 줄에 넣었더니 노란표시 뜸 --%>
<meta charset="UTF-8">
<title>시나리오 공모</title>
</head>
<body>

	<div id="bContest_body"> <%--전체 body div묶음 --%>
	
		<div id="bContest_community"> <%-- 커뮤니티 배우모집,시나리오 공모 등  div --%>
		 <div class="bContest_community_tit"> <%--커뮤니티--%>
		  	<h1>커뮤니티</h1>
		 </div> <%--커뮤니티 --%>
		 
		  <div class="bContest_community_list"> <%--커뮤니티 밑에 리스트들 div --%>
		   <ul>
		   
		    <li>
		     <a href="board_actors">배우모집</a>
		    </li>
		    
		    <li  class="bContest_community_list_contest">
		     <a href="board_contest">시나리오 공모</a>
		    </li>
		    
		    <li>
		     <a href="board_free">자유게시판</a>
		    </li>
		    
		    <li>
		     <a href="board_qna">QnA</a> <%--QnA 작업해야 됨 --%>
		    </li>
	    
		   </ul>
		  </div> <%--커뮤니티 밑에 리스트들 div --%>
		
		</div> <%--커뮤니티 배우모집,시나리오 공모 등 div --%>

		<table id="bContest_table" cellspacing="0">
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
					<td><a href="#" id="link">따릉이와 함께한 서울</a></td>
					<td id="author"><a href="#">예비군안가버리기</a></td>
					<td id="time">17:25:04</td>
					<td id="hit">3</td>
				</tr>

				<tr>
					<td id="no">9</td>
					<td><a href="#" id="link">노래에는 힘이 있다.</a></td>
					<td id="author"><a href="#">김수</a></td>
					<td id="time">17:20:48</td>
					<td id="hit">6</td>
				</tr>

				<tr>
					<td id="no">8</td>
					<td><a href="#" id="link">Iron Dragon!</a></td>
					<td id="author"><a href="#">곽철용</a></td>
					<td id="time">17:09:09</td>
					<td id="hit">17</td>
				</tr>

				<tr>
					<td id="no">7</td>
					<td><a href="#" id="link">고양이 엄마</a></td>
					<td id="author"><a href="#">신불</a></td>
					<td id="time">16:59:22</td>
					<td id="hit">25</td>
				</tr>

				<tr>
					<td id="no">6</td>
					<td><a href="#" id="link">사과와 바나나는 정말 맛있을까?</a></td>
					<td id="author"><a href="#">바나나</a></td>
					<td id="time">16:46:56</td>
					<td id="hit">44</td>
				</tr>

				<tr>
					<td id="no">5</td>
					<td><a href="#" id="link">마스터에서 내려온 이야기</a></td>
					<td id="author"><a href="#">붕붕방방붕붕</a></td>
					<td id="time">16:35:13</td>
					<td id="hit">37</td>
				</tr>

				<tr>
					<td id="no">4</td>
					<td><a href="#" id="link">당신도 프로게이머 할 수 있다!</a></td>
					<td id="author"><a href="#">중학생페이커</a></td>
					<td id="time">16:33:24</td>
					<td id="hit">78</td>
				</tr>

				<tr>
					<td id="no">3</td>
					<td><a href="#" id="link">곽철민의 삶</a></td>
					<td id="author"><a href="#">곽철민</a></td>
					<td id="time">15:01:04</td>
					<td id="hit">56</td>
				</tr>

				<tr>
					<td id="no">2</td>
					<td><a href="#" id="link">남극탐험 이야기</a></td>
					<td id="author"><a href="#">지식채널e야기</a></td>
					<td id="time">14:26:04</td>
					<td id="hit">64</td>
				</tr>

				<tr>
					<td id="no">1</td>
					<td><a href="#" id="link">삼국지 숨겨진 이야기</a></td>
					<td id="author"><a href="#">불로장생</a></td>
					<td id="time">14:25:24</td>
					<td id="hit">70</td>
				</tr>

			</tbody>
		</table>	
		
	<div id="bContest_writing"> <%-- 글 쓰기 폼 div --%>
      <input type="button" class="bContest_writing_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
      value="글 쓰기" />
    </div> <%-- 글 쓰기 폼 div --%>
		
		<div style="clear:both"></div>
		
		<div id="bContest_pagination"> <%--페이지 순번 --%>
		 <a href="board_contest">첫페이지</a>
		 <a href="board_contest">&lt;&lt;</a>
		 <a href="board_contest">1</a>
		 <a href="board_contest">2</a>
		 <a href="board_contest">3</a>
		 <a href="board_contest">4</a>
		 <a href="board_contest">5</a>
		 <a href="board_contest">6</a>
		 <a href="board_contest">7</a>
		 <a href="board_contest">8</a>
		 <a href="board_contest">9</a>
		 <a href="board_contest">10</a>
		 <a href="board_contest">&gt;&gt;</a>
		 <a href="board_contest">끝페이지</a>
		</div>

		  <div id="bContest_search"> <%--검색 구간 전체 div --%>
   <select name="bContest_combo" id="bContest_combo">
    <option value="title_content">제목+내용</option>
    <option value="title">제목</option>
    <option value="content">내용</option>
    <option value="user_name">이름</option>
    <option value="tag">태그</option>
   </select>
   
   <div id="bContest_input"> <%--텍필,버튼 --%>
    <input id="search_text" name="search_text" size="20" />
    <input type="submit" class="search_btn button_wce8e8e8" value="검색" />
   </div> <%--텍필,버튼 --%>
   
  </div> <%--검색 구간 전체 div --%>
  
	</div> <%--body 안에 있는 전체를 씌운 div --%>

<%@ include file="../include/footer.jsp"%>