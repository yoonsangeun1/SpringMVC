<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div class="fList_wrap" style="width: 100%">
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
		
<div id="fList_title">

		<section>
			<h3>
				<c:if test="${category == 20001 }">
				화면을 통해 이야기를 전달하는 대담한 영화 제작사와 예술가들을 만나보세요.<br/>
				</c:if>
				<c:if test="${category == 2000101 }">범죄 &amp; 스릴러</c:if>
				<c:if test="${category == 2000102 }">액션 &amp; 어드벤쳐</c:if>
				<c:if test="${category == 2000103 }">다큐 &amp; 드라마  &amp; 청춘</c:if>
				<c:if test="${category == 2000104 }">역사 &amp; 시대극</c:if>
				<c:if test="${category == 2000105 }">판타지 &amp; SF</c:if>
				<c:if test="${category == 2000106 }">멜로 &amp; 로맨스</c:if>
				<c:if test="${category == 2000107 }">코메디</c:if>
				<c:if test="${category == 2000108 }">애니메이션</c:if>
				<c:if test="${category == 2000109 }">기타</c:if>
				<c:if test="${category == 0 }">랜덤 추천 프로젝트</c:if>
			</h3>
			
			<p>
				<c:if test="${category == 20001 }">
				화면을 통해 이야기를 전달하는 대담한 영화 제작사와 예술가들을 만나보세요.<br/><br/><br/>
				</c:if>
				<c:if test="${category == 2000101 }">
				매 순간 조여오는 긴장이 필요하신 분들을 위해 준비해 보았어요.<br/>
				</c:if>
				<c:if test="${category == 2000102 }">
				화끈한 액션! 일상을 부셔버리는 한 편! <br/>
				</c:if>
				<c:if test="${category == 2000103 }">
				생각에 젖어보고 싶을 때 ..<br/>
				</c:if>
				<c:if test="${category == 2000104 }">
				과거를 잊은 자에겐 미래란 없다! <br/>
				</c:if>
				<c:if test="${category == 2000105 }">
				일상에 지친 분들만을 위한 분들! 현실을 잊을 수 있는 판타지 세계로의 여행, 어떠신가요?<br/>
				</c:if>
				<c:if test="${category == 2000106 }">
				사랑해본 적 있나요? 다 죽어가는 연애 세포도 살릴 당신을 위한 한 편!<br/>
				</c:if>
				<c:if test="${category == 2000107 }">
				웃음이 필요하다면 당장 클릭!<br/>
				</c:if>
				<c:if test="${category == 2000108 }">
				즐거운 동심의 세계로 다시 돌아가보세요~!<br/>
				</c:if>
				<c:if test="${category == 2000109 }">
				까다로운 당신을 위해 마저 준비해 보았어요~<br/>
				</c:if>
				<c:if test="${category == 0 }">
				결정 장애 당신을 위한 영화 뽑기!!! 가자!<br/>
				</c:if>
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
				<span><a href="/moving.com/project/list?category=0">랜덤 추천 프로젝트</a></span> 
				<!-- <span><a href="#">Explore Art</a></span> -->
			</div>
		</section>
	</div>


	<!-- 한 덩어리 -->

	<div id="fList_left2" style="width: 1200px; height: auto">
		  <p style="font-size:17px; text-align:right;">
			<!-- <b>다양한 프로젝트</b>를 탐색해보세요! -->
			<c:if test="${findField != 'nickname' }">
			<c:if test="${listCount != 0 }">
 			<b>${listCount}개의 프로젝트</b>를 탐색해보세요!
 			</c:if> 
 			</c:if>
		</p>
		<c:if test="${category == 0 }">
			<c:if test="${empty plist2 }">
			<p     style="font-size: 30px;text-align: center; margin-bottom: 100px;">
         		개설된 프로젝트가 없습니다!
         </p>
			</c:if>
			<c:if test="${!empty plist2 }">
			<c:forEach var="p" items="${plist2 }" begin="1" end="9">
			<div id="hover_container-category" style="float: left"
					onclick="location.href='/moving.com/project/content?category=${category }&id=${p.id}&page=${page }&findField=${findField }&findName=${findName }';">
						<c:if test="${p.thumbnailImage == NULL}">
							<img src="../images/funding05.PNG" width="370" height="222"  />
						</c:if>
						<c:if test="${p.thumbnailImage != NULL}">
							<img src="${p.thumbnailImage}" width="370" height="222"  />
						</c:if>
					<div class="hover_container-category-padding">
						<h3>${p.title }
						<c:if test="${p.commentCount != 0}">[${p.commentCount }]</c:if>
						</h3>
						<p>${p.introduce }</p>
						<p>By ${p.mUserVO.nickname }</p>

						<div class="progress-category">
								<!-- 여기에 수정해야 할 것 : 퍼센트 표시 바. -->
								<div class="progress-bar length" role="progressbar"
									aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
									style="width: ${ projectInfo.nowPrice div projectInfo.targetPrice * 100}%">
									<span class="sr-only">${ projectInfo.nowPrice div projectInfo.targetPrice * 100}%
										Complete</span>
								</div>

								<p>${p.nowPrice}원</p>
						<p>${p.nowPrice / p.targetPrice * 100} % 완료</p>
						<p>${p.leftLimit }일남음</p>
						</div>
					</div>
				</div>
			</c:forEach>
			</c:if>
		</c:if>
		
		<c:if test="${category != 0 }">
		<c:if test="${empty plist }">
		<p style="font-size: 30px;text-align: center; margin-bottom: 100px;">
         	개설된 프로젝트가 없습니다!
         </p>
		</c:if>
		<c:if test="${!empty plist }">
			<c:forEach var="p" items="${plist }">
				<div id="hover_container-category" style="float: left"
					onclick="location.href='/moving.com/project/content?id=${p.id}&category=${category }&page=${page }&findField=${findField }&findName=${findName }';">
					<c:if test="${p.thumbnailImage == NULL}">
							<img src="../images/funding05.PNG" width="370" height="222"  />
						</c:if>
						<c:if test="${p.thumbnailImage != NULL}">
							<img src="${p.thumbnailImage}" width="370" height="222"  />
						</c:if>
					<div class="hover_container-category-padding">
						<h3>${p.title }<c:if test="${p.commentCount != 0}">[${p.commentCount }]</c:if></h3>
						<p>${p.introduce }</p>
						<p>By ${p.mUserVO.nickname }</p>

						<div class="progress-category">
								<!-- 여기에 수정해야 할 것 : 퍼센트 표시 바. -->
								<div class="progress-bar length" role="progressbar"
									aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
									style="width: ${ projectInfo.nowPrice div projectInfo.targetPrice * 100}%">
									<span class="sr-only">${ projectInfo.nowPrice div projectInfo.targetPrice * 100}%
										Complete</span>
								</div>

								<p>${p.nowPrice}원</p>
						<p>${p.nowPrice / p.targetPrice * 100} % 완료</p>
						<p>${p.leftLimit }일남음</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:if>
		</c:if>
	</div>


<div id="bFree_pagination" style="   padding: 0px 7px;
   color:#999;
   font-size:17px;
   text-decoration:none;"> <%--페이지 div --%>	
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
 	 <a href="/moving.com/project/list?category=${category }&page=${a}&findField=${findField }&findName=${findName }">
  	   ${a}
 	 </a> 
  	</c:if>
 </c:forEach>   

	<c:if test="${page>=maxpage}">
 	 &gt;&gt;
	</c:if>

	<c:if test="${page<maxpage}">
	 <a href="/moving.com/project/list?category=${category }&page=${page+1}&findField=${findField }&findName=${findName }">
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

<div id="bFree_search"> <%--검색 구간 전체 div --%>
<form action="/moving.com/project/list?category=${category}&findField=${findField}&findName=${findName}">
      <input type="hidden" name="category" value="${category }" />
     <select name="findField" id="findField" style="height: 30px">
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

<%@ include file="../include/footer.jsp"%>