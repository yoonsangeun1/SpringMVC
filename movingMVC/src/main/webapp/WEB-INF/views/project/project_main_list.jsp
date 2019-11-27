<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="../css/funding_list.css" />

<div class="fList_wrap">

	<%-- MainDIV 1. 카테고리 제목, 설명 --%>
	<div id="fList_title">
		<section>
			<h3>Main</h3>
			<p>Discover the artists and organizations using Moving to
				realize ambitious projects in visual art and performance.</p>
			<%-- 세부 카테고리별 보기 버튼 --%>
			<div id="title_category_container">
				<span><a href="#">Explore Animation</a></span> <span><a
					href="#">Explore Romance</a></span> <span><a href="#">Explore
						Action</a></span> <span><a href="#">Explore Art</a></span>
			</div>
		</section>
	</div>

	<%-- MainDIV 2. 펀딩 리스트 시작 --%>
	<div id="fList_project">
		<%-- 좌측 리스트 --%>
		<div id="fList_left">
			<h3>에디터 추천 프로젝트</h3>
			<div id="hover_container" onclick="location.href='funding_cont.jsp';"
				style="cursor: pointer;">
				<img src="../images/funding01.PNG" width="530" height="400"
					alt="funding01.png" />
				<div class="progress">
					<!-- 여기에 수정해야 할 것 : 퍼센트 표시 바. -->
					<div class="progress-bar" role="progressbar" aria-valuenow="70"
						aria-valuemin="0" aria-valuemax="100" style="width: 40%">
						<%--<span class="sr-only">40% Complete</span>--%>
					</div>
				</div>
				<div class="clear"></div>
				<h3>The Prisoner's Apothecary</h3>
				<p>A plant-based, travelling apothecary designed by prisoners
					that helps us rethink America’s reliance on punishment and control.</p>
				<p>By Ellena Robert</p>
			</div>
		</div>

		<%-- 우측 리스트 --%>
		<div id="fList_right">
			<%-- 우측 리스트 제목 --%>
			<h3>급상승 프로젝트</h3>
			<div class="clear"></div>
			<%-- 우측 리스트 프로젝트 1, 2, 3 --%>
			<ul>
				<li>
					<div class="hover_container2"
						onclick="location.href='funding_cont.jsp';"
						style="cursor: pointer;">
						<img src="../images/funding01.PNG" width="130" height="85"
							alt="funding01.png" />
						<div class="hover_container2R">
							<h3>The Prisoner's Apothecary</h3>
							<span class="progress-percent">40% Complete</span>
							<p>By Ellena Robert</p>
						</div>
						<button type="button" class="likebtn">
							<i class="fas fa-heart fa-1x"></i>
						</button>
						<!-- <span class="fa-stack fa-lg">
 <i class="fa fa-circle fa-stack-2x"></i>
 <i class="fas fa-heart fa-stack-1x fa-inverse"></i>
 </span> -->
					</div>
				</li>
				<li>
					<div class="hover_container2"
						onclick="location.href='funding_cont.jsp';"
						style="cursor: pointer;">
						<img src="../images/funding01.PNG" width="130" height="85"
							alt="funding01.png" />
						<div class="hover_container2R">
							<h3>The Prisoner's Apothecary</h3>
							<span class="progress-percent">40% Complete</span>
							<p>By Ellena Robert</p>
						</div>
						<button type="button" class="likebtn">
							<i class="fas fa-heart fa-1x"></i>
						</button>
					</div>
				</li>
				<li>
					<div class="hover_container2"
						onclick="location.href='funding_cont.jsp';"
						style="cursor: pointer;">
						<img src="../images/funding01.PNG" width="130" height="85"
							alt="funding01.png" />
						<div class="hover_container2R">
							<h3>The Prisoner's Apothecary</h3>
							<span>40% Complete</span>
							<p>By Ellena Robert</p>
						</div>
						<button type="button" class="likebtn">
							<i class="fas fa-heart fa-1x"></i>
						</button>
					</div>
				</li>
			</ul>
			<%-- 우측 리스트 페이지 번호 --%>
			<div id="page_num_container">
				<button type="button" class="page_num">이전</button>
				<button type="button" class="page_num">1</button>
				<button type="button" class="page_num">2</button>
				<button type="button" class="page_num">3</button>
				<button type="button" class="page_num">다음</button>
			</div>
		</div>
	</div>

	<%-- 구분선 --%>
	<div class="border_bottom20"></div>

	<%-- MainDIV 3. 구독 홍보 div --%>
	<div id="NewsletterSignUp">
		<h3>Discover the best and brightest projects on Moving.</h3>
		<p>Sign up to receive our weekly Projects We Love newsletter.</p>
		<div id="NewsletterSignUp_form">
			<form>
				<input id="newsletter-signup-input"
					placeholder="Enter email address" type="text" value="" />
				<button type="submit" class="subscribeBtn button_wce8e8e8"id="newsletter-signup-button">Subscribe</button>
			</form>
		</div>
	</div>

	<%-- 구분선 --%>
	<div class="border_bottom20"></div>

	<%-- MainDIV 3. 펀딩 프로젝트 하나짜리 --%>
	<div id="fList_projectOne"></div>

	<%-- MainDIV 3. 펀딩 프로젝트 네개짜리 --%>
	<div id="fList_projectfour">
		<h3>요즘 뜨는 프로젝트 &nbsp;&nbsp;&nbsp;<a href="#">Explore more &gt;&gt;</a></h3>
		
		<div class="fList_projectfour_one">
			<div class="gallery">
				<a href="funding_cont.jsp"> <img src="../images/funding01.PNG"
					alt="funding01" width="246" height="auto">
				</a>
				<div class="desc">Add a description of the image here</div>
			</div>
		</div>

		<div class="fList_projectfour_one">
			<div class="gallery">
				<a href="funding_cont.jsp"> <img src="../images/funding01.PNG"
					alt="funding01" width="246" height="160">
				</a>
				<div class="desc">Add a description of the image here</div>
			</div>
		</div>

		<div class="fList_projectfour_one">
			<div class="gallery">
				<a href="funding_cont.jsp"> <img src="../images/funding01.PNG"
					alt="funding01" width="246" height="160">
				</a>
				<div class="desc">Add a description of the image here</div>
			</div>
		</div>

		<div class="fList_projectfour_one">
			<div class="gallery">
				<a href="funding_cont.jsp"> <img src="../images/funding01.PNG"
					alt="funding01" width="246" height="160">
				</a>
				<div class="desc">Add a description of the image here</div>
			</div>
		</div>
	</div>

	<%-- 구분선 --%>
	<div class="border_bottom20"></div>

</div>


<%@ include file="../include/footer.jsp"%>