<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>

<div id="mChange_wrap">
	<form id="mChange_form" method="post" action="member_change_ok" onsubmit="return change_check();" enctype="multipart/form-data">
		<section>
			<div id="mChange_title">
				<h2>MOVING 회원 전환</h2>
			</div>
			
			<div id="mChange_info1">
				<span>● 회원 기본정보 </span>
				<input id="mChange_userid" class="user_input" value="회원 이메일아이디 : ${userid}" readonly>
				<input id="mChange_name" class="user_input" value="회원 이름 : ${name}" readonly >
				<input id="mChange_userLv" class="user_input" value="회원 유형 : ${user_lv}" readonly> 
			</div>
			<div id="mChange_info2">
				<span>● 회원전환 등록정보</span>
				<c:if test="${user_lv!='제작사'}">
					<input type="text" name="businessName" id="mChange_businessName" class="change_input" placeholder="사업자명" oninput="businessName_check();">
					<input name="businessRegisterNo" id="mChange_businessRegisterNo" class="change_input" placeholder="사업자등록번호" maxlength="12" oninput="businessRegisterNo_check();">
				</c:if>
				<c:if test="${user_lv=='제작사'}">
					<input type="text"  id="mChange_businessName" class="change_input" value="사업자명 : ${businessName}" readonly 
						style="background-color : #eae6fa;">
					<input id="mChange_businessRegisterNo" class="change_input" value="사업자 등록 번호 : ${businessRegisterNo}" readonly
						style="background-color : #eae6fa;">
				</c:if>
					<div id="mChange_message">
						<span id="mChange_Check"></span>
					</div>
 				<div id="mChange_file_text">
					<span>● 사업자등록증 이미지 파일첨부</span>
					<input name="mChange_file" type="file" id="mChange_file">
				</div>
			</div>
			
			<div id="mChange_button">
				<c:if test="${user_lv!='제작사'}">
					<button type="submit" id="member_change_btn">회원전환</button>
				</c:if>
				<c:if test="${user_lv=='제작사'}">
					<button type="submit" id="member_change_btn" disabled style="background-color : #9e9ea3;">회원전환</button>
				</c:if>
					<button type="button" id="member_change_cancel_btn" onclick="location='./member_mypage?mid=${id}';">돌아가기</button>
			</div>
		</section>
	</form>
</div>

