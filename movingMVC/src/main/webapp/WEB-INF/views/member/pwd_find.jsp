<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member_find.css" />
<script src="../resources/js/jquery.js"></script>
<script>
function pwdFind_check() {
	if($.trim($("#find_email2").val())=="") {
		alert("이메일아이디를 입력해주세요!");
		$("#find_email2").val("").focus();
		return false;
	}
	if($.trim($("#find_name2").val())=="") {
		alert("이름을 입력해주세요!");
		$("#find_name2").val("").focus();
		return false;
	}
}
</script>
</head>
<body>
	<div id="pwdFind_wrap">
		<h2 class="pwdFind_title">비밀번호 찾기</h2>
		<form method="post" action="pwd_find_ok" onsubmit="return pwdFind_check();">
			<div id="pwdFint_text">
				가입하셨던 이메일 아이디와 이름을 입력해보세요.
				<br>
				임시 비밀번호로 비밀번호를 수정해드립니다.
				<br>
				로그인 후 반드시 새로운 비밀번호로 수정해주세요.
			</div>
			<div id="pwdFind_input">
				<input type="email" name="find_email2" id="find_email2" class="find_input" placeholder="이메일 아이디입력" 
					style="color:blue"/>
				<input name="find_name2" id="find_name2" class="find_input" placeholder="이름 입력"/>
			</div>
			<div id="pwdFind_button">
				<input type="submit" class="find_button button_cb3a9eb button_f12 button_r4 vertical group border" value="찾기"/>
			</div>
		</form>
	</div>

</body>
</html>