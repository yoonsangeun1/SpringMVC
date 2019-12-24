/**
 * member_login.js
 */

//로그인페이지 유효성검증
function login_check() {
	 if($.trim($("#mLogin_email").val())==""){
		 alert("이메일 아이디를 입력해주세요!");
		 $("#mLogin_email").val("").focus();
		 return false;
	 }
	 if($.trim($("#mLogin_password").val())==""){
		 alert("비밀번호를 입력해주세요!");
		 $("#mLogin_password").val("").focus();
		 return false;
	 }
}

//회원정보찾기 창 출력
function member_find() {
		 $url="member_find";//매핑주소
		 window.open($url,"회원정보찾기","width=400px,height=500px"+
				 ",scrollbars=yes");
		 //open(공지창경로,공지창이름,속성) 메서드로 폭이 400픽셀,
		 //높이가 500픽셀,스크롤바가 생성되는 새로운 공지창을 만든다.
}


$(function(){
	$('#mLogin_email').keyup(function() {
		 $("#mLogin_email").css("background-color","#eae6fa");
	})
})





function check_useremail($mLogin_email) {
	var pattern = new RegExp(/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{3}$/i); //닉네임을 한글,영문,숫자
	return pattern.test($mLogin_email);
};

$(function(){
	$('#mLogin_password').keyup(function() {
		 $("#mLogin_password").css("background-color","#eae6fa");
	})
})