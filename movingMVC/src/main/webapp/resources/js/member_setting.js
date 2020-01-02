/**
 * member_setting.js  설정 - 기본설정 / 비밀번호설정 / 프로필정보설정 / 회원탈퇴
 */


//
/**************** 기본정보 설정 페이지 js ****************/


//이메일아이디 변경버튼 클릭시 입력창 활성화
function modify_email() {
		$('#setting_email').val("");
		$('#setting_email').prop('readonly',false);
};
//휴대폰번호 변경버튼 클릭시 입력창 활성화
function modify_phone() {
	$('#edit_phone02').val("");
	$('#edit_phone03').val("");
	$('#edit_phone02').prop('readonly',false);
	$('#edit_phone03').prop('readonly',false);
};

//기본정보설정 이메일아이디 변경시 이메일아이디 중복체크
function editUserid_check() {
	
/** 이메일아이디 실시간 중복체크 */
	$setting_email=$.trim($("#setting_email").val());

	$.ajax({ //$는 jQuery , $.ajax는 jQuery내의 아작스 실행
		type:"POST", //데이터를 서버로 보내는 방법
		url:"member/edit_emailCheck", //아작스 서버 주소 파일명->컨트롤러에 등록한 매핑주소
		data : {"setting_email":$setting_email}, //좌측 email파라미터 이름에 우측 $email 변수값을 저장
		datatype : "int", //서버의 실행된 결과값을 사용자로 받아오는 방법
		success : function(data) { //success는 아작스로 받아오는 것이 성공했을 경우 서버 데이터를 data변수에 저장
			if(data==1) { //중복 이메일이 있다면
				$("#emailModifyCheck").text("중복된 이메일입니다. 다시 입력해주세요 ! :P"); //nickcheck영역에 문자열을 추가
				$("#emailModifyCheck").css("color","red");
				$("#emailModifyCheck").css("font-size","15px");
				$("#emailModifyCheck").css("font-weight","bold");
				$("#setting_email").css("background-color","#FFCECE");
			}else if(!(check_useremail($setting_email))) { //이메일 형식이 맞지 않다면
				$("#emailModifyCheck").text("불가능한 이메일형식입니다. 다시 입력해주세요 ! :P"); //nickcheck영역에 문자열을 추가
				$("#emailModifyCheck").css("color","red");
				$("#emailModifyCheck").css("font-size","15px");
				$("#emailModifyCheck").css("font-weight","bold");
				$("#setting_email").css("background-color","#FFCECE");
			}else { //중복된 이메일이 없다면
				$("#emailModifyCheck").text("사용 가능한 이메일입니다. 이메일인증을 해주세요 ! :)");
				$("#emailModifyCheck").css("color","#9d8ce2");
				$("#emailModifyCheck").css("font-size","15px");
				$("#emailModifyCheck").css("font-weight","bold");//nickcheck영역에 문자열을 추가
				$("#setting_email").css("background-color","#eae6fa");
			} 
		},
		error : function() { //비동기식 아작스로 서버디비 데이터를 못가져와서 에러가 발생했을때 호출되는 함수
			alert("data error");
		}
	}); //$.ajax
	
	function check_useremail($setting_email) {
		var pattern = new RegExp(/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{3}$/i); //닉네임을 한글,영문,숫자
		return pattern.test($setting_email);
	};
}

/**************** 비밀번호 설정 페이지 js ****************/


//정보 수정 버튼 클릭시 유효성 검증
function pwdSetting_check() {
	if($.trim($("#password").val()) == "") {
		alert("현재 비밀번호를 입력해주세요 !");
		$("#password").val("").focus();
		return false;
	}
	$new_password=$.trim($("#new_password").val());
	$new_password2=$.trim($("#new_password2").val());
	if($new_password == "") {
		alert("새 비밀번호를 입력해주세요 !");
		$("#new_password").val("").focus();
		return false;
	}
	if(!($new_password == "")) {
		if($new_password.length < 4 || $new_password.length > 10){
			$("#pwdSettingcheck").text('비밀번호는 4~10자 한글,영문,숫자 조합만 가능합니다.');
			$("#pwdSettingcheck").css("color","red");
			$("#pwdSettingcheck").css("font-size","15px");
			$("#pwdSettingcheck").css("font-weight","bold");
			$("#new_password").css("background-color","#FFCECE");
			$("#new_password2").css("background-color","#FFCECE");
			$("#new_password2").val("");
			$("#new_password").val('').focus();
			return false;
		}
	}
	if($new_password2 == "") {
		alert("새 비밀번호 확인을 입력해주세요 !");
		$("#new_password2").val("").focus();
		return false;
	}
	if($new_password != $new_password2) {
		alert("새 비밀번호가 일치하지 않습니다 !");
		$("#new_password").val("").focus();
		$("#new_password2").val("");
		return false;
	}
}
 
