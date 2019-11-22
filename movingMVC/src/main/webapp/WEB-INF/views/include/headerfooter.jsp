<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 화면</title>
<link rel="stylesheet" type="text/css" href="../css/index.css" />
<link rel="stylesheet" type="text/css" href="../css/header.css" />
</head>
<body>
	<div id="main_wrap">
		<!-- 
		<%-- 상단 부분 --%>
		<div id="header">

			<div id="header_menuL">
				<ul>
					<li><a href="#">Project</a></li>
					<li><a href="#">Movies</a></li>
				</ul>
			</div>
			<div id="header_menuC">
				<ul>
					<li><a href="index.jsp"><img src="../images/moving.png"
							alt="로고 이미지" width="180" height="50" align="center" /></a></li>
				</ul>
			</div>
			<div id="header_menuR">
				<ul>
					<li><input name="header_searchbar" size="10">&nbsp;&nbsp;<img
						src="../images/search.png" alt="검색 이미지" width="20" height="20"
						align="center" /></li>
					<li><a href="#">SNS</a></li>
					<li><a href="#">Login</a></li>
				</ul>
			</div>
-->

		<%-- 상단 메뉴 첫번째 --%>
		<div id="header_menu1">
			<nav>
				<ul>
					<%--메뉴구성은 ul li블록요소 태그 --%>
					<li><a href="#">Project</a></li>
					<li><a href="#">Movies</a></li>
					<li><div id="header_logo">
							<a href="index.jsp"><img src="../images/logo.png"
								alt="로고 이미지" width="180" height="50" align="center" /></a>
						</div></li>
					<li><input name="header_searchbar" size="10">&nbsp;&nbsp;<img
						src="../images/search.png" alt="검색 이미지" width="20" height="20"
						align="center" /></li>
					<li><a href="#">SNS</a></li>
					<li><a href="#">Login</a></li>
				</ul>
			</nav>
		</div>



		<%-- 상단 메뉴 두번째  category_bar --%>
		<div id="header_menu2">
			<nav>
				<ul>
					<li><a href="#">All</a></li>
					<li><a href="#">Action</a></li>
					<li><a href="#">Documentaries</a></li>
					<li><a href="#">Animation</a></li>
					<li><a href="#">Shorts</a></li>
					<li><a href="#">Adventure</a></li>
					<li><a href="#">History</a></li>
					<li><a href="#">Comedy</a></li>
					<li><a href="#">Romance</a></li>
					<li><a href="#">Romance</a></li>
				</ul>
			</nav>
		</div>

		<div class="clear"></div>
		<hr />

		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />




		<div class="clear"></div>

		<hr />
		<div id="global_footer">
			<%-- 하단 메뉴 : 장르  이름 나중에 바꾸기 subcategory_bar --%>
			<section id="subcategory_bar">
				<nav>
					<ul>
						<li><a href="#">어드벤쳐</a></li>
						<li><a href="#">다큐멘터리</a></li>
						<li><a href="#">시대극</a></li>
						<li><a href="#">스릴러</a></li>
						<li><a href="#">환타지/SF</a></li>
						<li><a href="#">멜로/로멘스</a></li>
						<li><a href="#">코미디</a></li>
						<li><a href="#">애니메이션</a></li>
						<li><a href="#">기타</a></li>
					</ul>
				</nav>
			</section>

			<hr />
			<!-- <div class="bafore"> </div>  -->

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

			<div id="footer_icons">
				<div id="footer_moving">
					<a href="#"><img src="../images/test.png" alt="test" width="20"
						height="20" align="center" /></a>&nbsp;&nbsp;Moving, PBC © 2019
				</div>

				<div id="footer_sns">
					<a href="#"><img src="../images/test.png" alt="test" width="20"
						height="20" align="center" /></a>&nbsp;&nbsp;&nbsp; <a href="#"><img
						src="../images/test.png" alt="test" width="20" height="20"
						align="center" /></a>&nbsp;&nbsp;&nbsp; <a href="#"><img
						src="../images/test.png" alt="test" width="20" height="20"
						align="center" /></a>&nbsp;&nbsp;&nbsp; <a href="#"><img
						src="../images/test.png" alt="test" width="20" height="20"
						align="center" /></a>&nbsp;&nbsp;&nbsp;
				</div>
			</div>

			<div class="clear"></div>
			<br />
			<hr />


			<div id="footer_policy">
				<ul>
					<li><a href="#">Trust and Safety</a></li>
					<li><a href="#">Term of Use</a></li>
					<li><a href="#">Privacy Policy</a></li>
					<li><a href="#">Cookie Policy</a></li>
				</ul>
			</div>
			<br />

		</div>
	</div>
	</div>
</body>
</html>