<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" type="text/css" href="/resources/css/member_find.css" />
<script src="/resources/js/jquery.js"></script>
<script>
	function pwdFind_check() {
		if ($.trim($("#find_email").val()) == "") {
			alert("이메일 아이디를 입력해주세요!");
			$("#find_email").val("").focus();
			return false;
		}
		if ($.trim($("#find_name").val()) == "") {
			alert("회원이름을 입력해주세요!");
			$("#find_name").val("").focus();
			return false;
		}
	}
</script>
</head>
<body>
	<div id="pwdFind_wrap">
		<h2 class="pwdFind_title">비밀번호 찾기</h2>
		<form method="post" action="pwd_find_ok" onsubmit="return pwdFind_check()">
			<table id="memberFind_table">
				<tr>
					<th>이메일아이디</th>
					<td>
						<input type="email" name="find_email" id="find_email" size="14" />
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>
						<input name="find_name"	id="find_name" size="14"/>
					</td>
				</tr>
			</table>
			<div id="pwdFind_button">
				<input type="submit" class="find_button" value="찾기" />
			</div>
		</form>
	</div>

</body>
</html>