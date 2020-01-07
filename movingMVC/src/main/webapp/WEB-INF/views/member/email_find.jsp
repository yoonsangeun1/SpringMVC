<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 아이디 찾기</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member_find.css" />
<script src="../resources/js/jquery.js"></script>
<script>
function emailfind_check() {
	if($.trim($("#find_email").val())=="") {
		alert("이메일아이디를 입력해주세요!");
		$("#find_email").val("").focus();
		return false;
	}
}
</script>
</head>
<body>
	<div id="emailFind_wrap">
		<h2 class="emailFind_title">이메일 아이디 찾기</h2>
		<form method="post" action="email_find_ok" onsubmit="return emailfind_check();">
			<div id="emailFind_text">
				MOVING에서는 이메일을 아이디로 사용합니다.
				<br>
				소유하고 계신 이메일 계정을 입력해보세요.
				<br>
				가입여부를 확인해드립니다.
			</div>
			<div id="emailFind_input">
				<input type="email" id="find_email" name="find_email" class="find_input" placeholder="이메일 아이디입력">
			</div>
			<div id="emailFind_button">
				<input type="submit" class="find_button button_cb3a9eb button_f12 button_r4 vertical group border" value="찾기"/>
			</div>
		</form>
	</div>

</body>
</html>