//새 비밀번호와 새 비밀번호 확인 일치여부
$(function(){
	$('#new_password2').keyup(function(){
		if($('#new_password').val() != $('#new_password2').val()){
			$('#pwdSettingcheck').text("비밀번호가 일치하지 않습니다 ! :P ");
			$("#pwdSettingcheck").css("color","red");
			$("#pwdSettingcheck").css("font-size","15px");
			$("#pwdSettingcheck").css("font-weight","bold");
			$("#new_password").css("background-color","#FFCECE");
			$("#new_password2").css("background-color","#FFCECE");
		}else {
			$('#pwdSettingcheck').text("비밀번호가 일치합니다 ! :) ");
			$("#pwdSettingcheck").css("color","#9d8ce2");
			$("#pwdSettingcheck").css("font-size","15px");
			$("#pwdSettingcheck").css("font-weight","bold");
			$("#new_password").css("background-color","#eae6fa");
			$("#new_password2").css("background-color","#eae6fa");
		}
	});
});

//현재비밀번호, 새 비밀번호, 새 비밀번호 확인란 입력시 css설정
$(function(){
	$('#password').keyup(function() {
		 $("#password").css("background-color","#eae6fa");
	})
	$('#new_password').keyup(function() {
		 $("#new_password").css("background-color","#eae6fa");
	})
	$('#new_password2').keyup(function() {
		 $("#new_password2").css("background-color","#eae6fa");
	})
})




/**************** 프로필정보 설정 페이지 js ****************/


//$(document).ready(function(){
//	
//
// $("#profile_file").change(function(){
//   if(this.files && this.files[0]) {
//    var reader = new FileReader;
//    reader.onload = function(data) {
//     $("#image_upload #img").attr("src", data.target.result).width(200);        
//    }
//    reader.readAsDataURL(this.files[0]);
//   }
//  });
//
//});

//프로필 이미지 미리보기
var sel_file;
$(document).ready(function() {
	$("#profile_file").on("change", handleImgFileSelect);
});
function handleImgFileSelect(e) {
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	filesArr.forEach(function(f) {
		if(!f.type.match("image.*")) {
			alert("확장자는 이미지 확장자만 가능합니다.");
			return;
		}
		sel_file = f;
		var reader = new FileReader();
		reader.onload = function(e) {
			$("#img").attr("src", e.target.result);
		}
		reader.readAsDataURL(f);
	});
}


$(document).on('click',"#btn_deletePhoto",function() {
	$('#img').attr("src","/moving.com/images/member_profile.png");
});



/**************** 회원탈퇴 페이지 js ****************/
function delete_check() {
	var agreecheck = document.member_delete.agree.checked;
	
	if($.trim($("#deleteReasonInput").val()) == "") {
		$("#deleteReason_check").text("탈퇴 사유를 선택하거나 입력해주세요 ! :P");
		$("#deleteReason_check").css("color","red");
		$("#deleteReason_check").css("font-size","15px");
		$("#deleteReason_check").css("font-weight","bold");
		$("#select_memberDeleteReason").css("background-color","#FFCECE");
		$("#deleteReasonInput").css("background-color","#FFCECE");
		$("#select_memberDeleteReason").focus();
		return false;
	}
	if(!agreecheck) {
		$("#agree_check").text("탈퇴 전 유의사항을 확인해 주세요 ! :P ");
		$("#agree_check").css("color","red");
		$("#agree_check").css("font-size","15px");
		$("#agree_check").css("font-weight","bold");
		$("#dropConfirm").focus();
		return false;
	}
}
$(function(){
	$('#deleteReasonInput').keyup(function() {
		 $("#deleteReasonInput").css("background-color","#eae6fa");
		 $("#select_memberDeleteReason").css("background-color","#eae6fa");
		 $("#deleteReason_check").text("");
	})
})

$(function(){
	$('#delete_password').keyup(function() {
		 $("#delete_password").css("background-color","#eae6fa");
		 $("#mDelete_btn").prop("disabled",false);
		 $("#mDelete_btn").css("background-color","#fc636b");
	})
})

function member_checking() {
	var agreecheck2 = document.member_delete.agree.checked;
	
	if(!agreecheck2) {
		$("#agree_check").text("탈퇴 전 유의사항을 확인해 주세요 ! :P ");
		$("#agree_check").css("color","red");
		$("#agree_check").css("font-size","15px");
		$("#agree_check").css("font-weight","bold");
		$("#dropConfirm").focus();
	}else if($('#member_check').css("display")=="none") {
		$('#member_check').css("display","block");
	}
};

function domain_list(){
	var num=member_delete.deactivateReasonList.selectedIndex;
	$("#deleteReason_textBox3").hide();
	if(num == -1) {
		return true;
	}
	if(member_delete.deactivateReasonList.value == "직접 입력") {
		if($("#deleteReason_textBox3").css("display") == "none" ) {
			$("#deleteReason_textBox3").css("display","block");
		}
		member_delete.deactivateReason.value="";
		member_delete.deactivateReason.readOnly=false; //입력폼에 쓰기가능
		member_delete.deactivateReason.focus(); //입력폼으로 포커스이동
	}else {
		member_delete.deactivateReason.value=member_delete.deactivateReasonList.options[num].value;
		member_delete.deactivateReason.readOnly=true; //읽기만가능
		$("#select_memberDeleteReason").css("background-color","#eae6fa");
		$("#deleteReason_check").text("");
		
	}
}