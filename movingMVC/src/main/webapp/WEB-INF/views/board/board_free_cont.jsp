<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 내용</title>
<script src="../resources/js/normal_post_comment.js"></script>

</head>
<body>
	
	<div id="bFree_cont_body"> <%--body 전체 div --%>

	<div id="bFree_community">
		<%-- 커뮤니티 배우모집,시나리오 공모 등  div --%>
		<div class="bFree_community_tit">
			<%--커뮤니티--%>
			<h1>커뮤니티</h1>
		</div>
		<%--커뮤니티 --%>

		<div class="bFree_community_list">
			<%--커뮤니티 밑에 리스트들 div --%>
			<ul>

				<li><a href="actors">배우 프로필</a></li>

				<li><a href="contest">시나리오 공모</a></li>

				<li class="bFree_community_list_free"><a href="free">자유게시판</a></li>

				<li><a href="qna">QnA</a> <%--QnA 작업해야 됨 --%></li>

			</ul>
		</div>
		<%--커뮤니티 밑에 리스트들 div --%>

	</div>
	<%--커뮤니티 배우모집,시나리오 공모 등 div --%>

	<table border="1" id="bFree_cont_table" cellspacing="0">

	<thead>
		<tr>
			<th  id="bFree_cont_title"><h1>${bf.title}</h1></th>
			<%-- 제목 --%>
			<th id="bFree_cont_date">${bf.registerDate}</th>
			<%-- 등록날짜 --%>
		</tr>
	</thead>

		<tr>
			<td id="bFree_cont_nickname">${bf.mUserVO.nickname}</td><%-- 글쓴이 --%>
			<td  id="bFree_cont_hit">조회 &nbsp;&nbsp;&nbsp;&nbsp;${bf.hit}</td><%-- 조회수 --%>
		</tr>

		<tr>
			<td colspan="2" id="bFree_cont_content">${bf.content}</td>
		</tr>

	</table>
	
	<div id="bFree_cont_button"> <%--버튼들 div --%>
	
			<input type="button" value="수정" class="bFree_cont_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
				onclick="location=
'/moving.com/board/free_edit?id=${bf.id}&page=${page}';" />
				<%-- board_cont?bno=번호&page=쪽번호 2개의 피라미터값
이 get방식으로 전달 --%> <input type="button" value="삭제" onclick="delconfirm()"
	class="bFree_cont_btn button button_c9d8ce2 button_f12 button_p1024 button_r4" />

				<c:if test="${(empty findField) && (empty findName)}">
					<%--검색 전 --%>
					<input type="button" value="목록"  class="bFree_cont_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
						onclick="location='/moving.com/board/free?page=${page}';" />
				</c:if> <c:if test="${(!empty findField) || (!empty findName)}">
					<%-- 검색 후 --%>
					<input type="button" value="목록"  class="bFree_cont_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
						onclick="location='/moving.com/board/free?page=${page}&findField=${findField}&findName=${findName}';" />
				</c:if>
				
	</div> <%--버튼들 div --%>		
	
	 <div id="fCont_CommentsCont">
				<div class="SNS_Comment">

					<%------------------------------------------------------------------------------------------------ --%>
					<%-- 댓글 작성 --%>
					<div class="SNS_Comment_Write">
						<%-- 본인의 프로필 사진이 있다면,없다면 분기 나누기 나중에 프로필사진--%>
						<%-- 프로필 이미지가 있을 경우 --%>
						<c:if test="${'default' != profile_image_url }">
							<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
								src="${profile_image_url}" width="30" height="30"
								alt="">
						</c:if>
						<%-- 프로필 이미지가 없을 경우 --%>
						<c:if test="${'default' == profile_image_url }">
							<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
								src="${pageContext.request.contextPath}/resources/images/member_profile.png" width="30" height="30" alt="">
						</c:if>
						<input type="hidden" id="normal_post_id" size="40" value="${bf.id}">
						<p id="sessionId">${nickname}</p>
						<input id="content" name="content" class="SNS_Comment_Write_Chat">
						<input id="write" name="write" class="SNS_Comment_Write_Button" type="button" 
						value="작성" >
					</div>
					
					<%-- 댓글 목록 출력 --%>
					<%-- 댓글이 있다면 --%>
					<ul id="replies" 
						style="margin-top: 7px; list-style: none; align-items: center;">
						 <c:if test="${!empty bf.mCommentVO }">
							<c:forEach var="comment" items="${bf.mCommentVO }">
								<li class='replies' data-commentId='${comment.id }' style="align-items: center;">
									<div class='comment_no' style='display:none'>${comment.id}</div>
									<input type="hidden" class="id" value="${comment.id }">
									<c:if test="${ comment.mUserVO.profileImageUrl != 'default'}">
										<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
											src="${comment.mUserVO.profileImageUrl }" width="30" height="30" alt="">
									</c:if> 
									<c:if test="${comment.mUserVO.profileImageUrl == 'default'}">
										<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
											src="${pageContext.request.contextPath}/resources/images/member_profile.png" width="30" height="30" alt="">
									</c:if>
									<p><a href="/moving.com/member_mypage?mid=${comment.userIdFrom}">
									${comment.mUserVO.nickname }</a></p>
									<p class='comment_content_${comment.id }'>${comment.content}</p>
									<input name='comment_txt_${comment.id }' class='comment_txt' value='${comment.content }' style='display: none;'>
									<c:set var="sessionId" value="${id }"></c:set>
									<c:if test="${comment.userIdFrom == sessionId }">
									<button type="button" name="modify_${comment.id}" class="modify SNS_Comment_Write_Button" >수정</button>
									<button type="button" name="modify_ok_${comment.id}" class="modify_ok SNS_Comment_Write_Button"  style='display: none;'>수정 완료</button>
									<button type="button" name="delete_${comment.id}" class="delete SNS_Comment_Write_Button" >삭제</button>
									</c:if>
									</li>
							</c:forEach>
						</c:if>
						<c:if test="${empty bf.mCommentVO}">
							<li><p>작성된 댓글이 아직 없습니다</p></li>
						</c:if>
					</ul>
				</div>

			</div>
	
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
		location.replace('/moving.com/board/free_del?id=${bf.id}&page=${page}'); //yes
	}else{
		location.replace('/moving.com/board/free_cont?id=${bf.id}&page=${page}&findField=${findField}&findName=${findName}'); //no
	}
}//confirm()
</script>

	<%@ include file="../include/footer.jsp"%>