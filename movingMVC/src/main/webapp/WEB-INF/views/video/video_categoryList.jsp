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
					<span><a href="videocategory?codeNo=3000101">Thriller</a></span>
					<span><a href="videocategory?codeNo=3000102">Action</a></span>
					<span><a href="videocategory?codeNo=3000103">Youth</a></span>
					<span><a href="videocategory?codeNo=3000104">History</a></span>
					<span><a href="videocategory?codeNo=3000105">S·F</a></span>
					<span><a href="videocategory?codeNo=3000106">Love</a></span>
					<span><a href="videocategory?codeNo=3000107">Comedy</a></span>
					<span><a href="videocategory?codeNo=3000108">Animation</a></span>
					<span><a href="videocategory?codeNo=3000109">Etc</a></span>
				</div>
			</c:if>
			<c:if test="${empty dvdList}">
				<div id="other_category_container">
					<span><a href="videocategory?codeNo=3000101">Thriller</a></span>
					<span><a href="videocategory?codeNo=3000102">Action</a></span>
					<span><a href="videocategory?codeNo=3000103">Youth</a></span>
					<span><a href="videocategory?codeNo=3000104">History</a></span>
					<span><a href="videocategory?codeNo=3000105">S·F</a></span>
					<span><a href="videocategory?codeNo=3000106">Love</a></span>
					<span><a href="videocategory?codeNo=3000107">Comedy</a></span>
					<span><a href="videocategory?codeNo=3000108">Animation</a></span>
					<span><a href="videocategory?codeNo=3000109">Etc</a></span>
				</div>
			</c:if>
		</div>
		
		<nav id="list_count" style="float: right;
									margin: 75px 26px 12px 0px;
									font-size: 20px;
									font-weight: bold;
									font-style: italic;
									color: navy;
									text-align: center;
									text-shadow: 3px 3px 4px #808080;
									line-height: 20px;">
							 
			<c:if test="${!empty dvdList}">
				<c:forEach var="codeNo" items="${dvdList}" begin="1" end="1" step="1">
					All Videos&nbsp;:&nbsp;${totalCount}
				</c:forEach>
			</c:if>
			
		</nav> <%-- 총 게시물 수 list_count --%>
		
		<div class="clear"></div>
		
		<c:if test="${!empty dvdList}">
			<div class="cinema">
				<c:forEach var="videoPostVO" items="${dvdList}">
					<div class="mBox_item"
						 onclick="location.href='content?id=${videoPostVO.id}&page=${page}'"
						 style="cursor: pointer;"> <%-- yoo-hyeok.tistory.com/47 --%>
						<img src="../images/m_sidemirror.jpg" class="image" alt="사물이 거울에 보이는 것보다 가까이 있음">
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
		
		<div id="list_page_notice" style="margin-top: 12%;
										  margin-bottom: 20%;
										  font-size: 25px;
										  font-style: italic;
										  text-align: center;
										  line-height: 25px;">
			
			<c:if test="${empty dvdList}"> 리스트가 비었습니다. </c:if>
			
		</div>
		
		<c:if test="${!empty dvdList}">
			<div id="vPost_search">	<%-- 검색 구간 전체 DIV --%>
				<select name = "vPost_combo" id="vPost_combo">
					<option value="title_content">제목+내용</option>
					<option value="title">제목</option>
					<option value="content">내용</option>
					<option value="name">이름</option>
				</select>
				<div id="vPost_input"> <%-- 검색 입력 창, 버튼 --%>
					<input id="search_text" name="search_text" size="20" />
					<input type="submit" class="search_btn button_wce8e8e8" value="검색" />
				</div>
			</div>
		</c:if>
		
		<div class="clear"></div>
		
		<div id="list_page_num" style="margin-top: 5%;
									   margin-bottom: 10%;
									   font-size: 25px;
									   text-align: center;
									   line-height: 25px;">
			
			<c:if test="${!empty dvdList}">
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
			
		</div><%-- list_page_num --%>
		
	</div><%-- movie_box --%>
</div>

<%@ include file="../include/footer.jsp"%>