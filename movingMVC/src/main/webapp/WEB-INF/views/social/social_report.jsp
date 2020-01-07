<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" 
    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/sns_header.jsp"%>

<div id="SNS_Insert_Page">
	<form id="mJoin_form" method="post" action="report_ok?reportId=${s_pro.id}" style="min-height: 0px;">
			<section>
				<h2 class="mJoin_text">회원 신고</h2>
					<div id="info_field">
							<p style="font-size:14px;padding-left: 8px;margin-top: 20px;">신고하려는 닉네임</p>
							<input name="nickname" id="SNS_Up_Join" class="text_infoNickInput" value="${s_pro.nickname}" style="margin-top: 5px;" maxlength="5">
<!-- 							<input type="password" name="password" id="password" class="text_infoInput" placeholder="비밀번호 확인"> -->
							<p style="font-size:14px;padding-left: 8px;margin-top: 30px;">신고 항목</p>
							<input type="checkbox" name="reportWhy" value="타인 사칭">
							<input type="checkbox" name="reportWhy" value="가짜 계정">
							<input type="checkbox" name="reportWhy" value="가명">
							<input type="checkbox" name="reportWhy" value="가명">
							<p style="font-size:14px;padding-left: 8px;margin-top: 30px;">상세 이유</p>
							<input name="introduce" id="introduce" class="text_infoInput" value="${s_pro.introduce}" maxlength="30">
					</div>
					
					<div id="joinBtn_field">
						<div class="joinBtn1">
							<input type="submit" class="join" id="joinBtn" value="수정">
						</div>
					</div>
					</section>
	</form>
</div>
