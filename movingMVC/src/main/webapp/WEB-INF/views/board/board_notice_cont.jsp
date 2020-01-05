<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 내용</title>
<script src="../resourecs/js/board_free.js"></script>
<!-- <script>
function delconfirm(){
	if(confirm("삭제하시겠습니까?")){
		location.replace('/moving.com/board/notice_del?id=${bn.id}&page=${page}'); //yes
	}else{
		location.replace('/moving.com/board/notice_cont?id=${bn.id}&page=${page}'); //no
	}
}//confirm()
</script> -->
</head>
<body>

	<div id="bNotice_cont_body">
		<%--전체 div --%>

		<div id="bNotice_update">
			<%-- 업데이트 사항. 공지,이벤트 등 div --%>
			<div class="bNotice_update_tit">
				<%--업데이트--%>
				<h1>업데이트</h1>
			</div>
			<%--업데이트 --%>

			<div class="bNotice_update_list">
				<%--업데이트 밑에 리스트들 div --%>
				<ul>

					<li class="bNotice_update_list_notice"><a href="notice">공지사항</a>
					</li>

					<li><a href="event">이벤트</a></li>

					<li><a href="faq">FAQ</a></li>

				</ul>
			</div>
			<%--업데이트 밑에 리스트들 div --%>

		</div>
		<%--왼쪽 업데이트 사항. 공지,이벤트 등 div --%>

	<table border="1" id="bNotice_cont_table" cellspacing="0">

	<thead>
		<tr>
			<th  id="bNotice_cont_title"><h1>${bn.title}</h1></th>
			<%-- 제목 --%>
			<th id="bNotice_cont_date">${bn.registerDate}</th>
			<%-- 등록날짜 --%>
		</tr>
	</thead>

		<tr>
			<td id="bNotice_cont_nickname">${bn.mUserVO.nickname}</td><%-- 글쓴이 --%>
			<td  id="bNotice_cont_hit">조회 &nbsp;&nbsp;&nbsp;&nbsp;${bn.hit}</td><%-- 조회수 --%>
		</tr>

		<tr>
			<td colspan="2" id="bNotice_cont_content">${bn.content}</td>
		</tr>

	</table>

		<div id="bNotice_cont_button"> <%--버튼 div --%>

			<%-- <input type="button" value="수정"
				onclick="location=
'/moving.com/board/notice_edit?id=${bn.id}&page=${page}';" />
			board_cont?bno=번호&page=쪽번호 2개의 피라미터값
이 get방식으로 전달
			<input type="button" value="삭제" onclick="delconfirm()" /> --%>
			
			<c:if test="${(empty findField) && (empty findName)}">
					<%--검색 전 --%>
					<input type="button" value="목록"  class="bNotice_cont_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
						onclick="location='/moving.com/board/notice?page=${page}';" />
				</c:if> <c:if test="${(!empty findField) || (!empty findName)}">
					<%-- 검색 후 --%>
					<input type="button" value="목록"  class="bNotice_cont_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
						onclick="location='/moving.com/board/notice?page=${page}&findField=${findField}&findName=${findName}';" />
				</c:if>

		</div> <%--버튼 div --%>


	</div><%--전체 div --%>



	<!-- <script>
	 var msg="${msg}"; //컨트롤러에서 rttr로 설정한 키 이름을 EL로 받아와 저장했음.
	 
	 if(msg == "BOARD/FREE_EDIT"){
		 alert("글수정을 성공 했습니다!");
	 }//if boardFreeController에서 글쓰기 성공 시 출력.
 </script> -->

	<%@ include file="../include/footer.jsp"%>