/**
 *  member_join.js
 */



/** 회원가입 페이지 입력 유효성검증 */
function join_check() { 
	if($.trim($("#email").val()) == "") {
		alert("로그인에 사용될 이메일을 입력해주세요 !");
		$("#email").val("").focus();
		return false;
	}
	if($.trim($("#name").val()) == "") {
		alert("이름을 입력해주세요 !");
		$("#name").val("").focus();
		return false;
	}
	if($.trim($("#nickname").val()) == "") {
		alert("닉네임을 입력하고 중복확인을 해주세요 !");
		$("#nickname").val("").focus();
		return false;
	}
	$password=$.trim($("#password").val());
	$password2=$.trim($("#password2").val());
	if($password == "") {
		alert("비밀번호를 입력해주세요 !");
		$("#password").val("").focus();
		return false;
	}
	if(!($password == "")) {
		if($password.length < 4 || $password.length > 10){
			$("#pwdcheck").text('비밀번호는 4~10자 한글,영문,숫자 조합만 가능합니다.');
			$("#pwdcheck").css("color","red");
			$("#pwdcheck").css("font-size","15px");
			$("#pwdcheck").css("font-weight","bold");
			$("#password2").val("");
			$("#password").val('').focus();
			return false;
		}
	}
	if($password2 == "") {
		alert("비밀번호 확인을 입력해주세요 !");
		$("#password2").val("").focus();
		return false;
	}
	if($password != $password2) {
		alert("비밀번호가 일치하지 않습니다 !");
		$("#password").val(""); //입력박스 초기화
		$("#password2").val("");
		$("#password").focus();
		return false;
	}
	if($.trim($("#phone02").val()) == "") {
		alert("휴대폰 번호를 입력해주세요 !");
		$("#phone02").val("").focus();
		return false;
	}
	if($.trim($("#phone03").val()) == "") {
		alert("휴대폰 번호를 입력해주세요 !");
		$("#phone03").val("").focus();
		return false;
	}
	   if($('#email').css("background-color") == "#FFCECE" ) {
		   $("#joinBtn").prop("disabled",false);
	       $("#joinBtn").css("background-color","#9d8ce2");
	   }
	   if($('#nickname').css("background-color") == "#FFCECE" ) {
		   $("#joinBtn").prop("disabled",false);
	       $("#joinBtn").css("background-color","#9d8ce2");
	   }
	   if($('#password').css("background-color") == "#FFCECE" ) {
		   $("#joinBtn").prop("disabled",false);
	       $("#joinBtn").css("background-color","#9d8ce2");
	   }
	   if($('#password2').css("background-color") == "#FFCECE" ) {
		   $("#joinBtn").prop("disabled",false);
	       $("#joinBtn").css("background-color","#9d8ce2");
	   }

}

/** 선호장르 체크박스 최대 3개까지만 선택가능 */
var maxChecked = 3; //선택가능한 체크박스 최대갯수
var totalChecked = 0; //체크박스 합계

function CountChecked(obj) {
	var checkbox = document.getElementsByName("genre_like");
	var checkCount = 0;

	for(var i=0;i<checkbox.length;i++) {
		if(checkbox[i].checked) {
			checkCount++;
		}
	}
	if(checkCount > 3) {
		alert("선호장르는 최대 3개까지 선택가능합니다 !");
		obj.checked = false;
		return false;
	}
}


/** 이메일아이디 실시간 중복체크 */
function userid_check(){ 
	$email=$.trim($("#email").val());

	$.ajax({ //$는 jQuery , $.ajax는 jQuery내의 아작스 실행
		type:"POST", //데이터를 서버로 보내는 방법
		url:"join_emailCheck", //아작스 서버 주소 파일명->컨트롤러에 등록한 매핑주소
		data : {"email":$email}, //좌측 nickname파라미터 이름에 우측 $nickname 변수값을 저장
		datatype : "int", //서버의 실행된 결과값을 사용자로 받아오는 방법
		success : function(data) { //success는 아작스로 받아오는 것이 성공했을 경우 서버 데이터를 data변수에 저장
			if(data==1) { //중복 닉네임이 있다면
				$("#emailCheck").text("중복된 이메일입니다. 다시 입력해주세요 ! :P"); //nickcheck영역에 문자열을 추가
				$("#emailChecks").css("color","red");
				$("#emailCheck").css("font-size","15px");
				$("#emailCheck").css("font-weight","bold");
				$("#email").css("background-color","#FFCECE");
				$("#joinBtn").prop("disabled",true);
		        $("#joinBtn").css("background-color","#aaaaaa");
			}else if(!(check_useremail($email))) { //이메일 형식이 맞지 않다면
				$("#emailCheck").text("불가능한 이메일형식입니다. 다시 입력해주세요 ! :P"); //nickcheck영역에 문자열을 추가
				$("#emailCheck").css("color","red");
				$("#emailCheck").css("font-size","15px");
				$("#emailCheck").css("font-weight","bold");
				$("#email").css("background-color","#FFCECE");
				$("#joinBtn").prop("disabled",true);
		        $("#joinBtn").css("background-color","#aaaaaa");
			}else { //중복된 닉네임이 없다면
				$("#emailCheck").text("사용 가능한 이메일입니다. :)");
				$("#emailCheck").css("color","#9d8ce2");
				$("#emailCheck").css("font-size","15px");
				$("#emailCheck").css("font-weight","bold");//nickcheck영역에 문자열을 추가
				$("#email").css("background-color","#eae6fa");
				$("#joinBtn").prop("disabled",false);
			    $("#joinBtn").css("background-color","#9d8ce2");
			} 
		},
		error : function() { //비동기식 아작스로 서버디비 데이터를 못가져와서 에러가 발생했을때 호출되는 함수
			alert("data error");
		}
	}); //$.ajax
	
	function check_useremail($email) {
		var pattern = new RegExp(/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{3}$/i); //닉네임을 한글,영문,숫자
		return pattern.test($email);
	};
}

