<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" 
    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>\

<script type="text/javascript">
 $(document).ready(function(){
	$('ul.tabs li').click(function() {
		var tab_id = $(this).attr('data-tab');
		
		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');
		
		$(this).addClass('current');
		$("#"+tab_id).addClass('current');

	});
	
	getUserInfo();
 })
 
</script>

<div id="mMypage_wrap">
	<div id="mMypage_form">
		<div id="mMypage_info">
			<div id="mMypage_user">
				<span id="mInfo_name" class="mInfo_text">${userInfo.name} </span>
<!-- 				<span id="mInfo_snsText" class="mInfo_text">SNS주소 :</span> -->
				<br />
				<c:if test="${userInfo.userLv==1}">
				<span id="mInfo_userType" class="mInfo_text"> 개인 회원</span>
				</c:if>
				<c:if test="${userInfo.userLv==2}">
				<span id="mInfo_userType" class="mInfo_text"> 우수 회원</span>
				</c:if>
				<c:if test="${userInfo.userLv==3}">
				<span id="mInfo_userType" class="mInfo_text"> 제작사 회원</span>
				</c:if>
				<c:if test="${userInfo.userLv==4}">
				<span id="mInfo_userType" class="mInfo_text"> 관리자</span>
				</c:if>
<!-- 				<span id="mInfo_snsAdress" class="mInfo_text"> {getSocial_id} </span> -->
			</div>
			<div id="mMypage_action">
				<div id="mInfo_sign" class="mInfo_text2">
					<span onclick="location='#';">지지서명 <br />
					0 개</span>
				</div>
				<div id="mInfo_board" class="mInfo_text2" onclick="location='#';">
					<span>내가 쓴 게시글 <br />
					&nbsp;&nbsp;${boardCount} 개</span>
				</div>
				<div id="mInfo_point"class="mInfo_text2" onclick="location='#';">
					<span>포인트 <br />
					&nbsp;&nbsp;&nbsp;${userInfo.userPoint} 점</span>
				</div>
			</div>
			<c:if test="${mid==id }">
			<div id="mInfo_button">
				<button class="profile_modify_btn button_cb3a9eb border" onclick="location='/moving.com/member_profileSetting';">프로필 설정</button>
				<button class="userChange button_cb3a9eb border" onclick="location='/moving.com/member_change';">회원전환</button>
			</div>
			</c:if>
		</div>
		
		<div id="mMypage_profileImg">
			<c:if test="${userInfo.profileImageUrl == 'default'}">
				<img id="myProfileImage" class="Avatar_image" src="./images/member_profile.png"	style="width:220px; height:220px; border-radius: 50%;">
			</c:if>
								
			<c:if test="${userInfo.profileImageUrl != 'default'}">
				<img id="myProfileImage" class="Avatar_image" src="${userInfo.profileImageUrl}" style="width:220px; height:220px; border-radius: 50%;">
			</c:if>
		</div>
		<div id="mMypage_funding_wrap">
			<div id="mMypage_fundingBtn">
				<ul class="tabs">
					<li class="tab-link_funding current" data-tab="tab-1">좋아한</li>
					<li class="tab-link_like " data-tab="tab-2">후원한</li>
					<li class="tab-link_make " data-tab="tab-3">만든</li>
					<li class="tab-link_write " data-tab="tab-4">작성한</li>
				</ul>
				
				<div id="top-area">
						<div class="select-box">
							<select id="selectProjectType">
								<option value="all" selected="selected">전체</option>
								<option value="invest">최신순</option>
								<option value="reward">오래된순</option>
								<option value="reward">마감임박순</option>
								<option value="reward">종료된</option>
							</select>
						</div>
					</div>				
			</div>
		
			<div id="tab-1" class="tab-content current">
				<br />
				<c:if test="${empty likeList }">
				<p>좋아하는 프로젝트가 없습니다.</p>
				</c:if>
				<c:if test="${!empty likeList }">
				<c:forEach var="l" items="${likeList}">
				<div id="hover_container-category" style="float: left; width: 280px; height:250px;"
					onclick="location.href='/moving.com/project/content?category=20001&id=${l.id}';">
						<c:if test="${l.thumbnailImage == NULL}">
							<img src="../images/funding05.PNG" width="270" height="150"  />
						</c:if>
						<c:if test="${l.thumbnailImage != NULL}">
							<img src="${l.thumbnailImage}" width="270" height="150"  />
						</c:if>
						<div class="hover_container-category-padding">
						<h3>${l.title }</h3> <br/>&nbsp;&nbsp;&nbsp;좋아요 일시: ${l.moveVO.registerDate } <%-- <a href="/moving.com/member_mypage?mid=${l.mUserVO.id }">
						by. ${l.mUserVO.nickname }</a> --%>
						
						</div>
				</div>
				</c:forEach>
				</c:if>
  			</div>
  			
  			
  			
  			
 			<div id="tab-2" class="tab-content">
 				<br />
				<p>후원하는 프로젝트가 없습니다.</p>
 			</div>
 			
 			
 			
 			<div id="tab-3" class="tab-content">
 				<br />
				<c:if test="${empty makeList }">
				<p>좋아하는 프로젝트가 없습니다.</p>
				</c:if>
				<c:if test="${!empty makeList }">
				<c:forEach var="l" items="${makeList}">
				<c:if test="${statusCode == 0 }"> 아직 완료되지 않은 프로젝트입니다 </c:if>
				<div id="hover_container-category" style="float: left; width: 280px; height:250px;"
					onclick="location.href='/moving.com/project/content?category=20001&id=${l.id}';">
						<c:if test="${empty l.thumbnailImage}">
							<img src="/resources/images/funding05.PNG" width="270" height="150"  />
						</c:if>
						<c:if test="${l.thumbnailImage != NULL}">
							<img src="${l.thumbnailImage}" width="270" height="150"  />
						</c:if>
						<div class="hover_container-category-padding">
						<h3>${l.title }</h3> 
						</div>
				</div>
				</c:forEach>
				</c:if>
			</div>
			
			
			
 			<div id="tab-4" class="tab-content">
 				<br />
				<table id="aBoard_table" style="width: 920px; background-color: white" border="1">
		<tr>
			<th scope="col" class="aBT_no" style="width: 100px">카테고리</th>
			<th scope="col" class="aBT_title" style="width: 100px">번호</th>
			<th scope="col" class="aBT_writer" style="width: 300px">제목</th>
			<th scope="col" class="aBT_date" style="width: 150px">작성일</th>
			<th scope="col" class="aBT_hit" style="width: 100px">조회수</th>
		</tr>
		<c:if test="${!empty writeList}">
			<c:forEach var="n" items="${writeList }">
			<tr data-value="${n.id }" class="tag" >
				<td class="bNo" data-value="${n.id }" style="width: 100px">${n.codeNo }</td>
				<td class="bNo" data-value="${n.id }" style="width: 100px">${n.id }</td>
				<td class="bTitle" data-value="${n.id }" style="width: 300px">${n.title }</td>
				<td class="bRegisterDate" data-value="${n.id }" style="width: 150px">${n.registerDate }</td>
				<td class="bHit" data-value="${n.id }" style="width: 100px">${n.hit }</td>
			</tr>
			</c:forEach>
		</c:if>
		
		<c:if test="${empty writeList }">
			<tr>
				<td colspan="6" align="center">등록한 게시글이 없습니다!</td>
			</tr>
		</c:if>
		</table>
			</div>
			
		</div>
	</div>
	
</div>


<%@ include file="../include/footer.jsp"%>