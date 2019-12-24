<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member_find.css" />
</head>
<body>
	<h1>MOVING 회원찾기</h1>
	<%@ include file="email_find.jsp"%>
	<%@ include file="pwd_find.jsp"%>
	
	<div id="member_find_button_field">
		<input type="button" class="find_button" value="닫기" onclick="self.close();"/>
	</div>
</body>
</html>