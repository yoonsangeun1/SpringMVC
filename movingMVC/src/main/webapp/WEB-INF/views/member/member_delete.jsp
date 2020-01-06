<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>

<div id="mDelete_wrap">
	<form name="member_delete" id="mDelete_form" method="post" action="member_delete_ok" onsubmit="return delete_check();">
		<section>
			<div id="mDelete_textBox1">
				<h2>MOVING 회원 탈퇴</h2>
			</div>
			<div id="mDelete_textBox2">
				<h2>어떤 점이 불편 하셨나요?</h2>
				<p> MOVING을 이용하면서 불편했던 점을 말씀해주시면, MOVING의 서비스 개선에 참고하도록 하겠습니다.</p>
			</div>
			<div id="mDelete_selectBox">
				<select id="select_memberDeleteReason" name="deactivateReasonList" onchange="domain_list();">
					<c:forEach var="why" items="${deactivateReasonList}">
      					 <option value="${why}">${why}</option>
    				</c:forEach>
				</select>
			
				<div id="deleteReason_textBox3" style="display:none">
					<input id="deleteReasonInput" name="deactivateReason" placeholder="사유를 입력해 주세요." maxlength="300" 
							oninput="Reason_input();" readonly>
				</div>
				<div id="deleteReasonCheck_message">
						<span id="deleteReason_check"></span>
				</div>
			</div>
			<div id="mDelete_textBox4">
				<h2>탈퇴 전, 꼭 확인하세요!</h2>
				<p>
					탈퇴 전 반드시 아래 유의 사항을 확인하시기 바랍니다.
					<br>
					<em>참여, 모집 중인 프로젝트가 있을때에는 MOVING 탈퇴가 불가능합니다.</em>
				</p>
				<dl>
					<dt>● 탈퇴 후 3개월 내 재가입 불가</dt>
					<dd>탈퇴 후 3개월 내 동일 아이디(이메일)로 재가입 불가</dd>
					
					<dt>● 탈퇴 후 재가입시 신규 회원혜택 제한</dt>
					<dd>재가입 후 신규 회원혜택 및 제휴 프로모션 관련 혜택 지급불가</dd>
					
					<dt>● 탈퇴 후 개인 정보 일괄 삭제</dt>
					<dd>좋아한/후원한/개설 중인 프로젝트 및 포인트 등 개인정보 일괄 삭제</dd>
					
					<dt>● 탈퇴 후 작성한 게시물은 삭제 불가</dt>
					<dd>게시글, 댓글, 펀딩한 프로젝트의 참여 리스트에 남겨진 이름 등 삭제 불가</dd>
				</dl>
				
				
					<label class="agree_checkbox">
						<hr>
						<input type="checkbox" name="agree" id="dropConfirm" onclick="agreecheck(this.form)">
						<span style="color:#9d8ce2">
							상기 MOVING 탈퇴 시 유의사항을 확인하였습니다.
						</span>
					</label>
					<div id="agreeCheck_message">
						<span id="agree_check"></span>
					</div>
			
			</div>
			<div id="mDelete_textBox5">
			
				<h2>본인 확인</h2>
				<p>
					안전한 탈퇴를 위해 본인 확인 절차를 진행합니다.
					<br>
					로그인 비밀번호를 입력해주세요.
				</p>
				<input type="button" value="본인인증" id="member_check_btn" onclick="member_checking();">
				
				<div id="member_check" style="display:none";>
					<input id="delete_userid" value=" 이메일 아이디 : ${userid}" readonly>
					<input type="password" name="delete_password" id="delete_password" placeholder="비밀번호 입력">
				</div>
			</div>
			
			<div id="mDelete_btn_box">
				<input type="submit" name="mDelete_btn" value="회원 탈퇴"	id="mDelete_btn">
				<input type="button" value="돌아가기" id="mDelete_cancel_btn" onclick="location='./member_infosetting';">
			</div>
		</section>
	</form>
</div>