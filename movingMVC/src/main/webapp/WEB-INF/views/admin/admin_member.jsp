<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/admin_header.jsp" %>
<div id="aMember_wrap">
	<div class="h1">
		<h1>회원 관리</h1>
	</div>
	
	<%-- 회원관리 목록표 생성 --%>
	<table id="aMember_table" border="1">
		<tr>
			<th scope="col" class="aCheck"><input type="checkbox" name="aMember_check" value="check" />
			<th scope="col" class="aUserID">User ID</th>
			<th scope="col" class="aName">Name</th>
			<th scope="col" class="aEmail">Email</th>
			<th scope="col" class="aGroup">group</th>
		</tr>
		<tr>
			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" />
			<td class="aUserID">mihawk648</td>
			<td class="aName">박동수</td>
			<td class="aEmail">pds0131@daum.net</td>
			<td class="aGroup">관리자</td>
		</tr>
		<tr>
			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" />
			<td class="aUserID">mihawk648</td>
			<td class="aName">박동수</td>
			<td class="aEmail">pds0131@daum.net</td>
			<td class="aGroup">관리자</td>
		</tr>
		<tr>
			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" />
			<td class="aUserID">mihawk648</td>
			<td class="aName">박동수</td>
			<td class="aEmail">pds0131@daum.net</td>
			<td class="aGroup">관리자</td>
		</tr>
		<tr>
			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" />
			<td class="aUserID">mihawk648</td>
			<td class="aName">박동수</td>
			<td class="aEmail">pds0131@daum.net</td>
			<td class="aGroup">관리자</td>
		</tr>
		<tr>
			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" />
			<td class="aUserID">mihawk648</td>
			<td class="aName">박동수</td>
			<td class="aEmail">pds0131@daum.net</td>
			<td class="aGroup">관리자</td>
		</tr>
		<tr>
			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" />
			<td class="aUserID">JJinu</td>
			<td class="aName">박진우</td>
			<td class="aEmail">JWP@naver.com</td>
			<td class="aGroup">관리자</td>
		</tr>
		<tr>
			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" />
			<td class="aUserID">breakfast</td>
			<td class="aName">홍채훈</td>
			<td class="aEmail">hongcha@yahoo.co.kr</td>
			<td class="aGroup">사용자</td>
		</tr>
		<tr>
			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" />
			<td class="aUserID">Songchoding</td>
			<td class="aName">송현범</td>
			<td class="aEmail">hyunbum123@google.com</td>
			<td class="aGroup">관리자</td>
		</tr>
		<tr>
			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" />
			<td class="aUserID">YongJunhyung</td>
			<td class="aName">양용준</td>
			<td class="aEmail">YYJ121@naver.com</td>
			<td class="aGroup">관리자</td>
		</tr>
		<tr>
			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" />
			<td class="aUserID">JavaChogosu</td>
			<td class="aName">윤상은</td>
			<td class="aEmail">highsilver@google.com</td>
			<td class="aGroup">관리자</td>
		</tr>
	</table>
	
	<%-- 페이징 목록 --%>
	<div id="aMember_pageCtrl">
		<a href="#">Prev</a>
		<a href="#">1</a>
		<a href="#">2</a>
		<a href="#">3</a>
		<a href="#">4</a>
		<a href="#">5</a>
		<a href="#">6</a>
		<a href="#">7</a>
		<a href="#">8</a>
		<a href="#">9</a>
		<a href="#">10</a>
		<a href="#">Next</a>
	</div>
	
	<%-- 검색창, 검색조건 콤보박스 --%>
	<div id="aMember_search">
		<form>
			<select class="select" name="aTable_comboBox">
				<option value="전체">전체</option>
				<option value="이름">이름</option>
				<option value="ID">ID</option>
				<option value="Email">Email</option>
				<option value="그룹">그룹</option>
			</select>
			
			<%-- 검색 텍스트필드, 버튼 --%>
			<input type="text" name="aTable_searchBox" class="input_box" placeholder="Type to search">
			<button type="button" class="btn">Search</button>
			
		</form>
		
		
	</div>
	
	
</div>
<%@ include file="../include/admin_footer.jsp" %>