<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<script src="./resources/js/jquery.js"></script>
<script src="./js/movie_upload.js"></script>
<script src="https://kit.fontawesome.com/bf95efc607.js" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="./iconfont/css/fontawesome.min.css">
<link rel="stylesheet" type="text/css" href="./css/admin_index.css" />
<link rel="stylesheet" type="text/css" href="./css/init.css" />
<link rel="stylesheet" type="text/css" href="./css/header.css" />
<link rel="stylesheet" type="text/css" href="./css/scrollbar.css" />
<link rel="stylesheet" type="text/css" href="./css/social_main.css" />

<link rel="stylesheet" type="text/css" href="./css/admin_member.css" />
<link rel="stylesheet" type="text/css" href="./css/admin_funding.css" />
<link rel="stylesheet" type="text/css" href="./css/admin_board.css" />
<link rel="stylesheet" type="text/css" href="./css/admin_movie.css" />
<link rel="stylesheet" type="text/css" href="./css/admin_movie_upload.css" /> 
<link rel="stylesheet" type="text/css" href="./css/admin_movie_cont.css" />

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
							<a href="./resources/funding/funding_list.jsp">Project</a>
						</div>
						<div style="flex-grow: 1;">
							<a href="./resources/movie/movie_mainList.jsp">Movies</a>
						</div>
						<div style="flex-grow: 12;">
							<div id="header_logo">
								<a href="./resources/admin_index.jsp"><img
									src="./resources/images/logo_w.png" alt="로고 이미지" width="150" height="25" /></a>
							</div>
						</div>
						<div style="flex-grow: 0.8;">
							<a href="./resources/sns/sns_Main.jsp">SNS</a>
						</div>
						<div style="flex-grow: 0.6;">
							<a href="./resources/index.jsp">Main</a>
						</div>
						<div style="flex-grow: 0.6;">
							<a href="./resources/member/member_snsLogin.jsp">Login</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div id="admin_wrap">
		
			<!-- 페이지 왼쪽 div -->
			<div id="admin_leftMenu">
	
				<!-- 관리자 정보, 사진, 이름 -->
				<div id="admin_info">
					<a href="#"> <img src="./resources/images/member_profile.png" width="120" height="120" alt="등록된 사진이 없습니다." />
					</a>
					<ul>
						<li>관리자 정보:</li>
					</ul>
				</div>
				
				<!-- 관리 메뉴 -->
				<div id="admin_menu">
					<ul>
						<!-- ul li태그로 메뉴구성 -->
						<li><a href="admin_index" class="hyper">HOME</a></li>
						<li><a href="admin_dashboard" class="hyper">DASHBOARD</a></li>
						<li><a href="admin_general" class="hyper">GENERAL</a></li>
						<li>------------</li>
						<li><a href="admin_member" class="hyper">회원 관리</a></li>
						<li><a href="admin_funding" class="hyper">펀딩 관리</a></li>
						<li><a href="admin_board" class="hyper">게시글 관리</a></li>
						<li><a href="admin_movie" class="hyper">영화 관리</a></li>
					</ul>
				</div>
				
				<!-- 로그아웃 -->
				<div id="admin_logout">
					<ul>
						<li><a href="index" class="hyper">로그아웃</a></li>
					</ul>
				</div>
			</div>



		<!-- 변경되는 항목 -->

		<div id="admin_changeItem">

			<!-- 변경 항목1 방문자 수 통계(예시) -->
			<div id="change_01">
				<h3 class="visit">변경 항목1(방문자 수 통계)</h3>
			</div>
			
			<!-- 변경 항목3 글, 펀딩 반응, 회원 현황(예시) -->
			<div id="change_03">
				<h3 class="recently">변경 항목3(반응)</h3>
			</div>

			<!-- 변경 항목2 최신 활동 내역(예시)  -->
			<div id="change_02">
				<h3 class="reaction">변경 항목2(최신 활동 내역)</h3>
			</div>
			
		</div>

	</div>

<div class="clear"></div>
<%-- 구분선 --%>
<div class="border_bottom_b20"></div>

<div id="global_footer_wrap">
	
	<%-- 구분선 --%>
	<div class="border_bottom20"></div>

	<div id="footer_container">
		<section id="footer_about">
			<h4>ABOUT</h4>
			<ul>
				<li><a href="#">About us</a></li>
				<li><a href="#">Our charter</a></li>
				<li><a href="#">Stats</a></li>
				<li><a href="#">Press</a></li>
				<li><a href="#">Jobs</a></li>
			</ul>
		</section>
		<section id="footer_help">
			<h4>SUPPORT</h4>
			<ul>
				<li><a href="#">Help Center</a></li>
				<li><a href="#">Our Rules</a></li>
				<li><a href="#">Creator Handbook</a></li>
				<li><a href="#">Patrons</a></li>
			</ul>
		</section>
		<section id="footer_hello">
			<h4>HELLO</h4>
			<ul>
				<li><a href="#">Newsletters</a></li>
				<li><a href="#">Mobile apps</a></li>
				<li><a href="#">Moving Blog</a></li>
				<li><a href="#">Engineering Blog</a></li>
				<li><a href="#">Research</a></li>
			</ul>
		</section>
		<section id="footer_more">
			<h4>MORE FROM MOVING</h4>
			<ul>
				<li><a href="#">The Creative Independent</a></li>
				<li><a href="#">Moving Magazine</a></li>
				<li><a href="#">Moving Podcast</a></li>
			</ul>
		</section>
	</div>

	<div class="clear"></div>
	<!-- <div class="after"> </div>  -->

	<div id="footer_moving">
		<a href="#"><img src="./resources/images/test.png" alt="test" width="20"
			height="20" align="center" /></a>&nbsp;&nbsp;Moving, PBC © 2019
	</div>


	<div id="footer_sns">
		<a href="#"><img src="./resources/images/test.png" alt="test" width="20"
			height="20" align="center" /></a>&nbsp;&nbsp;&nbsp; <a href="#"><img
			src="./resources/images/test.png" alt="test" width="20" height="20"
			align="center" /></a>&nbsp;&nbsp;&nbsp; <a href="#"><img
			src="./resources/images/test.png" alt="test" width="20" height="20"
			align="center" /></a>&nbsp;&nbsp;&nbsp; <a href="#"><img
			src="./resources/images/test.png" alt="test" width="20" height="20"
			align="center" /></a>&nbsp;&nbsp;&nbsp;
	</div>

	<div class="clear"></div>
	<%-- 구분선 --%>
	<div class="border_bottom20"></div>


	<div id="footer_policy">
		<ul>
			<li><a href="#">Trust and Safety</a></li>
			<li><a href="#">Term of Use</a></li>
			<li><a href="#">Privacy Policy</a></li>
			<li><a href="#">Cookie Policy</a></li>
		</ul>
	</div>


</div>
</div><%--SNS_All 묶는 end tag --%>
</body>
</html>