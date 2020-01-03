<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div id="mBIsetting_wrap">
	<form id="mBIsetting_form" method="post" action="member_basicInfoSetting_ok" onsubmit="return biSetting_check();">
		<section>
			<div id="mBIsetting_text">
				<h2>기본 정보 설정</h2>
			</div>
			<div id="mBIsetting_input_box">
				<div id="mBIsetting_info_box">
					<span id="edit_email" style="font-size:20px;">&nbsp;&nbsp;● 회원 기본정보</span>
					<input type="email" id="setting_email" name="setting_email" class="bi_input" value="회원 이메일아이디 : ${userid}" placeholder="이메일 아이디" readonly="true" oninput="editUserid_check();" /> <!-- 현재 이메일아이디 출력 -->
					<input id="setting_name" class="bi_input" value="회원 이름 : ${name}" placeholder="이름" readonly> <!-- 세션 이름 출력 -->
				</div>
				
				<div id="mBIsetting_phone_box">
					<!-- 현재 휴대폰번호 출력 -->
					<span id="edit_phone" style="font-size:20px;">&nbsp;&nbsp;● 휴대폰번호 변경  <br></span>
					
					<div id="mBIsetting_phone_inputbox">
					<select name="edit_phone01" id="edit_phone01" class="input_box" style="width:95px; height:51px;
						margin:5px auto; padding:1px 0px; font:bold 15px 'lucida sans', 'trebuchet MS', 'Tahoma'; color:gray;">
     					<c:forEach var="p2" items="${phonelist2}">
      						<option value="${p2}">${p2}</option>
     					</c:forEach>
     					</select>
     					&nbsp;-&nbsp;
     					<input name="edit_phone02" id="edit_phone02" value="${phone02}"
     					 maxlength="4" class="input_box" style="width:95px; height:51px;
						margin:5px auto; padding:1px 0px; font:bold 15px 'lucida sans', 'trebuchet MS', 'Tahoma'; color:gray;" readonly="true"/>
						&nbsp;-&nbsp;
						<input name="edit_phone03" id="edit_phone03" value="${phone03}"
						 maxlength="4" class="input_box" style="width:95px; height:51px;
						margin:5px auto; padding:1px 0px; font:bold 15px 'lucida sans', 'trebuchet MS', 'Tahoma'; color:gray;" readonly="true"/>
					</div>
					<button type="button" id="phone_modify_btn" class="modify_btn" onclick="modify_phone();">변경</button>
				</div>
			</div>
			<div id="mBIsetting_button_box">
				<button type="submit" id="mBIsetting_btn">정보 수정</button>
				<button type="button" id="mBIsetting_cancel_btn" onclick="location='./member_infosetting';">돌아가기</button>
			</div>
		</section>
	</form>
</div>