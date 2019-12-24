<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 찾기 결과</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member_find.css" />
</head>
<body>
	<div id="emailFindOK_wrap">
		<h2 class="emailFindOK_title">이메일 아이디 찾기 결과</h2>
		<div id="emailFindOK_text">
			<span id="emailFindOK_result" style="font-height:bold; font-size:30px;">${email}</span>
			<br>
			회원으로 등록된 이메일 아이디입니다.
			<br>
			해당 이메일로 로그인하고 MOVING을 이용하세요 !
		</div>
		<div id="pwdFindOK_button">
			<input type="button" value="닫기" onclick="self.close();"/>
		</div>
	</div>
</body>
</html>