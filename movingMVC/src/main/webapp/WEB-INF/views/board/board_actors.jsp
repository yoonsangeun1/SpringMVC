<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배우 모집</title>
</head>
<body>
	<div id="bActors_body">
		<%--전체 div --%>

		<div id="bActors_community">
			<%--왼쪽 업데이트 사항. 공지,이벤트 등 div --%>
			<div class="bActors_community_tit">
				<%--업데이트--%>
				<h1>커뮤니티</h1>
			</div>
			<%--업데이트 --%>

			<div class="bActors_community_list">
				<%--업데이트 밑에 리스트들 div --%>
				<ul>

					<li class="bActors_community_list_actors"><a href="actors">배우모집</a>
					</li>

					<li><a href="contest">시나리오 공모</a></li>

					<li><a href="free">자유게시판</a></li>

					<li><a href="qna">QnA</a> <%--QnA 작업해야 됨 --%></li>

				</ul>
			</div>
			<%--업데이트 밑에 리스트들 div --%>

		</div>
		<%--커뮤니티 배우모집,시나리오 공모 등 div --%>

		<div class="bActors_panel">
			<%--연기자 프로필 주의사항 --%>
			<h3>연기자 프로필</h3>
			<div id="bActors_panelbody">
				<%--주의사항 글 --%>
				-일반 회원이 글쓰기 가능한 연기자 프로필 페이지입니다. <br /> -이곳에 등록된 연기자를 MOVING에서 매니지먼트
				하는게 아닙니다. 직접 연락하시면 됩니다. <br /> -에이전시나 매니지먼트 업체의 '프로필 보내달라'는 댓글은
				자제해주세요. 삭제대상입니다.
			</div>
			<%--주의사항 글 --%>
		</div>
		<%--연기자 프로필 주의사항 --%>


		<div id="bActors_list">
			<%-- 배우 목록들 --%>

			<c:if test="${!empty balist}">
				<%--값이 있다면 --%>
				<c:forEach var="balist" items="${balist}">
					<div id="bActors_model">
						<%--배우들 네모 전체 div --%>
						<div>
							<%-- 배우들 사진 --%>
							<a href="/moving.com/board/actors_cont?id=${balist.id}&page=${page}"> 
							<img src="${balist.thumbnailImage}"
							width="180.4" height="225.5" />
							</a>
						</div>
						<%-- 배우들 사진 --%>



						<div id="bActors_name">
							<%-- 배우들 이름 --%>
							<a href="/moving.com/board/actors_cont?id=${balist.id}&page=${page}"> 
							<img src="../images/character.gif" id="character" /> ${balist.name}
							</a>
						</div>
						<%-- 배우들 이름 --%>
					</div>
					<%--배우들 네모 전체 div --%>
				</c:forEach>
			</c:if>

			<c:if test="${empty balist}">
				<%--balist에 값이 없으면 --%>
				<div style="height: 100px; font-size: 30px">게시물 목록이 없습니다.</div>
			</c:if>

	</div><%-- 배우 목록들 --%>

	<div>
		<%-- 밑 전체 div --%>
		<div id="bActors_writing">
			<%-- 글 쓰기 폼 div --%>
			<input type="button"
				class="bActors_writing_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
				value="글 쓰기"
				onclick="location='/moving.com/board/actors_write?page=${page}';" />
		</div>
		<%-- 글 쓰기 폼 div --%>

		<div id="clear"></div>

		<div id="bActors_pagination">
			<%--페이지 div --%>

			<%--페이징 추가 --%>
			<c:if test="${(empty findField) && (empty findName)}">
				<%--검색 전  --%>
				<c:if test="${page <= 1}">
					<%-- 첫번째 페이지 --%>
   &lt;&lt;
  </c:if>

				<c:if test="${page>1}">
					<%-- 첫페이지 초과 --%>
					<a href="/moving.com/board/actors?page=${page-1}"> &lt;&lt; </a>
				</c:if>

				<%--현재 쪽번호 출력 --%>
				<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
					<c:if test="${a==page}">
						<%--현재 쪽번호가 선택된 경우 --%>
  [${a}]
  </c:if>

					<c:if test="${a != page}">
						<%--현재 쪽번호가 선택안된 경우 --%>
						<a href="/moving.com/board/actors?page=${a}"> ${a} </a>
					</c:if>
				</c:forEach>

				<c:if test="${page>=maxpage}">
	 &gt;&gt;
	</c:if>

				<c:if test="${page<maxpage}">
					<a href="/moving.com/board/actors?page=${page+1}"> &gt;&gt; </a>
				</c:if>
			</c:if>
			<%--검색 전 --%>

			<c:if test="${(!empty findField) || (!empty findName)}">
				<%--검색 후 --%>
				<c:if test="${page <= 1}">
					<%--첫번째 페이지 --%>
 	 &lt;&lt;   
    </c:if>

				<c:if test="${page>1}">
					<%--첫페이지 초과 --%>
					<a
						href="/moving.com/board/actors?page=${page-1}&findField=${findField}&findName=${findName}">
						&lt;&lt; </a>
				</c:if>

				<%--현재 쪽번호 출력 --%>
				<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
					<c:if test="${a==page}">
						<%--현재쪽번호가 선택된 경우 --%>
      [${a}]
     </c:if>

					<c:if test="${a != page}">
						<%--현재 쪽번호가 선택안된 경우 --%>
						<a
							href="/moving.com/board/actors?page=${a}&findField=${findField}&findName=${findName}">
							${a} </a>
					</c:if>
				</c:forEach>

				<c:if test="${page >= maxpage}">
     &gt;&gt;
    </c:if>

				<c:if test="${page < maxpage}">
					<a
						href="/moving.com/board/actors?page=${page+1}&findField=${findField}&findName=${findName}">
						&gt;&gt; </a>
				</c:if>
			</c:if>
			<%--검색 후 --%>

		</div>
		<%--페이지 div --%>

		<div id="bActors_search">
			<%--검색 구간 전체 div --%>
			<select name="findField" id="findField">
				<option value="content"
					<c:if test="${findField == 'content'}">
    ${'selected'}</c:if>>내용</option>
				<option value="nickname"
					<c:if test="${findField == 'nickname'}">
    ${'selected'}</c:if>>닉네임</option>
				<option value="name"
					<c:if test="${findField == 'name'}">
    ${'seleted'}</c:if>>이름</option>
			</select>

			<div id="bActors_input">
				<%--텍필,버튼 --%>
				<input id="findName" name="findName" size="20" value="${findName}" />
				<input type="submit" class="search_btn button_wce8e8e8" value="검색" />
			</div>
			<%--텍필,버튼 --%>

		</div>
		<%--검색 구간 전체 div --%>

	</div>
	<%--프로필 전체 감쌀 div --%>
	</div>
	<%--  전체 div --%>

	<script>
		var msg = "${msg}";

		if (msg == "BOARD/ACTORS_INSERT") {
			alert("글쓰기가 성공 했습니다!");
		}//if

		if (msg == "BOARD/ACTORS_EDIT") {
			alert("글수정이 성공 했습니다!");
		}//if

		if (msg == "BOARD/ACTORS_DEL") {
			alert("글삭제가 성공 했습니다!");
		}//if
	</script>

	<%@ include file="../include/footer.jsp"%>