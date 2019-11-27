<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="../css/index.css" />
</head>
<body>
	<div id="biMoving_wrap"> 
	<%-- 반복적 css적용은 class // 하나하나 css적용은 id --%>
		<div class="biMoving_x"></div>
		<div class="biMoving_logo">
			<img src="./images/header_logo.png" width="400" height="150" alt="moving_logo"/>
		</div>
		<div class="biMoving_text">MOVING은 왜 필요할까요?</div>
		<div class="biMoving_button">
				<input type="button" id="biMoving_aboutMoving" value="MOVING 자세히보기" onclick="location='./banner/aboutMoving.jsp';"/>
		</div>
	</div>
</body>
</html>