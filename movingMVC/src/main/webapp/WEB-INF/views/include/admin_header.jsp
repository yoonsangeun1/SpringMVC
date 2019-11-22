<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<script src="../js/jquery.js"></script>
<script src="https://kit.fontawesome.com/bf95efc607.js" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../iconfont/css/fontawesome.min.css">
<link rel="stylesheet" type="text/css" href="../css/admin_index.css" />
<link rel="stylesheet" type="text/css" href="../css/init.css" />
<link rel="stylesheet" type="text/css" href="../css/header.css" />
<link rel="stylesheet" type="text/css" href="../css/scrollbar.css" />
<link rel="stylesheet" type="text/css" href="../css/sns_main.css" />

<link rel="stylesheet" type="text/css" href="../css/admin_member.css" />
<link rel="stylesheet" type="text/css" href="../css/admin_funding.css" />
<link rel="stylesheet" type="text/css" href="../css/admin_board.css" />
<link rel="stylesheet" type="text/css" href="../css/admin_movie.css" />
<link rel="stylesheet" type="text/css" href="../css/admin_movie.css" />

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
								<a href="../admin_index.jsp"><img
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
		
		<div id="admin_wrap">
		
			<!-- 페이지 왼쪽 div -->
			<div id="admin_leftMenu">
	
				<!-- 관리자 정보, 사진, 이름 -->
				<div id="admin_info">
					<a href="#"> <img src="../images/member_profile.png" width="120" height="120" alt="등록된 사진이 없습니다." />
					</a>
					<ul>
						<li>관리자 정보:</li>
					</ul>
				</div>
				
				<!-- 관리 메뉴 -->
				<div id="admin_menu">
					<ul>
						<!-- ul li태그로 메뉴구성 -->
						<li><a href="../admin_index.jsp" class="hyper">HOME</a></li>
						<li><a href="../admin/admin_dashboard.jsp" class="hyper">DASHBOARD</a></li>
						<li><a href="../admin/admin_general.jsp" class="hyper">GENERAL</a></li>
						<li><p class="hyper">------------</p></li>
						<li><a href="../admin/admin_member.jsp" class="hyper">회원 관리</a></li>
						<li><a href="../admin/admin_funding.jsp" class="hyper">펀딩 관리</a></li>
						<li><a href="../admin/admin_board.jsp" class="hyper">게시글 관리</a></li>
						<li><a href="../admin/admin_movie.jsp" class="hyper">영화 관리</a></li>
					</ul>
				</div>
				
				<!-- 로그아웃 -->
				<div id="admin_logout">
					<ul>
						<li><a href="../index.jsp" class="hyper">로그아웃</a></li>
					</ul>
				</div>
			</div>
		