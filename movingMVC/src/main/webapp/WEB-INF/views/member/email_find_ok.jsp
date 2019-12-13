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
		<table id="emailFindOK_table">
			<tr>
				<th>이메일 아이디</th>
				<td>${email}</td>
			</tr>
		</table>
		<div id="pwdFindOK_button">
			<input type="button" value="닫기" onclick="self.close();"/>
		</div>
	</div>
</body>
</html>