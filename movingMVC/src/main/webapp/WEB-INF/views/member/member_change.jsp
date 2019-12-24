<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div id="mChange_wrap">
	<form id="mChange_form" method="post" action="member_change_ok" onsubmit="return change_check();" enctype="multipart/form-data">
		<section>
			<div id="mChange_title">
				<h2>MOVING 회원 전환</h2>
			</div>
			
			<div id="mChange_info1">
				<span>● 회원 기본정보 </span>
				<input id="mChange_userid" class="user_input" value="${userid}" readonly>
				<input id="mChange_name" class="user_input" value="회원 이름 : ${name}" readonly >
				<input id="mChange_userLv" class="user_input" value="회원 유형 : ${user_lv}" readonly> 
			</div>
			<div id="mChange_info2">
				<span>● 회원전환 등록정보</span>
				<input type="text" name="businessName" id="mChange_businessName" class="change_input" placeholder="사업자명" oninput="businessName_check();">
<!-- 				<input type="button" value="중복확인" class="change_input_button" onclick="businessName_check();"> -->
				<input name="businessRegisterNo" id="mChange_businessRegisterNo" class="change_input" placeholder="사업자등록번호" maxlength="12" oninput="businessRegisterNo_check();">
				
<!-- 				<input type="button" value="중복확인" class="change_input_button" onclick="businessRegisterNo_check();"> -->
					<div id="mChange_message">
						<span id="mChange_Check"></span>
					</div>
<!-- 				<input id="mChange_businessLicenseImagePath" placeholder="사업자등록증 이미지경로" readonly> -->
				<div id="mChange_file_text">
					<span>● 사업자등록증 이미지 파일첨부</span>
					<input name="mChange_file" type="file" id="mChange_file">
				</div>
			</div>
			
			<div id="mChange_button">
				<button type="submit" id="member_change_btn">회원전환</button>
				<button type="button" id="member_change_cancel_btn" onclick="location='./member/mypage';">돌아가기</button>
			</div>
		</section>
	</form>
</div>

