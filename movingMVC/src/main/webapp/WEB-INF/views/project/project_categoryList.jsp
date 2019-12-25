<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div class="fList_wrap">
<div id="fList_title">

		<section>
			<h3>
			<c:if test="${category == 2000101 }">범죄 &amp; 스릴러</c:if>
			<c:if test="${category == 2000102 }">액션 &amp; 어드벤쳐</c:if>
			<c:if test="${category == 2000103 }">다큐 &amp; 드라마  &amp; 청춘</c:if>
			<c:if test="${category == 2000104 }">역사 &amp; 시대극</c:if>
			<c:if test="${category == 2000105 }">판타지 &amp; SF</c:if>
			<c:if test="${category == 2000106 }">멜로 &amp; 로맨스</c:if>
			<c:if test="${category == 2000107 }">코메디</c:if>
			<c:if test="${category == 2000108 }">애니메이션</c:if>
			<c:if test="${category == 2000109 }">기타</c:if>
			</h3>
			<p>
			화면을 통해 이야기를 전달하는 대담한 영화 제작사와 예술가들을 만나보세요. <br/>
<!-- 			영화 및 공연 분야에서의 야심찬 프로젝트를 실현하기 위해 무빙을 이용하는 수 많은 예술가들과 단체들을 탐색해보세요. <br/> -->
			</p>
			<%-- 세부 카테고리별 보기 버튼 --%>
			<div id="title_category_container">
				<c:if test="${category > 2000101 }">
				<span><a href="/moving.com/project/list?category=${category-1}">이전 카테고리</a></span>
				</c:if> &nbsp;
				<c:if test="${category < 2000109 }">
				<span><a href="/moving.com/project/list?category=${category+1}">다음 카테고리</a></span>
				</c:if> 
				<span><a href="/moving.com/project/list?category=20001">전체 프로젝트 보기</a></span> 
				<!-- <span><a href="#">Explore Art</a></span> -->
			</div>
		</section>
	</div>


	<!-- 한 덩어리 -->

	<div id="fList_left">
		<h3>
			<b>${listCount}개의 프로젝트</b>를 탐색해보세요!
		</h3>
		<c:if test="${!empty plist }">
			<c:forEach var="p" items="${plist }">
				<div id="hover_container-category"
					onclick="location.href='/moving.com/project/content?id=${p.id}';">
					<img src="../images/funding01.PNG" width="370" height="222"
						alt="funding01.png" />
					<div class="hover_container-category-padding">
						<h3>${p.title }</h3>
						<p>${p.introduce }sfadfdas</p>
						<p>By ${p.mUserVO.nickname }dasfadsf</p>

						<div class="progress-category">
							<!-- 여기에 수정해야 할 것 : 퍼센트 표시 바. -->
							<div class="progress-bar-category" role="progressbar"
								aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
								style="width: 40%">
								<%--<span class="sr-only">40% Complete</span>--%>
							</div>

						<p>${p.nowPrice}원</p>
						<p>${p.nowPrice div p.targetPrice * 100}%완료</p>
						<p>${projectInfo.leftLimit }일남음</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:if>
	</div>





	<div class="ProjectCardList_item">
				<div class="CommonProjectCard_container_squareSmall">
					<div class="CommonProjectCard_rect">
						<a href="/project/content" class="ProjectCardLink_link"> <span
							class="CommonProjectCard_background"
							style="background-image: url('')"></span>
						</a>
					</div>
					<div class="CommonProjectCard_info">
						<div class="RewardProjectCard_info">
							<div class="RewardProjectCard_infoTop">
								<a href="/web/campaign/detail/49208"
									class="ProjectCardLink_link"> <span
									class="CommonProjectCard_title"> <strong>${p.introduce }</strong>
								</span></a>
								<div>
									<span class="RewardProjectCard_category">뷰티</span><span
										class="RewardProjectCard_makerName">mundum</span>
								</div>
							</div>
							<div class="RewardProjectCard_gauge__T-qNI">
								<span style="width: 100%;"></span>
							</div>
							<span class="RewardProjectCard_percent__edRT9">384%</span><span
								class="RewardProjectCard_amount__2GV5X">1,921,450원</span><span
								class="RewardProjectCard_days__3Ic0W RewardProjectCard_isAchieve__argv3"><span
								class="RewardProjectCard_remainingDay__2KYop">12일</span><span
								class="RewardProjectCard_remainingDayText__1mXaP">남음</span><span
								class="RewardProjectCard_isAchieve__argv3"></span></span>
						</div>
					</div>
				</div>
			</div>
	<!-- <div class="ProjectCardList_item">
	<div class="CommonProjectCard_container_squareSmall">
		<div class="CommonProjectCard_rect">
			<a href="/project/content" class="ProjectCardLink_link">
				<span class="CommonProjectCard_background" style="background-image: url('')"></span>
			</a></div>
		<div class="CommonProjectCard_info">
			<div class="RewardProjectCard_info">
				<div class="RewardProjectCard_infoTop">
					<a href="/web/campaign/detail/49208" class="ProjectCardLink_link">
					<span class="CommonProjectCard_title">
							<strong>자가진단으로 찾아보는 나를 위한 맞춤형 세안제 먼덤 솝 블록!</strong>
						</span></a>
					<div>
						<span class="RewardProjectCard_category__1vo_V">뷰티</span><span
							class="RewardProjectCard_makerName__2sITk">mundum</span>
					</div>
				</div>
				<div class="RewardProjectCard_gauge__T-qNI">
					<span style="width: 100%;"></span>
				</div>
				<span class="RewardProjectCard_percent__edRT9">384%</span><span
					class="RewardProjectCard_amount__2GV5X">1,921,450원</span><span
					class="RewardProjectCard_days__3Ic0W RewardProjectCard_isAchieve__argv3"><span
					class="RewardProjectCard_remainingDay__2KYop">12일</span><span
					class="RewardProjectCard_remainingDayText__1mXaP">남음</span><span
					class="RewardProjectCard_isAchieve__argv3"></span></span>
			</div>
		</div>
	</div>
</div> -->
</div>

<%@ include file="../include/footer.jsp"%>