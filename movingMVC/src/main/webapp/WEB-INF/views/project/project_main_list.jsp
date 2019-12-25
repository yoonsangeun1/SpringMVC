<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="../css/funding_list.css" />

<div class="fList_wrap" style="width: 100%">
	<%-- 상단 메뉴 두번째  category_bar --%>
	<div id="header_menu2" style="height: 45px; padding-top: 10px;">
		<nav id="menu_bar" style="line-height: 45px;">
			<ul>
				<!-- <li><a href="/moving.com/project/list?category=20001">전체</a></li> -->
				<li><a href="/moving.com/project/list?category=2000101">범죄 &amp; 스릴러</a></li>
				<li><a href="/moving.com/project/list?category=2000102">액션 &amp; 어드벤쳐</a></li>
				<li><a href="/moving.com/project/list?category=2000103">다큐 &amp; 드라마/청춘</a></li>
				<li><a href="/moving.com/project/list?category=2000104">역사 &amp; 시대극</a></li>
				<li><a href="/moving.com/project/list?category=2000105">판타지 &amp; SF</a></li>
				<li><a href="/moving.com/project/list?category=2000106">멜로 &amp; 로맨스</a></li>
				<li><a href="/moving.com/project/list?category=2000107">코메디</a></li>
				<li><a href="/moving.com/project/list?category=2000108">애니메이션</a></li>
				<li><a href="/moving.com/project/list?category=2000109">기타</a></li>
			</ul>
		</nav>
	</div>
		<div class="border_bottom_b20" ></div>


	<%-- MainDIV 2. 펀딩 리스트 시작 --%>
	<div id="fList_project" style="padding-top: 30px;" >
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
			<c:if test="${!empty plist }">
				<c:forEach var="p" items="${plist }">
				<li>
					<div class="hover_container2"
						onclick="location.href='/moving.com/project/content?id=${p.id}&page=${page }';"
						style="cursor: pointer;">
						<img src="../images/funding01.PNG" width="130" height="85"
							alt="funding01.png" />
						<div class="hover_container2R">
							<h3>${p.id} ${p.title }</h3>
							<span class="progress-percent">
							<%-- <div class="progress-bar" role="progressbar" aria-valuenow="70"
						aria-valuemin="0" aria-valuemax="100" style="width: ${p.nowPrice div p.targetPrice * 100}%"></div> --%>
						${p.nowPrice div p.targetPrice * 100}% Complete</span>
							<p>By ${p.mUserVO.nickname}</p>
						</div>
						<button type="button" class="likebtn">
							<i class="fas fa-heart fa-1x"></i>
						</button>
					</div>
				</li>
				</c:forEach>
				</c:if>
				<!-- <li>
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
				</li> -->
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