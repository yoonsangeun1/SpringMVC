<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" 
    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/sns_header.jsp"%>

<div id="SNS_Insert_Page">
	<form id="mJoin_form" method="post" action="report_ok?reportId=${s_pro.id}&sendId=${sessionSocial.id}" style="min-height: 0px;">
			<section>
				<h2 class="mJoin_text">회원 신고</h2>
					<div id="info_field">
							<p style="font-size:14px;padding-left: 8px;margin-top: 20px;">신고하려는 닉네임</p>
							<input name="nickname" id="SNS_Up_Join" class="text_infoNickInput" value="${s_pro.nickname}" style="margin-top: 5px;" maxlength="5">
<!-- 							<input type="password" name="password" id="password" class="text_infoInput" placeholder="비밀번호 확인"> -->
							<p style="font-size:14px;padding-left: 8px;margin-top: 30px;">신고 항목</p>
							<div style="background: #eee; font-size: 15px; width:415px; height:83px; padding:10px 5px; line-height:21px; margin:5px;">
								<input class="SNS_Radio_Box" type="radio" name="reportWhy" value="타인 사칭">타인 사칭
								<input class="SNS_Radio_Box" type="radio" name="reportWhy" value="가짜 계정">가짜 계정
								<input class="SNS_Radio_Box" type="radio" name="reportWhy" value="가명">가명
								<input class="SNS_Radio_Box" type="radio" name="reportWhy" value="부적절한 콘텐츠 게시">부적절한 콘텐츠 게시<br/>
								<input class="SNS_Radio_Box" type="radio" name="reportWhy" value="내 계정에 액세스할 수 없습니다">내 계정에 액세스할 수 없습니다
								<input class="SNS_Radio_Box" type="radio" name="reportWhy" value="돕고 싶습니다">돕고 싶습니다<br/>
								<input class="SNS_Radio_Box" type="radio" name="reportWhy" value="기타 문제">기타 문제
							</div>
							<p style="font-size:14px;padding-left: 8px;margin-top: 10px;">상세 이유</p>
							<input name="report" id="report" class="text_infoInput" maxlength="30">
					</div>
					
					<div id="joinBtn_field">
						<div class="joinBtn1">
							<input type="submit" class="join" id="joinBtn" value="신고">
						</div>
					</div>
					</section>
	</form>
</div>
