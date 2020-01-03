<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" 
    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/sns_header.jsp"%>

<div id="SNS_Insert_Page">
	<form id="mJoin_form" method="post" action="social_modify_ok" style="min-height: 0px;">
			<section>
				<h2 class="mJoin_text">소셜 계정 전환</h2>
					<div id="info_field">
							<input name="nickname" id="SNS_Up_Join" class="text_infoNickInput" placeholder="닉네임">
<!-- 							<input type="password" name="password" id="password" class="text_infoInput" placeholder="비밀번호 확인"> -->
							<input name="introduce" id="introduce" class="text_infoInput" placeholder="자기 소개">
					</div>
					
					<div id="joinBtn_field">
						<div class="joinBtn1">
							<input type="submit" class="join" id="joinBtn" value="회원가입">
						</div>
					</div>
					</section>
	</form>
</div>
