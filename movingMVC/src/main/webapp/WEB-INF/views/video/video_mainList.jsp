<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp" %>

<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="./resources/css/movie_mainList.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function () {
	$(".postView").click(function () {
		$(".postViewArea").show();
	});
	$(".postViewAreaClose").click(function () {
		$(".postViewArea").hide();
	})
});
</script>

<div id="movie_main_list">
	<!-- 영상 목록 이름, 영상 포스트 -->

	<div id="slide_show">
		<!-- 슬라이드 쇼 -->
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
					범죄/스릴러
				</div>
				<div class="moreView">
					<a href="videocategory">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film"><%-- 범죄/스릴러 첫 번째 영상 --%>
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="https://www.youtube.com/channel/UCriPmQ2RpvdNSZkMwuOmTnQ"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				<button class="postView">a b o u t	&nbsp;	&nbsp;	p o s t</button>
				<div class="postViewArea" style="display: none;">
					<button class="postViewAreaClose">c a n c l e</button>
				</div>
			</div>
			<div class="dvd_video_film"><%-- 범죄/스릴러 두 번째 영상 --%>
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film"><%-- 범죄/스릴러 세 번째 영상 --%>
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film"><%-- 범죄/스릴러 네 번째 영상 --%>
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="action"><!-- 액션 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					액션/어드벤처
				</div>
				<div class="moreView">
					<a href="videocategory">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film"><%-- 액션 첫 번째 영상 --%>
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film"><%-- 액션 두 번째 영상 --%>
				<div class="videoPost"><%-- 영화 첫 화면, 마우스 오버 시 영상 빨리 감기로 몇 초간 재생, 동영상 편집 필요할 듯 함 --%>
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle"><%-- 영화 이름 --%>
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf"><%-- 게시자 프로필 사진 --%>
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName"><%-- 게시자 --%>
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share"><%-- 유튜브 공유하기 카피하려고 만듦 --%>
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join"><%-- 게시자 홈페이지로 이동 --%>
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink"><%-- moving main site로 이동 --%>
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film"><%-- 액션 세 번째 영상 --%>
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film"><%-- 액션 네 번째 영상 --%>
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="documentary"><!-- 다큐 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					다큐멘터리/드라마/청춘
				</div>
				<div class="moreView">
					<a href="videocategory">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="history"><!-- 역사 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					역사/시대극
				</div>
				<div class="moreView">
					<a href="videocategory">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="sf"><!-- 공상과학 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					판타지/공상과학
				</div>
				<div class="moreView">
					<a href="videocategory">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="love"><!-- 연애 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					연애
				</div>
				<div class="moreView">
					<a href="videocategory">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="comedy"><!-- 코미디 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					코미디
				</div>
				<div class="moreView">
					<a href="videocategory">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="ani"><!-- 애니 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					애니메이션
				</div>
				<div class="moreView">
					<a href="videocategory">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="etc"><!-- 기타 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					기타
				</div>
				<div class="moreView">
					<a href="videocategory">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content">제목을 입력하세요.</a>
				</div>
				<div class="postBtn">
					<div class="producerProf">
						<img src="../images/profile.jpg">
					</div>
					<div class="producerName">
						<b>우리 조 파이팅!</b>
					</div>
					<div class="share">
						<a href="#"><img src="../images/share.png"></a>
					</div>
					<div class="join">
						<a href="#"><img src="../images/join.PNG"></a>
					</div>
					<div class="clear"></div>
					<div class="hyperLink">
						<a href="http://www.youtube.com"><font size="2px">youtube.com</font></a>
					</div>
				</div>
				
			</div>
		</div>
		
		<hr class="category_line">

	</div><%-- video_list --%>

</div><%-- movie_list --%>

<%@ include file="../include/footer.jsp" %>
