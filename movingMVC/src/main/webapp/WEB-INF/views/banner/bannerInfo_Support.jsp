<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="../css/index.css" />
</head>
<body>	
	<div id="biSupport_wrap"> 
	<%-- 반복적 css적용은 class // 하나하나 css적용은 id --%>
		<div class="biSupport_logo">
			<img src="./images/header_logo.png" width="200" height="100" alt="support_logo"/>
		</div>
		
		<div class="biSupport_text">당신의 후원을 기다립니다.</div>
		
		<div class="biSupport_button">
				<input type="button" id="go_Support_btn" value="후원하기" 
				onclick="location='#';" height="50"/>
		</div>
	</div>

</body>
</html>