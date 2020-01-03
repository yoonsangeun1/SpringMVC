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
					범죄/스릴러
				</div>
				<c:if test="${!empty topLs}">
					<div class="moreView">
						<a href="videocategory?codeNo=3000101">더 보기</a>
					</div>
				</c:if>
			</div>
			<c:if test="${!empty topLs}">
				<c:forEach var="videoPostVO" items="${topLs}">
					<div class="dvd_video_film"><%-- 범죄/스릴러 첫 번째 영상 --%>
						<div class="videoPost">
							<a href="content?codeNo=${videoPostVO.codeNo}">
								
							</a>
						</div>
						<div class="videoTitle">
							<a href="content?codeNo=${videoPostVO.codeNo}">${videoPostVO.titleKorean}</a>
						</div>
						<div class="postBtn">
							<div class="producerProf">
								<img src="../images/profile.jpg">
							</div>
							<div class="producerName">
								<b>${videoPostVO.director}</b>
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
						<div id="coverIntro">
							<button class="intro"><I>Intro post&nbsp;&nbsp;+&nbsp;</I></button>
						</div>
						<div id="modDiv" style="display: none;">
							<div class="introPostImage">
								<img src="../images/video01.PNG" />
							</div>
							<div class="introPostTitle">${videoPostVO.titleKorean}(${videoPostVO.titleEnglish})</div>
							<div class="introPostGrade">${videoPostVO.grade}</div>
							<div class="introPostGenre">${videoPostVO.genre} | </div>
							<div class="introPostRDate">${videoPostVO.releaseDate} | </div>
							<div class="introPostVLength">${videoPostVO.videoLength} | </div>
							<div class="introPostEra">${videoPostVO.eraBackground} | </div>
							<div class="introPostRate">${videoPostVO.rate}</div>
							<div class="introPostDir">감독&nbsp;${videoPostVO.director}</div>
							<div class="introPostHit">조회 수&nbsp;${videoPostVO.hit}</div>
							<div class="introPostCont">내용&nbsp;${videoPostVO.content}</div>
							<div>
								<button type="button" class="close" onclick="modDivClose();"><I>close</I></button>
							</div>
						</div>
						<script>
							$(".intro").click(function () {
								$("#modDiv").show();
							});
							function modDivClose() {
								$("#modDiv").hide();
							}
						</script>
					</div>
				</c:forEach>
			</c:if>
		</div>
		
		<hr class="category_line">
		
		<div id="action"><!-- 액션 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					액션/어드벤쳐
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000102">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film"><%-- 액션 첫 번째 영상 --%>
				<div class="videoPost">
					<a href="content?genre=${videoPostVO.genre}">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content?genre=${videoPostVO.genre}">제목을 입력하세요.</a>
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
				<div id="coverIntro">
					<button class="intro"><I>Intro post&nbsp;&nbsp;+&nbsp;</I></button>
				</div>
				<div id="modDiv" style="display: none;">
					<div class="introPostImage">
						<img src="../images/video01.PNG" />
					</div>
					<div class="introPostTitle">${videoPostVO.titleKorean}(${videoPostVO.titleEnglish})</div>
					<div class="introPostGrade">${videoPostVO.grade}</div>
					<div class="introPostGenre">${videoPostVO.genre} | </div>
					<div class="introPostRDate">${videoPostVO.releaseDate} | </div>
					<div class="introPostVLength">${videoPostVO.videoLength} | </div>
					<div class="introPostEra">${videoPostVO.eraBackground} | </div>
					<div class="introPostRate">${videoPostVO.rate}</div>
					<div class="introPostDir">감독&nbsp;${videoPostVO.director}</div>
					<div class="introPostHit">조회 수&nbsp;${videoPostVO.hit}</div>
					<div class="introPostCont">내용&nbsp;${videoPostVO.content}</div>
					<div>
						<button type="button" class="close" onclick="modDivClose();"><I>close</I></button>
					</div>
				</div>
				<script>
					$(".intro").click(function () {
						$("#modDiv").show();
					});
					function modDivClose() {
						$("#modDiv").hide();
					}
				</script>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="documentary"><!-- 다큐 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					다큐멘터리/드라마/청춘
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000103">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content?genre=${videoPostVO.genre}">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content?genre=${videoPostVO.genre}">제목을 입력하세요.</a>
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
				<div id="coverIntro">
					<button class="intro"><I>Intro post&nbsp;&nbsp;+&nbsp;</I></button>
				</div>
				<div id="modDiv" style="display: none;">
					<div class="introPostImage">
						<img src="../images/video01.PNG" />
					</div>
					<div class="introPostTitle">${videoPostVO.titleKorean}(${videoPostVO.titleEnglish})</div>
					<div class="introPostGrade">${videoPostVO.grade}</div>
					<div class="introPostGenre">${videoPostVO.genre} | </div>
					<div class="introPostRDate">${videoPostVO.releaseDate} | </div>
					<div class="introPostVLength">${videoPostVO.videoLength} | </div>
					<div class="introPostEra">${videoPostVO.eraBackground} | </div>
					<div class="introPostRate">${videoPostVO.rate}</div>
					<div class="introPostDir">감독&nbsp;${videoPostVO.director}</div>
					<div class="introPostHit">조회 수&nbsp;${videoPostVO.hit}</div>
					<div class="introPostCont">내용&nbsp;${videoPostVO.content}</div>
					<div>
						<button type="button" class="close" onclick="modDivClose();"><I>close</I></button>
					</div>
				</div>
				<script>
					$(".intro").click(function () {
						$("#modDiv").show();
					});
					function modDivClose() {
						$("#modDiv").hide();
					}
				</script>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="history"><!-- 역사 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					역사/시대극
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000104">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content?genre=${videoPostVO.genre}">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content?genre=${videoPostVO.genre}">제목을 입력하세요.</a>
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
				<div id="coverIntro">
					<button class="intro"><I>Intro post&nbsp;&nbsp;+&nbsp;</I></button>
				</div>
				<div id="modDiv" style="display: none;">
					<div class="introPostImage">
						<img src="../images/video01.PNG" />
					</div>
					<div class="introPostTitle">${videoPostVO.titleKorean}(${videoPostVO.titleEnglish})</div>
					<div class="introPostGrade">${videoPostVO.grade}</div>
					<div class="introPostGenre">${videoPostVO.genre} | </div>
					<div class="introPostRDate">${videoPostVO.releaseDate} | </div>
					<div class="introPostVLength">${videoPostVO.videoLength} | </div>
					<div class="introPostEra">${videoPostVO.eraBackground} | </div>
					<div class="introPostRate">${videoPostVO.rate}</div>
					<div class="introPostDir">감독&nbsp;${videoPostVO.director}</div>
					<div class="introPostHit">조회 수&nbsp;${videoPostVO.hit}</div>
					<div class="introPostCont">내용&nbsp;${videoPostVO.content}</div>
					<div>
						<button type="button" class="close" onclick="modDivClose();"><I>close</I></button>
					</div>
				</div>
				<script>
					$(".intro").click(function () {
						$("#modDiv").show();
					});
					function modDivClose() {
						$("#modDiv").hide();
					}
				</script>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="sf"><!-- 공상과학 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					판타지/공상과학
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000105">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content?genre=${videoPostVO.genre}">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content?genre=${videoPostVO.genre}">제목을 입력하세요.</a>
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
				<div id="coverIntro">
					<button class="intro"><I>Intro post&nbsp;&nbsp;+&nbsp;</I></button>
				</div>
				<div id="modDiv" style="display: none;">
					<div class="introPostImage">
						<img src="../images/video01.PNG" />
					</div>
					<div class="introPostTitle">${videoPostVO.titleKorean}(${videoPostVO.titleEnglish})</div>
					<div class="introPostGrade">${videoPostVO.grade}</div>
					<div class="introPostGenre">${videoPostVO.genre} | </div>
					<div class="introPostRDate">${videoPostVO.releaseDate} | </div>
					<div class="introPostVLength">${videoPostVO.videoLength} | </div>
					<div class="introPostEra">${videoPostVO.eraBackground} | </div>
					<div class="introPostRate">${videoPostVO.rate}</div>
					<div class="introPostDir">감독&nbsp;${videoPostVO.director}</div>
					<div class="introPostHit">조회 수&nbsp;${videoPostVO.hit}</div>
					<div class="introPostCont">내용&nbsp;${videoPostVO.content}</div>
					<div>
						<button type="button" class="close" onclick="modDivClose();"><I>close</I></button>
					</div>
				</div>
				<script>
					$(".intro").click(function () {
						$("#modDiv").show();
					});
					function modDivClose() {
						$("#modDiv").hide();
					}
				</script>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="love"><!-- 연애 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					연애
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000106">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content?genre=${videoPostVO.genre}">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content?genre=${videoPostVO.genre}">제목을 입력하세요.</a>
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
				<div id="coverIntro">
					<button class="intro"><I>Intro post&nbsp;&nbsp;+&nbsp;</I></button>
				</div>
				<div id="modDiv" style="display: none;">
					<div class="introPostImage">
						<img src="../images/video01.PNG" />
					</div>
					<div class="introPostTitle">${videoPostVO.titleKorean}(${videoPostVO.titleEnglish})</div>
					<div class="introPostGrade">${videoPostVO.grade}</div>
					<div class="introPostGenre">${videoPostVO.genre} | </div>
					<div class="introPostRDate">${videoPostVO.releaseDate} | </div>
					<div class="introPostVLength">${videoPostVO.videoLength} | </div>
					<div class="introPostEra">${videoPostVO.eraBackground} | </div>
					<div class="introPostRate">${videoPostVO.rate}</div>
					<div class="introPostDir">감독&nbsp;${videoPostVO.director}</div>
					<div class="introPostHit">조회 수&nbsp;${videoPostVO.hit}</div>
					<div class="introPostCont">내용&nbsp;${videoPostVO.content}</div>
					<div>
						<button type="button" class="close" onclick="modDivClose();"><I>close</I></button>
					</div>
				</div>
				<script>
					$(".intro").click(function () {
						$("#modDiv").show();
					});
					function modDivClose() {
						$("#modDiv").hide();
					}
				</script>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="comedy"><!-- 코미디 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					코미디
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000107">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content?genre=${videoPostVO.genre}">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content?genre=${videoPostVO.genre}">제목을 입력하세요.</a>
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
				<div id="coverIntro">
					<button class="intro"><I>Intro post&nbsp;&nbsp;+&nbsp;</I></button>
				</div>
				<div id="modDiv" style="display: none;">
					<div class="introPostImage">
						<img src="../images/video01.PNG" />
					</div>
					<div class="introPostTitle">${videoPostVO.titleKorean}(${videoPostVO.titleEnglish})</div>
					<div class="introPostGrade">${videoPostVO.grade}</div>
					<div class="introPostGenre">${videoPostVO.genre} | </div>
					<div class="introPostRDate">${videoPostVO.releaseDate} | </div>
					<div class="introPostVLength">${videoPostVO.videoLength} | </div>
					<div class="introPostEra">${videoPostVO.eraBackground} | </div>
					<div class="introPostRate">${videoPostVO.rate}</div>
					<div class="introPostDir">감독&nbsp;${videoPostVO.director}</div>
					<div class="introPostHit">조회 수&nbsp;${videoPostVO.hit}</div>
					<div class="introPostCont">내용&nbsp;${videoPostVO.content}</div>
					<div>
						<button type="button" class="close" onclick="modDivClose();"><I>close</I></button>
					</div>
				</div>
				<script>
					$(".intro").click(function () {
						$("#modDiv").show();
					});
					function modDivClose() {
						$("#modDiv").hide();
					}
				</script>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="ani"><!-- 애니 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					애니메이션
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000108">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content?genre=${videoPostVO.genre}">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content?genre=${videoPostVO.genre}">제목을 입력하세요.</a>
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
				<div id="coverIntro">
					<button class="intro"><I>Intro post&nbsp;&nbsp;+&nbsp;</I></button>
				</div>
				<div id="modDiv" style="display: none;">
					<div class="introPostImage">
						<img src="../images/video01.PNG" />
					</div>
					<div class="introPostTitle">${videoPostVO.titleKorean}(${videoPostVO.titleEnglish})</div>
					<div class="introPostGrade">${videoPostVO.grade}</div>
					<div class="introPostGenre">${videoPostVO.genre} | </div>
					<div class="introPostRDate">${videoPostVO.releaseDate} | </div>
					<div class="introPostVLength">${videoPostVO.videoLength} | </div>
					<div class="introPostEra">${videoPostVO.eraBackground} | </div>
					<div class="introPostRate">${videoPostVO.rate}</div>
					<div class="introPostDir">감독&nbsp;${videoPostVO.director}</div>
					<div class="introPostHit">조회 수&nbsp;${videoPostVO.hit}</div>
					<div class="introPostCont">내용&nbsp;${videoPostVO.content}</div>
					<div>
						<button type="button" class="close" onclick="modDivClose();"><I>close</I></button>
					</div>
				</div>
				<script>
					$(".intro").click(function () {
						$("#modDiv").show();
					});
					function modDivClose() {
						$("#modDiv").hide();
					}
				</script>
			</div>
		</div>
		
		<hr class="category_line">
		
		<div id="etc"><!-- 기타 -->
			<div class="listName_and_moreBtn">
				<div class="listName">
					기타
				</div>
				<div class="moreView">
					<a href="videocategory?codeNo=3000109">더 보기</a>
				</div>
			</div>
			<div class="dvd_video_film">
				<div class="videoPost">
					<a href="content?genre=${videoPostVO.genre}">
						
					</a>
				</div>
				<div class="videoTitle">
					<a href="content?genre=${videoPostVO.genre}">제목을 입력하세요.</a>
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
				<div id="coverIntro">
					<button class="intro"><I>Intro post&nbsp;&nbsp;+&nbsp;</I></button>
				</div>
				<div id="modDiv" style="display: none;">
					<div class="introPostImage">
						<img src="../images/video01.PNG" />
					</div>
					<div class="introPostTitle">${videoPostVO.titleKorean}(${videoPostVO.titleEnglish})</div>
					<div class="introPostGrade">${videoPostVO.grade}</div>
					<div class="introPostGenre">${videoPostVO.genre} | </div>
					<div class="introPostRDate">${videoPostVO.releaseDate} | </div>
					<div class="introPostVLength">${videoPostVO.videoLength} | </div>
					<div class="introPostEra">${videoPostVO.eraBackground} | </div>
					<div class="introPostRate">${videoPostVO.rate}</div>
					<div class="introPostDir">감독&nbsp;${videoPostVO.director}</div>
					<div class="introPostHit">조회 수&nbsp;${videoPostVO.hit}</div>
					<div class="introPostCont">내용&nbsp;${videoPostVO.content}</div>
					<div>
						<button type="button" class="close" onclick="modDivClose();"><I>close</I></button>
					</div>
				</div>
				<script>
					$(".intro").click(function () {
						$("#modDiv").show();
					});
					function modDivClose() {
						$("#modDiv").hide();
					}
				</script>
			</div>
		</div>
		
		<hr class="category_line">

	</div><%-- video_list --%>

</div><%-- movie_list --%>

<%@ include file="../include/footer.jsp" %>
