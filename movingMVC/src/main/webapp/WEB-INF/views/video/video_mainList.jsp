<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<meta charset="UTF-8">

<div id="movie_main_list">

	<!-- 영상 목록 이름, 영상 포스트 -->
	<div id="slide_show">
		<!-- 상단 글 -->
		<h1>
			독립 영화의 모든 것
			<br />
			회원이면 언제나 무료입니다
		</h1>
		<div id="Upcoming_movies">
			<a href="https://movie.naver.com/movie/running/premovie.nhn">
				상영 예정작 보기
			</a>
		</div>
		<hr class="category_line">
	</div>
	
	<div id="video_list"><!-- 목록 별 영상들 --> 
		<div id="thriller"><!-- 스릴러 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					<a href="videocategory?codeNo=3000101">
						범죄/스릴러
					</a>
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000101"><img src="../images/goVODCategory.png" /></a>
				</div>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="action"><!-- 액션 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					<a href="videocategory?codeNo=3000102">
						액션/어드벤쳐
					</a>
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000102"><img src="../images/goVODCategory.png" /></a>
				</div>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="documentary"><!-- 다큐 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					<a href="videocategory?codeNo=3000103">
						다큐멘터리/드라마/청춘
					</a>
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000103"><img src="../images/goVODCategory.png" /></a>
				</div>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="history"><!-- 역사 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					<a href="videocategory?codeNo=3000104">
						역사/시대극
					</a>
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000104"><img src="../images/goVODCategory.png" /></a>
				</div>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="sf"><!-- 공상과학 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					<a href="videocategory?codeNo=3000105">
						판타지/공상과학
					</a>
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000105"><img src="../images/goVODCategory.png" /></a>
				</div>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="love"><!-- 연애 -->
			<div class="listName_and_moreBtn">
				<div id="loveListName">
					<a href="videocategory?codeNo=3000106">
						연애
					</a>
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000106"><img src="../images/goVODCategory.png" /></a>
				</div>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="comedy"><!-- 코미디 -->
			<div class="listName_and_moreBtn">
				<div id="comedyListName">
					<a href="videocategory?codeNo=3000107">
						코미디
					</a>
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000107"><img src="../images/goVODCategory.png" /></a>
				</div>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="ani"><!-- 애니 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					<a href="videocategory?codeNo=3000108">
						애니메이션
					</a>
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000108"><img src="../images/goVODCategory.png" /></a>
				</div>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="etc"><!-- 기타 -->
			<div class="listName_and_moreBtn">
				<div id="etcListName">
					<a href="videocategory?codeNo=3000109">
						기타
					</a>
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000109"><img src="../images/goVODCategory.png" /></a>
				</div>
			</div>
		</div>
		<br /><br /><br /><br /><br />
	</div><%-- video_list --%>
	
</div><%-- movie_list --%>

<%@ include file="../include/footer.jsp" %>
