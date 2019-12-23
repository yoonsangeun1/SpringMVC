<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/admin_header.jsp" %>
<div id="aMember_wrap">
	<div class="h1">
		<h1>회원 관리</h1>
	</div>
	
	<%-- 회원관리 목록표 생성 --%>
	<table id="aMember_table" border="1">
		<tr>
			<td colspan="10" align="right">회원 수 : ${memberCount }명</td>
		</tr>
		<tr>
			<th scope="col" class="aCheck"><input type="checkbox" name="aMember_check" value="check" />
			<th scope="col" class="aId">No.</th>
			<th scope="col" class="aNickName">닉네임</th>
			<th scope="col" class="aUserId">ID</th>
			<th scope="col" class="aName">이름</th>
			<th scope="col" class="aPhone">전화번호</th>
			<th scope="col" class="aUserStatus">상태</th>
			<th scope="col" class="aPublishAvailability">공개여부</th>
			<th scope="col" class="aUserPoint">포인트</th>
			<th scope="col" class="aUserLv">레벨</th>
		</tr>
		<c:if test="${!empty mulist}">
			<c:forEach var="m" items="${mulist }">
			<tr onclick="popup('${m.userid}');">
			
				<td class="aCheck"><input type="checkbox" name="aMember_check" value="memCheck" /></td>
				<td class="aId">${m.id }</td>
				<td class="aNickName">${m.nickname }</td>
				<td class="aUserId">${m.userid }</td>
				<td class="aName">${m.name }</td>
				<td class="aPhone">${m.phone }</td>
				<td class="aUserStatus">${m.userStatus }</td>
				<td class="aPublishAvailability">${m.publishAvailability }</td>
				<td class="aUserPoint">${m.userPoint }</td>
				<td class="aUserLv">${m.userLv }</td>
			</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty mulist }">
			<tr>
				<td colspan="10" align="center">회원 목록이 없습니다!</th>
			</tr>
		</c:if>
