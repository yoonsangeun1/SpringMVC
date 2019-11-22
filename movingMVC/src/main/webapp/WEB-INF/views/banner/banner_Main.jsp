<%@ page contentType="text/html; charset=UTF-8"%>

	<div id="bannermain_wrap">
		<%-- 반복적 css적용은 class // 하나하나 css적용은 id --%>
		<div id="home">
			<a href="#">홈으로</a>
			<!-- 메인홈피 만들어야함(index_1.jsp)-->
		</div>

		<div id="logo">
			<img src="./images/header_logo.png" width="265" height="62"
				alt="moving_logo" />
		</div>
		<div class="main_banner">
			<div class="slider_button">
				<button class="prev_btn" onclick="plusDivs(-1)"></button>
  				<button class="next_btn" onclick="plusDivs(1)"></button>
			</div>
			
			<div class="slider_banners">
			
				<img class="auto_mySlides" src="./images/main_banner_moving.PNG" width="1200" height="400" onclick="Move_biMoving()"	 > 
				<img class="auto_mySlides" src="./images/main_banner_sns.PNG" width="1200" height="400" onclick="Move_biSns()"> 
				<img class="auto_mySlides" src="./images/main_banner_project.PNG" width="1200" height="400" onclick="Move_biProject()"> 
				<img class="auto_mySlides" src="./images/main_banner_teaser.PNG" width="1200" height="400" onclick="Move_biTeaser()"> 
				<img class="auto_mySlides" src="./images/main_banner_board.PNG" width="1200" height="400" onclick="Move_biBoard()">
			    <img class="auto_mySlides" src="./images/main_banner_statistics.PNG" width="1200" height="400" onclick="Move_biStatistics()">
			</div>
				    
		</div>

		<%--퀵메뉴 호출 --%>
		<%@ include file="../banner/banner_RightQuick.jsp"%>
		<div class="clear"></div>
		<%--메인배너 호출 --%>
		<%@ include file="../banner/bannerInfo_Moving.jsp"%>
		<div class="clear"></div>
		<%@ include file="../banner/bannerInfo_Sns.jsp"%>
		<div class="clear"></div>
		<%@ include file="../banner/bannerInfo_Project.jsp"%>
		<div class="clear"></div>
		<%@ include file="../banner/bannerInfo_Support.jsp" %>
		<div class="clear"></div>
		<%@ include file="../banner/bannerInfo_Teaser.jsp"%>
		<div class="clear"></div>
		<%@ include file="../banner/bannerInfo_Board.jsp"%>
		<div class="clear"></div>
		<%@ include file="../banner/bannerInfo_Statistics.jsp"%>
	</div>

	<div class="clear"></div>
