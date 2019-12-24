<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" 
    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>

<script type="text/javascript">
 $(document).ready(function(){
	$('ul.tabs li').click(function() {
		var tab_id = $(this).attr('data-tab');
		
		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');
		
		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})
 })
 
</script>

<div id="mMypage_wrap">
	<div id="mMypage_form">
		<div id="mMypage_info">
			<div id="mMypage_user">
				<span id="mInfo_name" class="mInfo_text">${name} </span>
<!-- 				<span id="mInfo_snsText" class="mInfo_text">SNS주소 :</span> -->
				<br />
				<span id="mInfo_userType" class="mInfo_text"> ${user_lv}</span>
<!-- 				<span id="mInfo_snsAdress" class="mInfo_text"> {getSocial_id} </span> -->
			</div>
			<div id="mMypage_action">
				<div id="mInfo_sign" class="mInfo_text2">
					<span onclick="location='#';">지지서명 <br />
					0 개</span>
				</div>
				<div id="mInfo_board" class="mInfo_text2" onclick="location='#';">
					<span>내가 쓴 게시글 <br />
					&nbsp;&nbsp;{getBoardCount} 개</span>
				</div>
				<div id="mInfo_point"class="mInfo_text2" onclick="location='#';">
					<span>포인트 <br />
					&nbsp;&nbsp;&nbsp;${user_point} 점</span>
				</div>
			</div>
			<div id="mInfo_button">
				<button class="profile_modify_btn button_cb3a9eb border" onclick="location='#';">프로필 설정</button>
				<button class="userChange button_cb3a9eb border" onclick="location='/moving.com/member_change';">회원전환</button>
			</div>
		</div>
		<div id="mMypage_profileImg">
		</div>
		<div id="mMypage_funding_wrap">
			<div id="mMypage_fundingBtn">
				<ul class="tabs">
					<li class="tab-link_funding current" data-tab="tab-1">좋아한</li>
					<li class="tab-link_like " data-tab="tab-2">후원한</li>
					<li class="tab-link_make " data-tab="tab-3">만든</li>
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
				<p>좋아하는 프로젝트가 없습니다.</p>
  			</div>
 			<div id="tab-2" class="tab-content">
 				<br />
				<p>후원하는 프로젝트가 없습니다.</p>
 			</div>
 			<div id="tab-3" class="tab-content">
 				<br />
				<p>만든 프로젝트가 없습니다.</p>
			</div>
		</div>
	</div>
	
</div>


<%@ include file="../include/footer.jsp"%>