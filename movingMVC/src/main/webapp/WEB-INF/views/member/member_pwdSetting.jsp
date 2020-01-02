<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div id="mPwdSetting_wrap">
	<form id="mPwdSetting_form" method="post" action="member_pwdSetting_ok" onsubmit="return pwdSetting_check();">
		<section>
			<div id="mPwdSetting_text">
				<h2>비밀번호 설정</h2>
			</div>
			<div id="mPwdSetting_input_box">
				<input type="password" id="password" name="password" class="pwdSetting_input" placeholder="현재 비밀번호">
				<input type="password" id="new_password" name="new_password" class="pwdSetting_input" placeholder="새 비밀번호">
				<input type="password" id="new_password2" name="new_password2" class="pwdSetting_input" placeholder="새 비밀번호 확인">
				<div id="pwdSettingCheck_message">
					<span id="pwdSettingcheck"></span>
				</div>
			</div>
	
			
			<div id="mPwdSetting_button_box">
				<button type="submit" id="mPwdSetting_btn">정보 수정</button>
				<button type="button" id="mPwdSetting_cancel_btn" onclick="location='./member_infosetting';">돌아가기</button>
			</div>
		</section>
	</form>
</div>