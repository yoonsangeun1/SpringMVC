<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>

	<div id="bNotice_body"> <%--전체 body div묶음 --%>
	
		<div id="bNotice_update"> <%-- 업데이트 사항. 공지,이벤트 등 div --%>
		 <div class="bNotice_update_tit"> <%--업데이트--%>
		  	<h1>업데이트</h1>
		 </div> <%--업데이트 --%>
		 
		  <div class="bNotice_update_list"> <%--업데이트 밑에 리스트들 div --%>
		   <ul>
		   
		    <li class="bNotice_update_list_notice">
		     <a href="board_notice">공지사항</a>
		    </li>
		    
		    <li>
		     <a href="board_event">이벤트</a>
		    </li>
		    
		    <li>
		     <a href="board_faq">FAQ</a>
		    </li>
		    
		   </ul>
		  </div> <%--업데이트 밑에 리스트들 div --%>
		
		</div> <%-- 업데이트 사항. 공지,이벤트 등 div --%>

		<table id="bNotice_table" cellspacing="0">
			<thead >
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
					<td><a href="#" id="bNotice_link">공지사항 10번째 입니다.</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">17:25:04</td>
					<td id="hit">3</td>
				</tr>

				<tr>
					<td id="no">9</td>
					<td><a href="#" id="bNotice_link">공지사항 9번째 입니다.</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">17:20:48</td>
					<td id="hit">6</td>
				</tr>

				<tr>
					<td id="no">8</td>
					<td><a href="#" id="bNotice_link">공지사항 8번째 입니다.</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">17:09:09</td>
					<td id="hit">17</td>
				</tr>

				<tr>
					<td id="no">7</td>
					<td><a href="#" id="bNotice_link">공지사항 7번째 입니다.</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">16:59:22</td>
					<td id="hit">25</td>
				</tr>

				<tr>
					<td id="no">6</td>
					<td><a href="#" id="bNotice_link">공지사항 6번째 입니다.</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">16:46:56</td>
					<td id="hit">44</td>
				</tr>

				<tr>
					<td id="no">5</td>
					<td><a href="#" id="bNotice_link">공지사항 5번째 입니다.</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">16:35:13</td>
					<td id="hit">37</td>
				</tr>

				<tr>
					<td id="no">4</td>
					<td><a href="#" id="bNotice_link">공지사항 4번째 입니다.</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">16:33:24</td>
					<td id="hit">78</td>
				</tr>

				<tr>
					<td id="no">3</td>
					<td><a href="#" id="bNotice_link">공지사항 3번째 입니다.</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">15:01:04</td>
					<td id="hit">56</td>
				</tr>

				<tr>
					<td id="no">2</td>
					<td><a href="#" id="bNotice_link">공지사항 2번째 입니다.</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">14:26:04</td>
					<td id="hit">64</td>
				</tr>

				<tr>
					<td id="no">1</td>
					<td><a href="#" id="bNotice_link">공지사항 1번째 입니다.</a></td>
					<td id="author"><a href="#">운영자</a></td>
					<td id="time">14:25:24</td>
					<td id="hit">70</td>
				</tr>

			</tbody>
		</table>
		
	<div id="bNotice_writing"> <%-- 글 쓰기 폼 div --%>
      <input type="button" class="bNotice_writing_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
      value="글 쓰기" />
    </div> <%-- 글 쓰기 폼 div --%>
		
		<div style="clear:both"></div>
		
		<div id="bNotice_pagination"> <%--페이지 순번 --%>
		 <a href="board_notice">첫페이지</a>
		 <a href="board_notice">&lt;&lt;</a>
		 <a href="board_notice">1</a>
		 <a href="board_notice">2</a>
		 <a href="board_notice">3</a>
		 <a href="board_notice">4</a>
		 <a href="board_notice">5</a>
		 <a href="board_notice">6</a>
		 <a href="board_notice">7</a>
		 <a href="board_notice">8</a>
		 <a href="board_notice">9</a>
		 <a href="board_notice">10</a>
		 <a href="board_notice">&gt;&gt;</a>
		 <a href="board_notice">끝페이지</a>
		</div>

		  <div id="bNotice_search"> <%--검색 구간 전체 div --%>
   <select name="bNotice_combo" id="bNotice_combo">
    <option value="title_content">제목+내용</option>
    <option value="title">제목</option>
    <option value="content">내용</option>
    <option value="user_name">이름</option>
    <option value="tag">태그</option>
   </select>
   
   <div id="bNotice_input"> <%--텍필,버튼 --%>
    <input id="search_text" name="search_text" size="20" />
    <input type="submit" class="search_btn button_wce8e8e8" value="검색" />
   </div> <%--텍필,버튼 --%>
   
  </div> <%--검색 구간 전체 div --%>
  
	</div> <%--body 안에 있는 전체를 씌운 div --%>

<%@ include file="../include/footer.jsp"%>