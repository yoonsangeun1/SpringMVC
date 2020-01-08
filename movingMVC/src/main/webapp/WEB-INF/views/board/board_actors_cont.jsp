<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="${pageContext.request.contextPath}/resources/js/jstest.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연기자 프로필 내용</title>
<script src="../resources/js/jquery.js"></script>
</head>
<body>

	<div id="bActors_cont_body"> <%--전체 div --%>

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

					<li class="bActors_community_list_actors"><a href="actors">배우 프로필</a>
					</li>

					<li><a href="contest">시나리오 공모</a></li>

					<li><a href="free">자유게시판</a></li>

					<li><a href="qna">QnA</a> <%--QnA 작업해야 됨 --%></li>

				</ul>
			</div><%--업데이트 밑에 리스트들 div --%>

		</div><%--커뮤니티 배우모집,시나리오 공모 등 div --%>
	
  <table id="bActors_cont_table" border="1" cellspacing="0" > <!-- width 임시로 넣어둠. -->
 	
<%--  	<tr>
 	 <th> 등록 날짜 : </th>
 	 <td id="bActors_cont_registerDate">${ba.registerDate}</td>
 	</tr>
 	
 	<tr>
 	 <th> 이름 : </th>
 	 <td id="bActors_cont_name">${ba.name}</td>
 	</tr>	
 	
 	<tr>
 	 <th>조회수 : </th>
 	 <td id="bActors_cont_hit">${ba.hit}</td>
 	</tr> --%>
 	
<%--  	<tr>
 	 <th>등록날짜</th>
 	 <td>
 	 ${ba.registerDate}
 	 </td>
 	</tr> --%>
 	
<%--    <tr>
    <th>이름</th>
    <td>${ba.name}
   </tr> --%>
   
   <tr>
    <td rowspan="5" id="bActors_cont_image">
	<img src="${ba.thumbnailImage}" style="height:100%; width:100%"
	 onerror="src='../resources/images/noimage.gif'"/>
    </td>
       </tr>
    
    <tr>
     <th> 등록 날짜  </th>
 	 <td id="bActors_cont_registerDate" colspan="2">${ba.registerDate}</td>
 	</tr>
 	
 	<tr>
 	 <th> 이름  </th>
 	 <td id="bActors_cont_name" colspan="2">${ba.name}</td>	
 	</tr>
 	
 	<tr>
 	 <th>조회수  </th>
 	 <td id="bActors_cont_hit" colspan="2">${ba.hit}</td>
    </tr>

   
   <tr>
    <th>카테고리  </th>
	<td id="bActors_cont_category" colspan="2">
	<c:if test="${ba.category eq 'actor'}">
	배우
	</c:if>
	<c:if test="${ba.category eq 'stunt'}">
	스턴트맨
	</c:if>
	<c:if test="${ba.category eq 'childactor'}">
	아역배우
	</c:if>
	<c:if test="${ba.category eq 'etc'}">
	${ba.etctext}
	</c:if>	
	</td>
   </tr>
   
   <tr>
    <th colspan="2">E-MAIL  </th>
    <td colspan="2">
	${ba.email}
    </td>
   </tr>
   
   <tr>
    <th colspan="2">생년월일  </th>
    <td colspan="2">
	${fn:substring(ba.birthDate,0,10)}
    </td>
   </tr>
   
   <tr>
    <th colspan="2">신장  </th>
    <td colspan="2">
    ${ba.height}
    </td>
   </tr>
   
   <tr>
    <th colspan="2">성별  </th>
    <td colspan="2">
   	<c:if test="${ba.sex eq 'male'}">
   	남성
   	</c:if>  
   	<c:if test="${ba.sex eq 'female'}">
   	여성
   	</c:if> 
    </td>
   </tr>
   
   <tr>
    <th colspan="2">웹사이트  </th>
    <td colspan="2">
	${ba.websiteUrl}
    </td>
   </tr>
  
   <tr>
    <th colspan="4">내용</th>
   </tr> 
   
   <tr>
    <td colspan="4" id="bActors_cont_content">${ba.content}</td>
   </tr>
  
  </table>
  
  	<div id="bActors_cont_button"> <%--버튼 div --%>
  
    <input type="button" value="수정" class="bActors_cont_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
    onclick="location='/moving.com/board/actors_edit?id=${ba.id}&page=${page}';" />
    <input type="reset" value="삭제" class="bActors_cont_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
    onclick="delconfirm()" />
    <input type="button" value="목록" class="bActors_cont_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
    onclick="location='/moving.com/board/actors?page=${page}';" />
    
    </div> <%--버튼 div --%>
    
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
						<input type="hidden" id="profile_post_id" size="40" value="${ba.id}">
						<p id="sessionId">${nickname}</p>
						<input id="content" name="content" class="SNS_Comment_Write_Chat">
						<input id="write" name="write" class="SNS_Comment_Write_Button" type="button" 
						value="작성" >
					</div>
					
					<%-- 댓글 목록 출력 --%>
					<%-- 댓글이 있다면 --%>
					<ul id="replies"
						style="margin-top: 7px; list-style: none; align-items: center;">
						 <c:if test="${!empty ba.mCommentVO }">
							<c:forEach var="comment" items="${ba.mCommentVO }">
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
						<c:if test="${empty ba.mCommentVO}">
							<li><p>작성된 댓글이 아직 없습니다</p></li>
						</c:if>
					</ul>
				</div>

			</div>
    
    
  
  </div> <%--전체 div --%>
  
  
  
<script>
 function delconfirm(){
	 if(confirm("삭제하시겠습니까?")){
		 location.replace('/moving.com/board/actors_del?id=${ba.id}&page=${page}');//yes
	 }else{
		 location.replace('/moving.com/board/actors_cont?id=${ba.id}&page=${page}');//no
	 }//if else
 }//function delconfirm()
</script>

<script>
 var msg="${msg}"; 
 
 if(msg == "BOARD/ACTORS_EDIT"){
	 alert("글수정을 성공 했습니다!");
 }//if
 
 if(msg == "BOARD/ACTORS_CON_X"){
	 alert("본인 게시글만 삭제 가능합니다!");
 }//if
 
 
 
</script>

<%@ include file="../include/footer.jsp"%>