/** 비밀번호 - 비밀번호확인 일치여부 체크 */
$(function(){
    $('#password2').keyup(function(){
        if($('#password').val() != $('#password2').val()){
          $('#pwdcheck').text("비밀번호가 일치하지 않습니다 ! :P ");
          $("#pwdcheck").css("color","red");
          $("#pwdcheck").css("font-size","15px");
          $("#pwdcheck").css("font-weight","bold");
          $("#password").css("background-color","#FFCECE");
          $("#password2").css("background-color","#FFCECE");
          $("#joinBtn").prop("disabled",true);
          $("#joinBtn").css("background-color","#aaaaaa");
        }else {
        	$('#pwdcheck').text("비밀번호가 일치합니다 ! :) ");
          	$("#pwdcheck").css("color","#9d8ce2");
        	$("#pwdcheck").css("font-size","15px");
        	$("#pwdcheck").css("font-weight","bold");
          	$("#password").css("background-color","#eae6fa");
            $("#password2").css("background-color","#eae6fa");
            $("#joinBtn").prop("disabled",false);
            $("#joinBtn").css("background-color","#9d8ce2");
        }
    });
});
 





$(function(){
	$('#name').keyup(function() {
		 $("#name").css("background-color","#eae6fa");
	})
})

/** 인증하기 버튼클릭시 인증번호입력폼 생성 */
function emailTokenInput() {
	if($.trim($("#email").val()) == "") {
		alert("인증에 필요한 이메일을 입력해주세요 !");
		$("#email").val("").focus();
		return false;
	}else {//이메일이 제대로 입력됐다면 실행
		if($('.emailToken').css("display") == "none" ){
			$('.emailToken').css("display","block");
			$newtext='<font color="green" font-weight:bold; size="3"><b>&nbsp;&nbsp;&nbsp;입력하신 메일로 인증번호를 발송하였습니다.</b></font>';
			$("#emailCheck").text("입력하신 메일로 인증번호를 발송했습니다 ! :)");
			$("#emailCheck").css("color","#9d8ce2");
			$("#emailCheck").css("font-size","15px");
			$("#emailCheck").css("font-weight","bold");
		}
	};//display block을 none으로 변경
	
	var btn = document.getElementById('btnCheckEmail');
	if(btn.textContent == "인증하기") {
		btn.textContent = "재전송";
	};
}



/** 중복닉네임 체크 */
function nick_check() {
	$nickname=$.trim($("#nickname").val());

	//3. 닉네임 중복확인
	$.ajax({ //$는 jQuery , $.ajax는 jQuery내의 아작스 실행
		type:"POST", //데이터를 서버로 보내는 방법
		url:"nickcheck", //아작스 서버 주소 파일명->컨트롤러에 등록한 매핑주소
		data : {"nickname":$nickname}, //좌측 nickname파라미터 이름에 우측 $nickname 변수값을 저장
		datatype : "int", //서버의 실행된 결과값을 사용자로 받아오는 방법
		success : function(data) { //success는 아작스로 받아오는 것이 성공했을 경우 서버 데이터를 data변수에 저장
			if(data==1) { //중복 닉네임이 있다면
				$("#nickcheck").text("중복된 닉네임입니다. 다시 입력해주세요 ! :P"); 
				$("#nickcheck").css("color","red");
				$("#nickcheck").css("font-size","15px");
				$("#nickcheck").css("font-weight","bold");
				$("#nickname").css("background-color","#FFCECE");
				$("#joinBtn").prop("disabled",true);
		        $("#joinBtn").css("background-color","#aaaaaa");
			}else if($nickname.length < 2 || $nickname.length > 8) {
				$("#nickcheck").text("닉네임은 2~8자 이어야 합니다 ! :P"); //nickcheck영역에 문자열을 추가
				$("#nickcheck").css("color","red");
				$("#nickcheck").css("font-size","15px");
				$("#nickcheck").css("font-weight","bold");
				$("#nickname").css("background-color","#FFCECE");
				$("#joinBtn").prop("disabled",true);
		        $("#joinBtn").css("background-color","#aaaaaa");
			}else if(!(check_usernickname($nickname))){
				$("#nickcheck").text("닉네임은 한글,영문,숫자 조합만 가능합니다 ! :P");//nickcheck영역에 문자열을 추가
				$("#nickcheck").css("color","red");
				$("#nickcheck").css("font-size","15px");
				$("#nickcheck").css("font-weight","bold");
				$("#nickname").css("background-color","#FFCECE");
				$("#joinBtn").prop("disabled",true);
		        $("#joinBtn").css("background-color","#aaaaaa");
			}else { //중복된 닉네임이 없다면
				$("#nickcheck").text("사용 가능한 닉네임입니다 ! :)"); //nickcheck영역에 문자열을 추가
				$("#nickcheck").css("color","#9d8ce2");
				$("#nickcheck").css("font-size","15px");
				$("#nickcheck").css("font-weight","bold");
				$("#nickname").css("background-color","#eae6fa");
				$("#joinBtn").prop("disabled",false);
		        $("#joinBtn").css("background-color","#9d8ce2");
			}
		},
		error : function() { //비동기식 아작스로 서버디비 데이터를 못가져와서 에러가 발생했을때 호출되는 함수
			alert("data error");
		}
	}); //$.ajax
}

/** 닉네임 중복체크 정규표현식 */
function check_usernickname($nickname) {
	var pattern = new RegExp(/^[s가-힣a-zA-Z0-9]+$/); //닉네임을 한글,영문,숫자
	return pattern.test($nickname);
};






