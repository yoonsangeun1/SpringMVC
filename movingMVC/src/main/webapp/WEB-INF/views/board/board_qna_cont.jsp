<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 내용</title>
<script src="../resources/js/normal_post_comment.js"></script>

</head>
<body>
	
	<div id="bQna_cont_body"> <%--body 전체 div --%>

	<div id="bQna_community">
		<%-- 커뮤니티 배우모집,시나리오 공모 등  div --%>
		<div class="bQna_community_tit">
			<%--커뮤니티--%>
			<h1>커뮤니티</h1>
		</div>
		<%--커뮤니티 --%>

		<div class="bQna_community_list">
			<%--커뮤니티 밑에 리스트들 div --%>
			<ul>

				<li><a href="actors">배우 프로필</a></li>

				<li><a href="contest">시나리오 공모</a></li>

				<li><a href="free">자유게시판</a></li>

				<li  class="bQna_community_list_qna"><a href="qna">QnA</a> <%--QnA 작업해야 됨 --%></li>

			</ul>
		</div>
		<%--커뮤니티 밑에 리스트들 div --%>

	</div>
	<%--커뮤니티 배우모집,시나리오 공모 등 div --%>

	<table border="1" id="bQna_cont_table" cellspacing="0">

	<thead>
		<tr>
			<th  id="bQna_cont_title"><h1>${bq.title}</h1></th>
			<%-- 제목 --%>
			<th id="bQna_cont_date">${bq.registerDate}</th>
			<%-- 등록날짜 --%>
		</tr>
	</thead>

		<tr>
			<td id="bQna_cont_nickname">${bq.mUserVO.nickname}</td><%-- 글쓴이 --%>
			<td  id="bQna_cont_hit">조회 &nbsp;&nbsp;&nbsp;&nbsp;${bq.hit}</td><%-- 조회수 --%>
		</tr>

		<tr>
			<td colspan="2" id="bQna_cont_content">${bq.content}</td>
		</tr>

	</table>
	
	<div id="bQna_cont_button"> <%--버튼들 div --%>
	
			<input type="button" value="수정" class="bQna_cont_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
				onclick="location=
'/moving.com/board/qna_edit?id=${bq.id}&page=${page}';" />
				<%-- board_cont?bno=번호&page=쪽번호 2개의 피라미터값
이 get방식으로 전달 --%> <input type="button" value="삭제" onclick="delconfirm()"
	class="bQna_cont_btn button button_c9d8ce2 button_f12 button_p1024 button_r4" />

				<c:if test="${(empty findField) && (empty findName)}">
					<%--검색 전 --%>
					<input type="button" value="목록"  class="bQna_cont_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
						onclick="location='/moving.com/board/qna?page=${page}';" />
				</c:if> <c:if test="${(!empty findField) || (!empty findName)}">
					<%-- 검색 후 --%>
					<input type="button" value="목록"  class="bQna_cont_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
						onclick="location='/moving.com/board/Qna?page=${page}&findField=${findField}&findName=${findName}';" />
				</c:if>
				
	</div> <%--버튼들 div --%>		
	
	</div> <%--body 전체 div --%>

	<script>
	 var msg="${msg}"; //컨트롤러에서 rttr로 설정한 키 이름을 EL로 받아와 저장했음.
	 
	 if(msg == "BOARD/FREE_EDIT"){
		 alert("글수정을 성공 했습니다!");
	 }//if boardFreeController에서 글쓰기 성공 시 출력.
	 
	 if(msg == "BOARD/FREE_CONT_X"){
		 alert("본인 게시글만 삭제 가능합니다!");
	 }//글삭제 시 본인 게시글만 삭제 가능하게 함.
 </script>

	<script>
function delconfirm(){
	if(confirm("삭제하시겠습니까?")){
		location.replace('/moving.com/board/qna_del?id=${bq.id}&page=${page}'); //yes
	}else{
		location.replace('/moving.com/board/qna_cont?id=${bq.id}&page=${page}&findField=${findField}&findName=${findName}'); //no
	}
}//confirm()
</script>

	<script>
	 var msg="${msg}"; //컨트롤러에서 rttr로 설정한 키 이름을 EL로 받아와 저장했음.
	 
	 if(msg == "BOARD/QNA_EDIT"){
		 alert("글수정을 성공 했습니다!");
	 }//if boardFreeController에서 글쓰기 성공 시 출력.
	 
	 if(msg == "BOARD/QNA_CONT_X"){
		 alert("본인 게시글만 삭제 가능합니다!");
	 }//글삭제 시 본인 게시글만 삭제 가능하게 함.
 </script>

	<%@ include file="../include/footer.jsp"%>