<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="./css/index.css" />
</head>
<body>
	<div class="mainRight_quick" style="position:fixed; z-index:3;">
		<div class="quickmenu1">
			<button class="go_Support_btn" onclick="#">후원하기123</button>
		</div>
		<div class="quickmenu2">
			<button class="go_Notice_btn" onclick="location='./banner/board_notice.jsp';">공지사항</button>
		</div>

		<div class="quickmenu3">
			<button class="go_Event_btn" onclick="location='./banner/board_event.jsp';">이벤트</button>
		</div>

		<button class="top_btn" onclick="$('html, body').stop().animate({scrollTop : 0}, 500);">TOP</button>
	</div>

</body>
</html>