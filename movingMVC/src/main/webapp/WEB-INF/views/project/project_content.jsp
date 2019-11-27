<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>

<!-- 크라우드 펀딩 상세 페이지 -->
<%-- 펀딩 제목, 간략 소개글 --%>
<div id="fCont_wrap">
	<div id="fCont_title">
		<h3>GoSun Flatware: Portable Utensils to End Single-Use Plastic</h3>
		<p>Reusable utensils that fit in your wallet, purse or pocket.</p>
	</div>

	<%-- 펀딩 메인 이미지, 모금 정보 --%>
	<div id="fCont_subtitle">
		<%-- 펀딩 메인 이미지 --%>
		<div id="fCont_mainImage">
			<img src="../images/funding05.PNG" width="700" height="400"
				src="펀딩이미지05" />
			<div class="fCont_tags">
				<span class="sumCont_sub fCont_tag"><i
					class="fas fa-tag fa-lg"></i> Project We Love</span> <span
					class="sumCont_sub fCont_tag"><i class="fas fa-tag fa-lg"></i>
					Documentary</span> <span class="sumCont_sub fCont_tag"><i
					class="fas fa-map-marker-alt fa-lg"></i> 독도, 대한민국 </span> <span
					class="sumCont_sub fCont_tag"><i
					class="fas fa-hashtag fa-lg"></i> 감동적인</span>
			</div>
		</div>

		<%-- 펀딩 메인 정보 요약 --%>
		<div id="fCont_sumCont">
			<div id="fCont_sumContTS">
				<div class="progress length">
					<!-- 여기에 수정해야 할 것 : 퍼센트 표시 바. -->
					<div class="progress-bar length" role="progressbar"
						aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
						style="width: 40%">
						<%--<span class="sr-only">40% Complete</span>--%>
					</div>
				</div>
				<span class="sumCont_title">9,999 원</span> <span class="sumCont_sub">목표
					금액 10,000원 중</span> <span class="sumCont_title">1,520 명</span> <span
					class="sumCont_sub">프로젝트 후원자</span> <span class="sumCont_title">19
					일</span> <span class="sumCont_sub">남은 목표 일수</span>
				<button class="fCont_sumContBtn button button_f16 shadow"
					type="button">이 프로젝트 밀어주기</button>
				<div id="fCont_share">
					<button
						class="fCont_shareBtn button button_wce8e8e8 button_f12 shadow"
						type="button">
						<i class="fas fa-heart"></i> Remind Me
					</button>
					<div class="fCont_shareIcon fa-2x">
						<a href="#"><i class="fab fa-facebook"></i></a>
					</div>
					<div class="fCont_shareIcon fa-2x">
						<a href="#"><i class="fab fa-twitter"></i></a>
					</div>
					<div class="fCont_shareIcon fa-2x">
						<a href="#"><i class="fas fa-envelope"></i></a>
					</div>
					<div class="fCont_shareIcon fa-2x">
						<a href="#"><i class="fas fa-link"></i></a>
					</div>
				</div>
				<span class="sumCont_sub"><a href="#">All or Nothing</a>. 이
					프로젝트는 Sat, November 23 2019 1:59 PM UTC +09:00 까지 목표금액 달성시에만 후원금이
					전달됩니다.</span>
			</div>
		</div>


	</div>

	<div class="clear"></div>

	<%-- 펀딩 하위 메뉴 --%>
	<div id="fCont_menubar">
		<div id="fCont_row">
			<button class="fCont_menu">Campaign</button>
			<button class="fCont_menu">FAQ</button>
			<button class="fCont_menu">Updates</button>
			<button class="fCont_menu">Comments</button>
			<button class="fCont_menu">Communities</button>
		</div>
	</div>

	<div id="fCont_cont">
		<%-- 상세 정보 --%>
		<div id="fCont_leftCont">
		<h3>About</h3>
		<img src="../images/fundingCont01.png" width="800" height="1200" alt="fundingCont"/>
		
		</div>
		<div id="fCont_rightCont">
		<h3>About</h3>
		<img src="../images/fundingCont01.png" width="800" height="1200" alt="fundingCont"/>
		
		</div>
		
	</div>
</div>



<%@ include file="../include/footer.jsp"%>







<%-- <div id="test">
		<p>
		<i class="fas fa-bell"></i>기본 사용법
		<i class="fas fa-caret-square-right fa-lg"></i>기본 크기
		<i class="fas fa-caret-square-right fa-2x"></i>2배 크기
		<i class="fas fa-caret-square-right fa-3x"></i>3배 크기
		<i class="fas fa-caret-square-right fa-4x"></i>4배 크기
		<i class="fas fa-caret-square-right fa-4x" style="color: red;"></i>빨간색
		<i class="icon-logo_b"></i>icon-logo_b
		<i class="icon-logo_w"></i>icon-logo_w
		<i class="icon-logo_w font50"></i>icon-logo_w font50
		</p>
		</div>--%>