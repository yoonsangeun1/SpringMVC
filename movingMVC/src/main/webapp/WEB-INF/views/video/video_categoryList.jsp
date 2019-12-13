<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="fList_wrap">
	<div id="movie_box">
	
		<div id="fList_title">
			<section>
				<h3>Movies</h3>
				<p>Discover the artists and organizations using Kickstarter to
					realize ambitious projects in visual art and performance.</p>
				<%-- 세부 카테고리별 보기 버튼 --%>
				<div id="title_category_container">
					<span><a href="#">Explore Animation</a></span>
					<span><a href="#">Explore Romance</a></span>
					<span><a href="#">Explore Action</a></span>
					<span><a href="#">Explore Art</a></span>
				</div>
			</section>
		</div>
		
		<div class="clear"></div>
		
		<div id="list_count" style="align: center;
							 float: right;
							 margin-right: 69px;
							 font-size: 20px;
							 font-weight: bold;">
							 
			총 영상물 수 : ${totalCount}개
			
		</div>
		
		<c:if test="${!empty dvdList}">
			<div class="cinema">
				<c:forEach var="videoPostVO" items="${dvdList}">
					<div class="mBox_item"
						 onclick="location.href='content?id=${videoPostVO.id}&page=${page}'"
						 style="cursor: pointer;"> <%-- yoo-hyeok.tistory.com/47 --%>
						<img src="../images/m_sidemirror.jpg" class="image" alt="사물이 거울에 보이는 것보다 가까이 있음">
						<div class="container">
							<c:if test="${fn:length(videoPostVO.titleKorean) > 16}">
								${fn:substring(videoPostVO.titleKorean, 0, 16)} ... 
							</c:if>
							<c:if test="${fn:length(videoPostVO.titleKorean) < 16}">
								${videoPostVO.titleKorean}
							</c:if>
						</div>
						<div class="movie_postInfo">
							<div class="info_cont">
								<h4>
									[감독]
									<br />
									<c:if test="${fn:length(videoPostVO.director) > 16}">
										${fn:substring(videoPostVO.director, 0, 16)} ... 
									</c:if>
									<c:if test="${fn:length(videoPostVO.director) < 16}">
										${videoPostVO.director}
									</c:if>
								</h4>
								<br />
								<h4>
									[배우]
									<br />
									<c:if test="${fn:length(videoPostVO.actor) > 20}">
										${fn:substring(videoPostVO.actor, 0, 20)} ... 
									</c:if>
									<c:if test="${fn:length(videoPostVO.actor) < 20}">
										${videoPostVO.actor}
									</c:if>
								</h4>
								<br />
								<h5>
									[Synopsis]
									<br />
									<c:if test="${fn:length(videoPostVO.content) > 16}">
										${fn:substring(videoPostVO.content, 0, 16)} ... 
									</c:if>
									<c:if test="${fn:length(videoPostVO.content) < 16}">
										${videoPostVO.content}
									</c:if>
								</h5>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:if>
		
		<div class="clear"></div>
		
		<div id="list_page_num" style="margin-top: 10%;
									   margin-bottom: 10%;
									   margin-left: 550px;
									   font-size: 25px;">
									   
			<c:if test="${empty dvdList}"> 리스트가 비었습니다. </c:if>
			
			<%-- 현재 쪽 번호 --%>
			<c:if test="${page <= 1}">
				[Prev]
				&nbsp;
			</c:if>
			
			<%-- 현재 페이지가 첫 페이지보다 높은 숫자일 경우 --%>
			<c:if test="${page > 1}">
				<a href="videocategory?page=${page - 1}">
					[Prev]
					&nbsp;
				</a>
			</c:if>
			
			<c:forEach var="p" begin="${startpage}" end="${endpage}" step="1">
			
				<%-- 현재 쪽 번호가 선택된 경우 --%>
				<c:if test="${p == page}">
					${p}
				</c:if>
				
				<%-- 현재 쪽 번호가 선택 안 된 경우 --%>
				<c:if test="${p != page}">
					<a href="videocategory?page=${p}">
						${p}
					</a>
				</c:if>
				
			</c:forEach>
			
			<c:if test="${page >= maxpage}"> <%-- 마지막 페이지일 경우 --%>
				&nbsp;
				[Next]
			</c:if>
			
			<c:if test="${page < maxpage}"><%-- 마지막 페이지보다 낮은 숫자의 페이지일 경우 --%>
				<a href="videocategory?page=${page + 1}">
					&nbsp;
					[Next]
				</a>
			</c:if>
			
		</div><%-- list_page_num --%>
		
	</div><%-- movie_box --%>
</div>

<%@ include file="../include/footer.jsp"%>