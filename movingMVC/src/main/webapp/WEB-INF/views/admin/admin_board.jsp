<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/admin_header.jsp" %>
<div id="aBoard_wrap">
	<div class="h1">
		<h1>게시글 관리</h1>
	</div>
	<%-- 게시판 글 목록표 생성 --%>
	<table id="aBoard_table" border="1">
		<tr>
			<th scope="col" class="aBT_no">번호</th>
			<th scope="col" class="aBT_title">제목</th>
			<th scope="col" class="aBT_writer">작성자</th>
			<th scope="col" class="aBT_date">작성일</th>
			<th scope="col" class="aBT_hit">조회수</th>
		</tr>
		
		<tr>
			<td class="aBT_notice">공지<i class="fas fa-exclamation"></i></td>
			<td class="aBT_left"><a href="#" class="notice"><span>[필독]글 작성시 기본 준수 사항입니다.</a></span></td>
			<td>바악도옹수우</td>
			<td>2019.10.15</td>
			<td>3</td>
		</tr>
		
		<tr>
			<td>9</td>
			<td class="aBT_left"><a href="#"><span>안녕하세요. 저는 박동수입니다.</span></a></td>
			<td>바악도옹수우</td>
			<td>2019.10.15</td>
			<td>3</td>
		</tr>
		
		<tr>
			<td>8</td>
			<td class="aBT_left"><a href="#"><span>안녕하세요. 저는 박동수입니다.</span></a></td>
			<td>바악도옹수우</td>
			<td>2019.10.15</td>
			<td>3</td>
		</tr>
		
		<tr>
			<td>7</td>
			<td class="aBT_left"><a href="#"><span>안녕하세요. 저는 박동수입니다.</span></a></td>
			<td>바악도옹수우</td>
			<td>2019.10.15</td>
			<td>3</td>
		</tr>
		
		<tr>
			<td>6</td>
			<td class="aBT_left"><a href="#"><span>당신이 원하는 바로 그것! 지금 당장 클릭해서 확인하세요!</span></a></td>
			<td>바악지인우우</td>
			<td>2019.10.14</td>
			<td>1</td>
		</tr>
		
		<tr>
			<td>5</td>
			<td class="aBT_left"><a href="#"><span>무엇이든 물어보세요. 인터넷 지식백과사전입니다.</span></a></td>
			<td>유운사앙으은</td>
			<td>2019.10.14</td>
			<td>0</td>
		</tr>
		
		<tr>
			<td>4</td>
			<td class="aBT_left"><a href="#"><span>(공모전 수상)시간을 되돌릴수만 있다면.. 과거로 돌아간 한 남자의 감동실화 [타임머신]</span></a></td>
			<td>소옹혀언버엄</td>
			<td>2019.10.14</td>
			<td>12</td>
		</tr>
		
		<tr>
			<td>3</td>
			<td class="aBT_left"><a href="#"><span>(영화 포스팅)넌 내게 모욕감을 줬어.. 김지운 감독의 느와르 액션! [달콤한 인생]</span></a></td>
			<td>야앙요옹주운</td>
			<td>2019.10.14</td>
			<td>7</td>
		</tr>
		
		<tr>
			<td>2</td>
			<td class="aBT_left"><a href="#"><span>님들 여기 영화 등록하고싶은데 어떻게 하나여?</span></a></td>
			<td>하아이이매앤</td>
			<td>2019.10.14</td>
			<td>19</td>
		</tr>
		
		<tr>
			<td>1</td>
			<td class="aBT_left"><a href="#"><span>행님덜 내일 훈련소가는데 꿀팁 공유점해주세여ㅠㅠ 하..</span></a></td>
			<td>호옹채애후운</td>
			<td>2019.10.14</td>
			<td>67</td>
		</tr>
		
	</table>
	
	<%-- 페이징 목록 --%>
	<div id="aBoard_pageCtrl">
		<a href="#">이전</a>
		<a href="#">1</a>
		<a href="#">2</a>
		<a href="#">3</a>
		<a href="#">4</a>
		<a href="#">5</a>
		<a href="#">6</a>
		<a href="#">7</a>
		<a href="#">8</a>
		<a href="#">9</a>
		<a href="#">다음</a>
	</div>
	
	<%-- 검색창, 검색조건 콤보박스 --%>
	<div id="aBoard_search">
		<form>
			<select class="select" name="aBT_comboBox">
				<option value="전체">전체</option>
				<option value="제목">제목</option>
				<option value="내용">내용</option>
				<option value="작성자">작성자</option>
			</select>
			
			<%-- 검색 텍스트필드, 버튼 --%>
			<input type="text" name="aBorder_searchBox" class="input_box" placeholder="검색해주세요."/>
			<button type="button" value="검색" class="btn">검색</button>
		</form>
	
		
	</div>
	

</div>
<%@ include file="../include/admin_footer.jsp" %>