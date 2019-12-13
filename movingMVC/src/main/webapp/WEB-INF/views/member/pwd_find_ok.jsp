<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 결과</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member_find.css" />
</head>
<body>
	<div id="pwdFindOK_wrap">
		<h2 class="pwdFindOK_title">비밀번호 찾기 결과</h2>
		<table id="pwdFindOK_table">
			<tr>
				<th>임시비밀번호</th>
				<td>${ran_pwd}</td>
			</tr>
			<tr>
				<th colspan="2">
				(※ 임시비밀번호는 로그인 후 수정하세요!)
				</th>
			</tr>
		</table>
		<div id="pwdFindOK_button">
			<input type="button" value="닫기" onclick="self.close();"/>
		</div>
	</div>
</body>
</html>