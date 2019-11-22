<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 화면</title>
<%-- Initialize, index, header 공통 부분 css 추가 --%>
<link rel="stylesheet" type="text/css" href="../css/init.css" />
<link rel="stylesheet" type="text/css" href="../css/index.css" />
<link rel="stylesheet" type="text/css" href="../css/header.css" />
<link rel="stylesheet" type="text/css" href="../css/sns_scrollbar.css" />

<%-- 아이콘 폰트 사용을 위한 스타일시트, js 추가 --%>
<link rel="stylesheet" type="text/css"
	href="../iconfont/css/fontawesome.min.css">
<script src="https://kit.fontawesome.com/bf95efc607.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../icon/css/fontello.css">
<link rel="stylesheet" href="../icon/css/animation.css">

<%-- banner css 추가 --%>
<link rel="stylesheet" type="text/css" href="../css/aboutMoving.css" />

<%-- board css 추가 --%>
<link rel="stylesheet" type="text/css" href="../css/board_notice.css" />
<%-- 공지사항 --%>
<link rel="stylesheet" type="text/css" href="../css/board_event.css" />
<%-- 이벤트 --%>
<link rel="stylesheet" type="text/css" href="../css/board_faq.css" />
<%-- FAQ --%>
<link rel="stylesheet" type="text/css" href="../css/board_actors.css" />
<%-- 배우 모집 --%>
<link rel="stylesheet" type="text/css" href="../css/board_contest.css" />
<%-- 시나리오 모집 --%>
<link rel="stylesheet" type="text/css" href="../css/board_free.css" />
<%-- 자유게시판 --%>
<link rel="stylesheet" type="text/css" href="../css/board_writing.css" />
<%-- 글 작성 폼 --%>
<link rel="stylesheet" type="text/css" href="../css/board_qna.css" />
<%-- Q & A--%>

<%-- funding css 추가 --%>
<link rel="stylesheet" type="text/css" href="../css/funding_list.css" />
<%-- 펀딩 리스트 --%>
<link rel="stylesheet" type="text/css" href="../css/funding_write.css" />
<%-- 펀딩 글 작성 폼 --%>
<link rel="stylesheet" type="text/css" href="../css/funding_cont.css" />
<%-- 펀딩 글 보기 --%>

<%-- member css 추가 --%>
<link rel="stylesheet" type="text/css" href="../css/member_login.css" />
<%-- 로그인 폼 --%>
<link rel="stylesheet" type="text/css" href="../css/member_join.css" />
<%-- 회원가입 폼 --%>

<%-- movie css 추가 --%>
<link rel="stylesheet" type="text/css" href="../css/movie_cont.css" />
<link rel="stylesheet" type="text/css" href="../css/movie_mainList.css" />
<link rel="stylesheet" type="text/css"
	href="../css/movie_categoryList.css" />

<%-- sns css 추가 --%>
<link rel="stylesheet" type="text/css" href="../css/sns_main.css" />
<link rel="stylesheet" type="text/css" href="../css/sns_profile.css" />
<link rel="stylesheet" type="text/css" href="../css/sns_messenger.css" />

<%-- javascript 추가 (우선, abc순)--%>
<script src="../js/board_event.js"></script>
<script src="../js/board_faq.js"></script>
<script src="../js/funding_write.js"></script>
<script src="../js/jquery.js"></script>
<script src="../js/move_banner.js"></script>
<script src="../js/movie_cont.js"></script>
<script src="../js/slide.js"></script>
<script src="../js/sns.js"></script>

<style>
#msLogin_wrap {
	width: 1200px;
	height: auto;
	min-height: 750px;
	margin: auto auto;
	align-items: center;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: auto auto;
	background-color: #f2f0fb;
}

#msJoin_wrap {
	width: 1200px;
	height: auto;
	min-height: 800px;
	margin: auto auto;
	align-items: center;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: auto auto;
	background-color: #f2f0fb;
}
</style>
</head>
<body>
	<div id="SNS_All">
		<%-- 상단 부분 --%>
		<div id="header_background">
			<div id="header">
				<%-- 상단 메뉴 첫번째 --%>
				<div id="sns_headerMenu">
					<div class="flex-container">
						<div style="flex-grow: 1;">
							<a href="../funding/funding_list.jsp">Project</a>
						</div>
						<div style="flex-grow: 1;">
							<a href="../movie/movie_mainList.jsp">Movies</a>
						</div>
						<div style="flex-grow: 12;">
							<div id="header_logo">
								<a href="../sns/SNS_Main.jsp"><img
									src="../images/logo_w.png" alt="로고 이미지" width="150" height="25" /></a>
							</div>
						</div>
						<div style="flex-grow: 0.8;">
							<input name="header_searchbar" placeholder="Search"
								style="color: white; border: none; background-color: #6a67ce;"
								size="3">&nbsp;&nbsp; <a href="#"><i
								class="fas fa-search"></i></a>
						</div>
						<div style="flex-grow: 0.6;">
							<a href="../index.jsp">Main</a>
						</div>
						<div style="flex-grow: 0.6;">
							<a href="../member/member_snsLogin.jsp">Login</a>
						</div>
					</div>
				</div>
			</div>
		</div>