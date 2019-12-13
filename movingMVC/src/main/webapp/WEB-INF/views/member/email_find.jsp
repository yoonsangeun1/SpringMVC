<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 아이디 찾기</title>
<link rel="stylesheet" type="text/css" href="/resources/css/member_find.css" />
<script src="/resources/js/jquery.js"></script>
<script>
	function emailFind_check() {
		if ($.trim($("#find_name").val()) == "") {
			alert("회원이름을 입력해주세요!");
			$("#find_name").val("").focus();
			return false;
		}
		if ($.trim($("#find_phone").val()) == "") {
			alert("휴대폰번호를 입력해주세요!");
			$("#find_phone").val("").focus();
			return false;
		}
	}
</script>
</head>
<body>
	<div id="emailFind_wrap">
		<h2 class="emailFind_title">이메일 아이디 찾기</h2>
		<form method="post" action="email_find_ok" onsubmit="return emailFind_check()">
			<table id="emailFind_table">
				<tr>
					<th>이름</th>
					<td>
						<input name="find_name" id="find_name" size="14" />
					</td>
				</tr>
				<tr>
					<th>휴대폰번호</th>
					<td>
						<input name="find_phone" id="find_phone" size="14" />
					</td>
				</tr>
			</table>
			<div id="phone_helper">
					<span id="phone_helper_text" style="color:red; font-weight:bold; font-size:10px;">
				휴대폰번호는 - 를 포함하여 입력해주세요 
				</span>
				</div>
			<div id="emailFind_button">
				<input type="submit" class="find_button" value="찾기" />
			</div>
		</form>
	</div>

</body>
</html>