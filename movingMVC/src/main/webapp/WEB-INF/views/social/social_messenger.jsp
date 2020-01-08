<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/sns_header.jsp"%>
<%@ taglib prefix="c" 
            uri="http://java.sun.com/jsp/jstl/core" %>
<script>
	$('#SNS_Messenger_Text_Write').focus();
	window.setTimeout('window.location.reload()',20000);
</script>
	<div id="SNS_Messenger_Wrap">
		<!-- 오브젝트 항목 래핑 -->
		<div id="SNS_Messenger_Left">
		<c:if test="${'default' != s_pro.profileImagePath}">
			<img id="SNS_Messenger_Photo" src="${sessionSocial.profileImagePath}"
				onclick="location='/moving.com/social/profile?id='+${sessionSocial.id}">
		</c:if>
		<c:if test="${'default' == s_pro.profileImagePath}">
			<img id="SNS_Messenger_Photo" src="${pageContext.request.contextPath}/resources/images/member_profile.png"
				onclick="location='/moving.com/social/profile?id='+${sessionSocial.id}">
		</c:if>
		<p id="SNS_Messenger_Photo_Title">채팅</p>
			<div id="SNS_Messenger_Chat">
			<c:if test="${!empty mlist}">
			<c:forEach var="mlist" items="${mlist}">
				<div id="SNS_Messenger_Chat_List" onclick="location.href='/moving.com/social/messenger?socialIdFrom=${sessionSocial.id}&socialIdTo=${mlist.mid}';">
					<div id="SNS_Messenger_Chatting">
						<c:if test="${mlist.socialProfileVO.profileImagePath!='default'}">
							<img id="SNS_Messenger_Chat_Photo" src="${mlist.socialProfileVO.profileImagePath }">
						</c:if>
						<c:if test="${mlist.socialProfileVO.profileImagePath=='default'}">
							<img id="SNS_Messenger_Chat_Photo" src="${pageContext.request.contextPath}/resources/images/member_profile.png">
						</c:if>
						<div id="SNS_Messenger_Chat_Name">${mlist.socialProfileVO.nickname }</div>
						<div id="SNS_Messenger_Chat_Talk">${mlist.socialMessageVO.content}${mlist.socialMessageVO.socialIdFrom}${mlist.socialMessageVO.socialIdTo}</div>
					</div>
				</div>
			</c:forEach>
			</c:if>
			<c:if test="${empty mlist}">
				<div id="SNS_Messenger_Chat_List">
					<div id="SNS_Messenger_Chatting">
						대화 목록이 없습니다.
					</div>
				</div>
			</c:if>
			</div>
		</div>
		<c:if test="${socialIdTo!=0}">
				<div id="SNS_Messenger_Mid">
			<div id="SNS_Messenger_Mid_Up">
				<c:if test="${'default' == m_pro.profileImagePath}">
					<img id="SNS_Messenger_Photo" src="${pageContext.request.contextPath}/images/member_profile.png">
				</c:if>
				<c:if test="${'default' != m_pro.profileImagePath}">
					<img id="SNS_Messenger_Photo" src="${m_pro.profileImagePath}">
				</c:if>
				<p id="SNS_Messenger_Photo_Title">${m_pro.nickname}</p>
			</div>
			<div id="SNS_Messenger_Mid_Down">
				<div id="SNS_Messenger_Intro">
				<div id="SNS_Messenger_Text">
					<input type="hidden" id="sessionId" value="${sessionId}">
					<ul>
					<c:forEach var="m" items="${m_info}">
						<c:if test="${m.socialIdFrom==sessionSocial.id}">
							<li><div id="SNS_Messenger_Text_Right"><div id="SNS_Messenger_Text_M">${m.content}</div></div></li>
						</c:if>
						<c:if test="${m.socialIdTo==sessionSocial.id}">
							<li><div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">${m.content}</div></div></li>
						</c:if>
					</c:forEach>
					</ul>
					</div>
					<form action="/moving.com/social/insertMessage"
							enctype="mutipart/form-data" method="post" name="messageTextArea">
						<input type="text" id="SNS_Messenger_Text_Write" name="content">
						<input id="SNS_Messenger_Send" type="submit" value="보내기">
						<input type="hidden" name="socialIdFrom" value="${sessionSocial.id}">
						<input type="hidden" name="socialIdTo" value="${m_pro.id}">
					</form>
				</div>
			</div>
		</div>
		<div id="SNS_Messenger_Right_Up">
			<div id="SNS_Friend_Image">
				<c:if test="${'default' == m_pro.profileImagePath}">
					<img src="${pageContext.request.contextPath}/images/member_profile.png">
				</c:if>
				<c:if test="${'default' != m_pro.profileImagePath}">
					<img src="${m_pro.profileImagePath}">
				</c:if>
				<div style="
				    width: 230px;
/* 				    border: 1px solid; */
				    text-align: center;
				">
					<p>${m_pro.nickname}</p>
				</div>
			</div>
			<div id="SNS_Friend_Menu">
				<ul id="SNS_Friend_Ul">
					<li id="SNS_Friend_Li"><input id="SNS_Friend_Button" type="button" value="프로필 바로가기" onclick="location.href='/moving.com/social/profile?id=${m_pro.id}';"></li>
<!-- 					<li id="SNS_Friend_Li"><input id="SNS_Friend_Button" type="button" value="닉네임 변경하기"></li> -->
					<li id="SNS_Friend_Li"><input id="SNS_Friend_Button" type="button" value="신고하기" onclick="location.href='/moving.com/social/report?reportId=${m_pro.id}&sendId=${sessionSocial.id}';"></li>
				</ul>
			</div>
		</div>
		</c:if>
	</div>
<%@ include file="../include/sns_footer.jsp"%>