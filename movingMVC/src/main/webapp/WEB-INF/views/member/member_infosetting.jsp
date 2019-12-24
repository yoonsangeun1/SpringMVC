<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>

	<div id="mSetting_wrap">
		<div class="mSetting_menu">
			<div id="mSetting_text">
				<h2>MOVING 정보 설정</h2>
			</div>
			
			<div id="mSetting_button">
				<div class="mSetting_submenu">
					<div id="submenu_info" class="submenu" onclick="location='member/login';">
						<div class="submenu_text">
							<h3>기본 정보 설정</h3>
							<p>이름, 이메일, 휴대폰 등</p>
						</div>
						<div class="submenu_btn">
							<i class="fas fa-chevron-right" aria-hidden="true" style="float:right"></i>
						</div>
					</div>
					<div id="submenu_password" class="submenu">
						<div class="submenu_text">
							<h3>비밀번호 설정</h3>
							<p>비밀번호 재설정</p>
						</div>
						<div class="submenu_btn">
							<i class="fas fa-chevron-right" aria-hidden="true" style="float:right"></i>
						</div>
					</div>
					<div id="submenu_profile" class="submenu">
						<div class="submenu_text">
							<h3>프로필 정보 설정</h3>
							<p>프로필 사진, 선호장르</p>
						</div>
						<div class="submenu_btn">
							<i class="fas fa-chevron-right" aria-hidden="true" style="float:right"></i>
						</div>
					</div>
					<div id="submenu_delete_member" class="submenu">
						<div class="submenu_text">
							<h3>회원 탈퇴</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="../include/footer.jsp"%>