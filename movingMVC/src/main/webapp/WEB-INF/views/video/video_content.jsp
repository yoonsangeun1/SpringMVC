<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../include/header.jsp" %>
	
	<%-- 전체 영화 관람 페이지 코딩 start --%>
	<div id="movie_comment">
		
		<%-- 동영상 삽입 start --%>
		<div id="video">
			
			<iframe width="1200" height="700" src="${videoPostVO.videoFilePath}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			
		</div>
		<%-- 동영상 삽입 end --%>
		
		<%-- 영상 기본 정보 코드 start --%>
		<div id="videoInfo">
			<h5 class="subTitle">${videoPostVO.titleKorean}(${videoPostVO.titleEnglish})</h5>
			<div class="clear"></div>
			<p class="subInfo">조회 수 ${videoPostVO.hit}회 · ${videoPostVO.registerDate}<p><!-- 조회 수는 mainList(배열 처리, TOP순위 처리), categoryList 페이징 처리 후 작업 : https://rongscodinghistory.tistory.com/7 -->
			<div class="clear"></div>
			<hr /><br /><br />
			<div class="clear"></div>
			<a href="https://www.youtube.com/channel/UCmLiSrat4HW2k07ahKEJo4w"><img src="../images/m_publisher.PNG" /></a>
			<a href="https://www.youtube.com/channel/UCmLiSrat4HW2k07ahKEJo4w"><b>${videoPostVO.director}</b></a>
			<div class="clear"></div>
			<p class="subCont">${videoPostVO.content}</p>
			<div class="clear"></div>
			<br /><br /><hr /><br />
		</div>
		<%-- 영상 기본 정보 코드 end --%>
		
		<%-- 댓글과 답글 관련 기능 start --%>
		
		<%-- 댓글 작성란 코드 start --%>
		<div id="review">
			<div class="reviewer">
				<img src="../images/m_publisher.PNG">
			</div>
			<div id="reviewText">
				<textarea name="air_type" wrap="VIRTUAL" placeholder="공개 댓글 추가..."></textarea>
			</div>
			<div id="footer" class="review-commentbox">
				<div id="buttons" class="review-commentbox">
					<button id="cancel-button" class="review-commentbox style-text size-default">
					취소
					</button>
					<button id="submit-button" class="review-commentbox style-primary size-default">
					댓글
					</button>
				</div> 
			</div>
		</div>
		<%-- 댓글 작성란 코드 end --%>
		<%-- 댓글 목록란 코드 start --%>
		
		<%-- 댓글 목록란 코드 end --%>
		
		<%-- 댓글과 답글 관련 기능 end --%>
		
		<%-- 추가 비디오 목록 코드 start --%> 
		<div id="other_Movie"><!-- 다른 동영상들을 담고 있는 div -->
			<div class="mVideo"><!-- 영화 동영상 각각 div 설정 -->
				<p class="otherMovieTitle">${videoPostVO.titleKorean}</p>
				<a href="content?id=${videoPostVO.id}&page=${page}"><img src="../images/replyuser.png" width="280px" height="200px" /></a>
			</div>
		</div>
		<%-- 추가 비디오 목록 코드 end --%> 
		
	</div>
	<%-- 전체 영화 관람 페이지 코딩 end --%>

<%@ include file="../include/footer.jsp" %>

<!-- 아래는 작업하면서 알게 된 점들을 메모한 것입니다. -->
<%-- p tag 글꼴 설정 --%>
<%-- <p style="font-size:11px; color: blue; font-family: '맑은 고딕';"></p> --%>
<%-- 하이퍼링크 개별 적용 : .css에서 .class name a {} or #id name a {} --%>