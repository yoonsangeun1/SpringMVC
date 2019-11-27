<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div class="CorporationRegistrationWrapper_wrapper__3dJN9">
		<div>
			<div class="MainNavbar_container__jl8oX">
				<a href="/"><svg xmlns="http://www.w3.org/2000/svg" width="85"
						height="25" viewBox="0 0 85 25">
						<path fill="#1D2129" fill-rule="nonzero"
							d="M58.49 2.23h2.11v21.29H59a1.73 1.73 0 0 1-1.62-1.16 9 9 0 0 1-10.93-.28 7.48 7.48 0 0 1-2.75-6.29 7.65 7.65 0 0 1 12.79-5.07V4.23a2 2 0 0 1 2-2zm-6.3 18.62a4.36 4.36 0 0 0 4.16-4.52 4.19 4.19 0 1 0-8.35 0 4.36 4.36 0 0 0 4.19 4.52zM42 23.52h-1.52a1.73 1.73 0 0 1-1.64-1.16 9 9 0 0 1-10.93-.28 7.48 7.48 0 0 1-2.75-6.29A7.65 7.65 0 0 1 38 10.72a2 2 0 0 1 1.9-1.79H42v14.59zm-8.41-2.67h.02a4.35 4.35 0 0 0 4.15-4.52 4.35 4.35 0 0 0-4.17-4.51 4.35 4.35 0 0 0-4.17 4.51 4.36 4.36 0 0 0 4.17 4.52zM83.47 8.94v2.11l-7.07 9.06h7.06v3.47h-13v-2.1l7.08-9.07h-6.62v-1.47a2 2 0 0 1 2-2h10.55zM65.86 7.3a2.48 2.48 0 1 1 0-4.96 2.48 2.48 0 0 1 0 4.96zM21.21 8.94h4.14l-4.86 14.59h-4.15l-3.21-9.36-3.21 9.36H5.77L.92 8.94h4.13L8 18l2.5-7.74a2 2 0 0 1 1.86-1.34h2.9l3 9.08 2.95-9.06zm42.65 14.59l-.04-12.59a2 2 0 0 1 2-2h2.11v14.59h-4.07z"></path></svg></a>
			</div>
			<div class="CorporationRegistrationSubHeader_container__K95sR">
				<h3 class="CorporationRegistrationSubHeader_title__5nLZy">메이커
					정보</h3>
				<p class="CorporationRegistrationSubHeader_description__1K8O8"></p>
				<p class="CorporationRegistrationSubHeader_description__1K8O8">먼저
					메이커 정보를 입력하세요. 작성 후 펀딩 준비를 위한 콘텐츠 작성이 가능합니다.</p>
			</div>
			<form class="wz form Form_form__3ASTU">
				<div class="Loader_loader__d9YUC Form_loader__1YJ5I"></div>
				<div>
					<div
						class="field Form_field__35I9T required CorporationRegistrationCorpNameField_field__1N1CN">
						<label class="wz label Label_label__3oH0h">메이커(기업)명</label>
						<div
							class="wz input right CorporationRegistrationCorpNameField_corpNameInput__23YJL">
							<input maxlength="30" placeholder="" type="text" value="">
						</div>
					</div>
					<div
						class="field Form_field__35I9T required FormFieldDropdown_field__2lkkF">
						<label
							class="wz label FormFieldDropdown_label__18JUB Label_label__3oH0h">개인
							· 사업자 구분</label>
						<div>
							<div
								class="wz dropdown outline block FormFieldDropdown_dropdown__bxZmv Dropdown_dropdown__31dpZ">
								<div class="Dropdown_value__35Inl Dropdown_placeholder__3Wobx"
									aria-hidden="true">사업자 구분 선택</div>
								<select name="corpType"><option value="" disabled="">사업자
										구분 선택</option>
									<option value="IV">개인</option>
									<option value="IB">개인 사업자</option>
									<option value="CB">법인 사업자</option></select>
							</div>
						</div>
					</div>
				</div>
				<div
					class="CorporationRegistrationAdminFieldsContainer_container__17OPi">
					<div
						class="field Form_field__35I9T required FormFieldInput_field__2r889">
						<label
							class="wz label FormFieldInput_label__2Ibta Label_label__3oH0h">관리자
							명</label>
						<div class="FormFieldInput_inputContainer__3rjBp">
							<div class="wz input right FormFieldInput_input__19Je0">
								<input name="nickName" disabled="" placeholder="" type="text"
									value="윤상은">
							</div>
						</div>
					</div>
					<div
						class="field Form_field__35I9T required FormFieldInput_field__2r889">
						<label
							class="wz label FormFieldInput_label__2Ibta Label_label__3oH0h">관리자
							이메일</label>
						<div class="FormFieldInput_inputContainer__3rjBp">
							<div class="wz input right FormFieldInput_input__19Je0">
								<input name="userName" disabled="" placeholder="" type="text"
									value="yoonsangeun1@gmail.com">
							</div>
							<em class="helper FormFieldInput_helper__3AfGh">관리자명과 이메일
								주소는 로그인 아이디와 연동되어 있으므로 변경을 원할 경우 회원 정보 설정에서 변경하세요.</em>
						</div>
					</div>
					<div
						class="field Form_field__35I9T required CorporationRegistrationAdminMobileField_field__1S21G">
						<label class="wz label Label_label__3oH0h">관리자 휴대폰 번호</label>
						<div
							class="CorporationRegistrationAdminMobileField_inputWrapper__3jmcw">
							<div
								class="wz input right CorporationRegistrationAdminMobileField_input__319MK">
								<input placeholder="" type="text" value="01034299141"
									readonly="">
							</div>
							<button type="button" class="wz button">변경</button>
						</div>
						<em class="helper success">인증을 완료한 회원입니다.</em>
					</div>
					<div
						class="CorporationRegistrationAdminFieldsContainer_checkWrap__2CCAe">
						<label class="wz Checkbox_checkbox__2Dr81 checkbox"><input
							type="checkbox" name="isAgreeCollection">
							<div>(필수) 개인 정보 수집 동의</div></label>
					</div>
					<div>
						<label class="wz Checkbox_checkbox__2Dr81 checkbox"><input
							type="checkbox" name="isReceiveMarketing">
							<div>(선택) 와디즈 메이커를 위한 유용한 뉴스레터 받기</div></label>
					</div>
				</div>
				<button type="button" disabled=""
					class="wz button primary CorporationRegistrationContainer_button__D8sW6">계속
					진행하기</button>
			</form>
		</div>
	</div>
</body>
</html>