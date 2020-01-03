<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="fList_wrap">
	<div id="movie_box">
	
		<div id="fList_title">
			<%-- 세부 카테고리별 보기 버튼 --%>
			<c:if test="${!empty dvdList}">
				<div id="other_category_container">
					<span><a href="videocategory?codeNo=3000101">스릴러</a></span>
					<span><a href="videocategory?codeNo=3000102">액션</a></span>
					<span><a href="videocategory?codeNo=3000103">다큐멘터리</a></span>
					<span><a href="videocategory?codeNo=3000104">역사</a></span>
					<span><a href="videocategory?codeNo=3000105">공상과학</a></span>
					<span><a href="videocategory?codeNo=3000106">연애</a></span>
					<span><a href="videocategory?codeNo=3000107">코미디</a></span>
					<span><a href="videocategory?codeNo=3000108">애니메이션</a></span>
					<span><a href="videocategory?codeNo=3000109">기타</a></span>
				</div>
			</c:if>
			<c:if test="${empty dvdList}">
				<div id="other_category_container">
					<span><a href="videocategory?codeNo=3000101">스릴러</a></span>
					<span><a href="videocategory?codeNo=3000102">액션</a></span>
					<span><a href="videocategory?codeNo=3000103">다큐멘터리</a></span>
					<span><a href="videocategory?codeNo=3000104">역사</a></span>
					<span><a href="videocategory?codeNo=3000105">공상과학</a></span>
					<span><a href="videocategory?codeNo=3000106">연애</a></span>
					<span><a href="videocategory?codeNo=3000107">코미디</a></span>
					<span><a href="videocategory?codeNo=3000108">애니메이션</a></span>
					<span><a href="videocategory?codeNo=3000109">기타</a></span>
				</div>
			</c:if>
		</div>
		
		<nav id="list_count" style="float: right;
									margin: 125px 26px 12px 0px;
									font-size: 20px;
									font-weight: bold;
									font-style: italic;
									color: navy;
									text-align: center;
									text-shadow: 3px 3px 4px #808080;
									line-height: 20px;">
							 
			<c:if test="${!empty dvdList}">
					All Videos&nbsp;:&nbsp;${totalCount}
			</c:if>
			
		</nav> <%-- 총 게시물 수 list_count --%>
		
		<div id="list_page_notice" style="margin-top: 75%;
										  margin-bottom: 24%;
										  font-size: 25px;
										  font-style: italic;
										  text-align: center;
										  line-height: 25px;">
			
			<c:if test="${empty dvdList}"> 리스트가 비었습니다. </c:if>
			
		</div>
			
		<!-- 검색필드 넘겨주기 위한 form -->
		<form method="get" action="/moving.com/video/videocategory">
		<input type="hidden" name="codeNo" value="${codeNo}" />
		
			<c:if test="${!empty dvdList}">
				<div class="cinema">
					<c:forEach var="videoPostVO" items="${dvdList}">
						<div class="mBox_item"
							 onclick="location.href='content?id=${videoPostVO.id}&page=${page}'"
							 style="cursor: pointer;"> <%-- yoo-hyeok.tistory.com/47 --%>
							<img src="../images/PlayButton.jpg" class="image" alt="사물이 거울에 보이는 것보다 가까이 있음">
							<div class="container">
								<c:if test="${fn:length(videoPostVO.titleKorean) > 14}">
									${fn:substring(videoPostVO.titleKorean, 0, 14)} ... 
								</c:if>
								<c:if test="${fn:length(videoPostVO.titleKorean) < 14}">
									${videoPostVO.titleKorean}
								</c:if>
							</div>
							<div class="movie_postInfo">
								<div class="info_cont">
									<h4>
										[감독]
										<br />
										${videoPostVO.director}
									</h4>
									<br />
									<h4>
										[배우]
										<br />
										<c:if test="${fn:length(videoPostVO.actor) > 17}">
										${fn:substring(videoPostVO.actor, 0, 17)} ... 
										</c:if>
										<c:if test="${fn:length(videoPostVO.actor) < 17}">
											${videoPostVO.actor}
										</c:if>
									</h4>
									<br />
									<h5>
										[Synopsis]
										<br />
										<c:if test="${fn:length(videoPostVO.content) > 45}">
											${fn:substring(videoPostVO.content, 0, 45)} ... 
										</c:if>
										<c:if test="${fn:length(videoPostVO.content) < 45}">
											${videoPostVO.content}
										</c:if>
									</h5>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:if>
			
			<c:if test="${!empty dvdList}">
				<%-- 검색 구간 전체 DIV --%>
				<div id="vPost_search">
					<select name = "findField" id="findField">
					
						<%-- 필드 콤보박스 제목을 선택했을 시 selected로 기본값 부여 --%>
						<option value="title"
						<c:if test="${findField == 'title'}">
						${'selected'}</c:if>>제목</option>
						
						<option value="content"
						<c:if test="${findField == 'content'}">
						${'selected'}</c:if>>내용</option>
						
						<option value="director"
						<c:if test="${findField == 'director'}">
						${'selected'}</c:if>>감독</option>
						
						<option value="actor"
						<c:if test="${findField == 'actor'}">
						${'selected'}</c:if>>배우</option>
						
					</select>
					
					<%-- 검색 입력 창, 버튼 --%>
					<div id="vPost_input">
						<input id="findName" name="findName" size="20" value="${findName}" />
						<input type="submit" class="search_btn button_wce8e8e8" value="검색" />
					</div>
				</div>
				
				<div class="clear"></div>
				
				<%-- 페이징 처리 --%>
				<div id="list_page_num" style="margin-top: 5%;
											   margin-bottom: 10%;
											   margin-left: auto;
											   margin-right: auto;
											   font-size: 25px;
											   text-align: center;
											   line-height: 25px;">
					
					<%-- 검색 전 --%>
					<c:if test="${(empty findField) && (empty findName)}">
						
						<%-- 현재 쪽 번호 출력 --%>
						<c:forEach var="p" begin="${startpage}" end="${endpage}" step="1">
						
							<%-- 현재 쪽 번호가 선택된 경우 --%>
							<c:if test="${p == page}">
								&nbsp;
								${p}
								&nbsp;
							</c:if>
							
							<%-- 현재 쪽 번호가 선택 안 된 경우 --%>
							<c:if test="${p != page}">
								<a href="videocategory?codeNo=${videoPostVO.codeNo}&page=${p}">
									${p}
								</a>
							</c:if>
						
						</c:forEach>
						
					</c:if>
					<%-- 검색 전 --%>
					
					<%-- 검색 후 --%>
					<c:if test="${(!empty findField) || (!empty findName)}">
						
						<%--현재 쪽번호 출력 --%>
						<c:forEach var="p" begin="${startpage}" end="${endpage}" step="1">
						
							<%-- 현재 쪽 번호가 선택된 경우 --%>
							<c:if test="${p == page}">
								&nbsp;
								${p}
								&nbsp;
							</c:if>
							
							<%-- 현재 쪽 번호가 선택 안 된 경우 --%>
							<c:if test="${p != page}">
								<a href="videocategory?codeNo=${videoPostVO.codeNo}&page=${p}">
									${p}
								</a>
							</c:if>
							
						</c:forEach>
						
					</c:if>
					<%-- 검색 후 --%>
					
				</div><%-- 페이징 처리 끝 --%>
				</c:if>
				
			</form>
			
	</div><%-- movie_box --%>
</div>

<%@ include file="../include/footer.jsp"%>