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
	<div id="fList_title" style="width: inherit; overflow: hidden; text-align: center;">
		<section>
			<h3>
				화면을 통해 이야기를 전달하는 대담한 영화 제작사와 예술가들을 만나보세요.<br />
			</h3>
		<div id="bFree_writing" style="text-align: center; align: center">
	      <input type="button" class="bFree_writing_btn button
	       button_c9d8ce2 button_f12 button_p1024 button_r4" 
	      value="펀딩 오픈하기" onclick="location='/moving.com/project/write';" />
	    </div> <%-- 글 쓰기 폼 div --%>
		</section>
	</div>
	<%-- MainDIV 2. 펀딩 리스트 시작 --%>
	<div id="fList_project" style="padding-top: 30px;" >
		<%-- 좌측 리스트 --%>
		<div id="fList_left">
			<!-- <h3>에디터 추천 프로젝트</h3> -->
			<h3>추천수가 가장 많은 프로젝트</h3>
			<c:if test="${!empty bestOne }">
			<div id="hover_container" onclick="location.href='/moving.com/project/content?id=${bestOne.id}&category=${category }';"
				style="cursor: pointer;">
				<c:if test="${!empty bestOne.thumbnailImage }">
				<img src="${bestOne.thumbnailImage }" width="530" height="400" alt="funding01.png" />
				</c:if>
				<c:if test="${empty bestOne.thumbnailImage }">
				<img src="../images/funding01.PNG" width="530" height="400" alt="funding01.png" />
				</c:if>
				<div class="progress">
					<!-- 여기에 수정해야 할 것 : 퍼센트 표시 바. -->
					<div class="progress-bar" role="progressbar" aria-valuenow="70"
						aria-valuemin="0" aria-valuemax="100" style="width: ${bestOne.nowPrice / bestOne.targetPrice * 100}%">
						<%--<span class="sr-only">40% Complete</span>--%>
					</div>
				</div>
				<div class="clear"></div>
				<h3> ${bestOne.title} <c:if test="${bestOne.commentCount != 0}">[${bestOne.commentCount }]</c:if></h3>
				<p>${bestOne.introduce} </p>
				<p>By ${bestOne.mUserVO.nickname} </p>
			</div>
			</c:if>
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
						onclick="location.href='/moving.com/project/content?id=${p.id}&page=${page }&category=${category }';"
						style="cursor: pointer;">
						<c:if test="${!empty p.thumbnailImage }">
						<img src="${p.thumbnailImage }" width="130" height="85" alt="funding01.png" />
						</c:if>
						<c:if test="${empty p.thumbnailImage }">
						<img src="../images/funding01.PNG" width="130" height="85" alt="funding01.png" />
						</c:if>
						<div class="hover_container2R">
							<h3>${p.title}<c:if test="${p.commentCount != 0}">[${p.commentCount }]</c:if></h3>
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
	
		   <%-- 페이징 추가 --%>
  <c:if test="${(empty findField) && (empty findName)}"> <%--검색 전 --%>
   <c:if test="${page <= 1}"> <!-- 첫번째 페이지 -->
    &lt;&lt;
   </c:if>
   
   <c:if test="${page>1}"> <!-- 첫페이지 초과 -->
    <a href="/moving.com/project/list?category=${category }&page=${page-1}">
	 &lt;&lt;
    </a>
   </c:if>
   
   <%--현재 쪽번호 출력 --%>
 <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
  <c:if test="${a==page}"> <%--현재쪽번호가 선택된 경우 --%>
   [${a}]
  </c:if>
  
  	<c:if test="${a != page}"><%--현재쪽번호가 선택안된 경우 --%>
 	 <a href="/moving.com/project/list?category=${category }&page=${a}">
  	   ${a}
 	 </a> 
  	</c:if>
 </c:forEach>   

	<c:if test="${page>=maxpage}">
 	 &gt;&gt;
	</c:if>

	<c:if test="${page<maxpage}">
	 <a href="/moving.com/project/list?category=${category }&page=${page+1}">
	  &gt;&gt;
	 </a>
	</c:if>
   </c:if> <%-- 검색 전 --%>
   
   <c:if test="${(!empty findField) || (!empty findName)}"> <%-- 검색 후 --%>
    <c:if test="${page <= 1}"> <!-- 첫번째 페이지 -->
    &lt;&lt;
   </c:if>
   
   <c:if test="${page>1}"> <!-- 첫페이지 초과 -->
    <a href="/moving.com/project/list?category=${category }&page=${page-1}&findField=${findField}&findName=${findName}">
	 &lt;&lt;
    </a>
   </c:if>
   
   <%--현재 쪽번호 출력 --%>
 <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
  <c:if test="${a==page}"> <%--현재쪽번호가 선택된 경우 --%>
   [${a}]
  </c:if>
  
  	<c:if test="${a != page}"><%--현재쪽번호가 선택안된 경우 --%>
 	 <a href="/moving.com/project/list?category=${category }&page=${a}&findField=${findField}&findName=${findName}">
  	   ${a}
 	 </a> 
  	</c:if>
 </c:forEach>   

	<c:if test="${page>=maxpage}">
 	 &gt;&gt;
	</c:if>

	<c:if test="${page<maxpage}">
	 <a href="/moving.com/project/list?category=${category }&page=${page+1}&findField=${findField}&findName=${findName}">
	  &gt;&gt;
	 </a>
	</c:if>
   </c:if> <%-- 검색 후 --%>
   
			</div>
		</div>
	</div>

	<%-- 구분선 --%>
	<div class="border_bottom20"></div>

	<%-- MainDIV 3. 구독 홍보 div --%>
	<div id="NewsletterSignUp">
		<h3><!-- Discover the best and brightest projects on Moving. -->
		Moving에서 가장 빛나는 프로젝트를 탐색해보세요.
		</h3>
		<p><!-- Sign up to receive our weekly Projects We Love newsletter. -->
		Moving의 가장 사랑받는 프로젝트를 매 주 뉴스 레터로 받아보세요. 소식을 받아보길 원한다면 이메일 입력 후 구독 버튼 클릭!
		</p>
		<div id="NewsletterSignUp_form">
			<form>
				<input id="newsletter-signup-input"
					placeholder="이메일 주소 입력" type="email" value="" /><!-- Enter email address -->
				<button type="submit" class="subscribeBtn button_wce8e8e8"id="newsletter-signup-button">구독</button>
			</form><!-- Subscribe -->
		</div>
	</div>

	<%-- 구분선 --%>
	<div class="border_bottom20"></div>

	<%-- MainDIV 3. 펀딩 프로젝트 하나짜리 --%>
	<div id="fList_projectOne"></div>

	<%-- MainDIV 3. 펀딩 프로젝트 네개짜리 --%>
	<div id="fList_projectfour">
		<h3><!-- 요즘 뜨는 -->랜덤 추천 프로젝트 &nbsp;&nbsp;&nbsp;<a href="/moving.com/project/list?category=0">Explore more &gt;&gt;</a></h3>
		
		<c:if test="${!empty plist2 }">
		<c:forEach var="p" items="${plist2}" begin="1" end="4">
			<div class="fList_projectfour_one">
				<div class="gallery">
					<a href="/moving.com/project/content?id=${p.id }&category=${category}"> 
					<c:if test="${!empty p.thumbnailImage }">
					<img src="${p.thumbnailImage }" width="246" height="135">
					</c:if>
					<c:if test="${empty p.thumbnailImage }">
					<img src="../images/funding05.PNG" width="246" height="135">
					</c:if>
					</a>
					<div class="desc">${p.title }<c:if test="${p.commentCount != 0}">[${p.commentCount }]</c:if></div>
				</div>
			</div>
		</c:forEach>
		</c:if>
	</div>

<div id="bFree_search"> <%--검색 구간 전체 div --%>
<form action="/moving.com/project/list?category=${category}&findField=${findField}&findName=${findName}">
      <input type="hidden" name="category" value="${category }" />
     <select name="findField" id="findField">
      <option value="title" <c:if test="${findField == 'title'}">${'selected'}</c:if>>제목</option> 
      <option value="content" <c:if test="${findField == 'content'}">${'selected'}</c:if>>내용</option>
      <option value="nickname" <c:if test="${findField == 'nickname'}">${'selected'}</c:if>>닉네임</option>
    </select>
   
   <div id="bFree_input"> <%--텍필,버튼 --%>
    <input id="findName" name="findName" size="20" placeholder="검색어를 입력하세요." value="${findName}"/>
    <!-- <input type="submit" class="search_btn button_wce8e8e8" value="검색" /> -->
        <input type="submit" class="search_btn button_wce8e8e8" value="검색" />
   </div> <%--텍필,버튼 --%>
   </form>
  </div> <%--검색 구간 전체 div --%>



</div>

<div class="border_bottom_b20" ></div>


<%@ include file="../include/footer.jsp"%>