<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/sns_header.jsp"%>
<%@ taglib prefix="c" 
            uri="http://java.sun.com/jsp/jstl/core" %>
	<div id="SNS_Messenger_Wrap">
		<!-- 오브젝트 항목 래핑 -->
		<div id="SNS_Messenger_Left">
		<c:if test="${!empty s_pro.profileImagePath}">
			<img id="SNS_Messenger_Photo" src="${s_pro.profileImagePath}"
				onclick="location='/moving.com/social/profile?id='+${sessionSocial.id}">
		</c:if>
		<c:if test="${empty s_pro.profileImagePath}">
			<img id="SNS_Messenger_Photo" src="../images/member_profile.png"
				onclick="location='/moving.com/social/profile?id='+${sessionSocial.id}">
		</c:if>
		<p id="SNS_Messenger_Photo_Title">채팅</p>
			<div id="SNS_Messenger_Chat">
			<c:if test="${!empty mlist}">
			<c:forEach var="mlist" items="${mlist}">
				<div id="SNS_Messenger_Chat_List" onclick="location.href='/moving.com/social/messenger?socialIdFrom=${sessionSocial.id}&socialIdTo=${mlist.mid}';">
					<div id="SNS_Messenger_Chatting">
						<c:if test="${mlist.socialProfileVO.profileImagePath=='default'}">
							<img id="SNS_Messenger_Chat_Photo" src="${mlist.socialProfileVO.profileImagePath }">
						</c:if>
						<c:if test="${mlist.socialProfileVO.profileImagePath!='default'}">
							<img id="SNS_Messenger_Chat_Photo" src="../images/member_profile.png">
						</c:if>
						<div id="SNS_Messenger_Chat_Name">${mlist.socialProfileVO.nickname }</div>
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
		<div id="SNS_Messenger_Mid">
			<div id="SNS_Messenger_Mid_Up">
				<c:if test="${empty m_pro.profileImagePath}">
					<img id="SNS_Messenger_Photo" src="../images/member_profile.png">
				</c:if>
				<c:if test="${!empty m_pro.profileImagePath}">
					<img id="SNS_Messenger_Photo" src="${m_pro.image_profile_path}">
				</c:if>
				<p id="SNS_Messenger_Photo_Title">${m_pro.nickname}</p>
			</div>
			<div id="SNS_Messenger_Mid_Down">
				<div id="SNS_Messenger_Intro">
					<div id="SNS_Messenger_Text">
						<div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채 팝니다.</div></div>
						<div id="SNS_Messenger_Text_Right"><div id="SNS_Messenger_Text_M">안 사요.</div></div>
						<div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채.</div></div>
						<div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">팝니다.</div></div>
						<div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채 팝니다.</div></div>
						<div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채 팝니다.</div></div>
						<div id="SNS_Messenger_Text_Right"><div id="SNS_Messenger_Text_M">안 사요.</div></div>
						<div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">사세요.</div></div>
						<div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">팝니다.</div></div>
						<div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채 팝니다.</div></div>
						<div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채 팝니다.</div></div>
						<div id="SNS_Messenger_Text_Right"><div id="SNS_Messenger_Text_M">안 사요.</div></div>
						<div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채.</div></div>
						<div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">팝니다.</div></div>
						<div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채 팝니다.</div></div>
					</div>
					<textarea id="SNS_Messenger_Text_Write">안 산다고</textarea>
				</div>
			</div>
		</div>
		<div id="SNS_Messenger_Right_Up">
			<div id="SNS_Friend_Image">
				<c:if test="${empty m_pro.profileImagePath}">
					<img src="../images/member_profile.png">
				</c:if>
				<c:if test="${!empty m_pro.profileImagePath}">
					<img src="${m_pro.image_profile_path}">
				</c:if>
				<p>${m_pro.nickname}</p>
			</div>
			<div id="SNS_Friend_Menu">
				<ul id="SNS_Friend_Ul">
					<li id="SNS_Friend_Li"><input id="SNS_Friend_Button" type="button" value="프로필 바로가기" onclick="location.href='/moving.com/social/profile?id=${m_pro.id}';"></li>
<!-- 					<li id="SNS_Friend_Li"><input id="SNS_Friend_Button" type="button" value="닉네임 변경하기"></li> -->
					<li id="SNS_Friend_Li"><input id="SNS_Friend_Button" type="button" value="차단하기"></li>
					<li id="SNS_Friend_Li"><input id="SNS_Friend_Button" type="button" value="신고하기"></li>
				</ul>
			</div>
		</div>
	</div>

<%@ include file="../include/sns_footer.jsp"%>