<!-- 		<tr> -->
<!-- 			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" /> -->
<!-- 			<td class="aUserID">mihawk648</td> -->
<!-- 			<td class="aName">박동수</td> -->
<!-- 			<td class="aEmail">pds0131@daum.net</td> -->
<!-- 			<td class="aGroup">관리자</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" /> -->
<!-- 			<td class="aUserID">mihawk648</td> -->
<!-- 			<td class="aName">박동수</td> -->
<!-- 			<td class="aEmail">pds0131@daum.net</td> -->
<!-- 			<td class="aGroup">관리자</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" /> -->
<!-- 			<td class="aUserID">mihawk648</td> -->
<!-- 			<td class="aName">박동수</td> -->
<!-- 			<td class="aEmail">pds0131@daum.net</td> -->
<!-- 			<td class="aGroup">관리자</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" /> -->
<!-- 			<td class="aUserID">mihawk648</td> -->
<!-- 			<td class="aName">박동수</td> -->
<!-- 			<td class="aEmail">pds0131@daum.net</td> -->
<!-- 			<td class="aGroup">관리자</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" /> -->
<!-- 			<td class="aUserID">mihawk648</td> -->
<!-- 			<td class="aName">박동수</td> -->
<!-- 			<td class="aEmail">pds0131@daum.net</td> -->
<!-- 			<td class="aGroup">관리자</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" /> -->
<!-- 			<td class="aUserID">JJinu</td> -->
<!-- 			<td class="aName">박진우</td> -->
<!-- 			<td class="aEmail">JWP@naver.com</td> -->
<!-- 			<td class="aGroup">관리자</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" /> -->
<!-- 			<td class="aUserID">breakfast</td> -->
<!-- 			<td class="aName">홍채훈</td> -->
<!-- 			<td class="aEmail">hongcha@yahoo.co.kr</td> -->
<!-- 			<td class="aGroup">사용자</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" /> -->
<!-- 			<td class="aUserID">Songchoding</td> -->
<!-- 			<td class="aName">송현범</td> -->
<!-- 			<td class="aEmail">hyunbum123@google.com</td> -->
<!-- 			<td class="aGroup">관리자</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" /> -->
<!-- 			<td class="aUserID">YongJunhyung</td> -->
<!-- 			<td class="aName">양용준</td> -->
<!-- 			<td class="aEmail">YYJ121@naver.com</td> -->
<!-- 			<td class="aGroup">관리자</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td class="aCheck"><input type="checkbox" name="aMember_check" value="check1" /> -->
<!-- 			<td class="aUserID">JavaChogosu</td> -->
<!-- 			<td class="aName">윤상은</td> -->
<!-- 			<td class="aEmail">highsilver@google.com</td> -->
<!-- 			<td class="aGroup">관리자</td> -->
<!-- 		</tr> -->
	</table>
	
	<%-- 페이징 목록 --%>
	<div id="aMember_pageCtrl">
		<%-- 검색전 페이징 --%>
		<c:if test="${(empty findField) && (empty findName)}">
			<c:if test="${page<=1 }">[이전]&nbsp;</c:if>
			<c:if test="${page>1 }"><a href="member?page=${page-1 }">[이전]</a>&nbsp;</c:if>
			
			<%-- 현재 쪽번호 --%>
			<c:forEach var="a" begin="${startpage }" end="${endpage }" step="1">
							
				<%-- 현재 쪽번호가 선택된 경우 --%>
				<c:if test="${a==page }"><${a }></c:if>
				
				<%-- 현재 쪽번호가 선택되지 않은 경우 --%>
				<c:if test="${a != page }"><a href="member?page=${a}">[${a }]</a>&nbsp;</c:if>
			</c:forEach>
							
			<c:if test="${page >= maxpage }">[다음]</c:if>
			<c:if test="${page < maxpage }"><a href="member?page=${page+1 }">[다음]</a></c:if>
		</c:if>
						
		<%-- 검색후 페이징 --%>
		<c:if test="${(!empty findField) || (!empty findName) }">
			<c:if test="${page<=1 }">[이전]&nbsp;</c:if>
			<c:if test="${page>1 }">
				<a href="member?page=${page-1 }&findField=${findField}&findName=${findName}">[이전]</a>&nbsp;
			</c:if>
							
		<%-- 현재 쪽번호 --%>
		<c:forEach var="a" begin="${startpage }" end="${endpage }" step="1">
								
			<%-- 현재 쪽번호가 선택된 경우 --%>
			<c:if test="${a==page }"><${a}></c:if>
								
			<%-- 현재 쪽번호가 아닌 경우 --%>
			<c:if test="${a!=page }">
				<a href="member?page=${a}&findField=${findField}&findName=${findName}">[${a}]</a>&nbsp;
			</c:if>
								
		</c:forEach>
							
		<c:if test="${page >= maxpage }">[다음]</c:if>
		<c:if test="${page < maxpage}">
			<a href="member?page=${page+1}&findField=${findField}&findName=${findName}">[다음]</a>
		</c:if>
		</c:if>
		<%-- 검색후 페이징 --%>
	</div>
	
	<%-- 검색창, 검색조건 콤보박스 --%>
	<div id="aMember_search">
		<form>
			<select class="select" name="findField">
				<option value="all">전체</option>
				<option value="nickName">닉네임</option>
				<option value="id">ID</option>
				<option value="name">이름</option>
			</select>
			
			<%-- 검색 텍스트필드, 버튼 --%>
			<input type="text" name="findName" class="input_box" placeholder="Type to search" value="${findName }">
			<button type="submit" class="btn" >Search</button>
			
		</form>
		
		
	</div>
	
	
</div>
			<script>
				var x=750;
				var y=650;
				var popupX = (screen.availWidth - x) / 2;
				if(window.screenLeft < 0){
					popupX += window.screen.width*-1;
				}else if(window.screenLeft > window.screen.width ){
					popupX += window.screen.width;
				}
				var popupY = (screen.availHeight / 2);
				function popup(userid){
					window.open('memberInfo?userid='+userid+'&page=${page}','회원정보','width='+x+',height='+y+',left='+popupX+',top='+popupY+',location=no,status=no,scrollbars=yes,resizable=no');
				}
			</script>
<%@ include file="../include/admin_footer.jsp" %>