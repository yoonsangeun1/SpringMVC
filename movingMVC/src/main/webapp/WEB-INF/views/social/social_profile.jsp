<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/sns_header.jsp"%>
<%@ taglib prefix="c"
    		uri="http://java.sun.com/jsp/jstl/core" %>
<script>
	function setScrollX(xValue){
		/* $('#SNS_Profile_Down').scrollLeft($('#SNS_Profile_Down').scrollLeft() + xValue); */
		$('#SNS_Profile_Down').animate({scrollLeft : xValue}, 400);
	}
</script>
<div id="SNS_Profile_All">
	<!-- 배경화면 전체 지정 -->
	<div id="SNS_Profile_Wrap">
		<!-- 오브젝트 항목 래핑 -->
		<div id="SNS_Profile_Left">
			<div id="SNS_Profile_Ground">
				<div id="SNS_Profile_Background">
					<img id="SNS_Profile_Photo" src="${s_pro.profileImagePath}">
					<div id="SNS_Profile_Title_Name">
						<p>${s_pro.nickname}</p>
	 				</div>				
				</div>
				<div id="SNS_Profile_Foreground">		
					<div id="SNS_Profile_Introduce">
							<p>${s_pro.introduce}</p>
					</div>		
				</div>
			</div>
		</div>
		<div id="SNS_Profile_Set">
			<ul class="SNS_Profile_Menu_Ul">
				<li class="SNS_Profile_Menu_Button SNS_Background" onclick="setScrollX(0);">타임라인</li>
				<li class="SNS_Profile_Menu_Button SNS_Background" onclick="setScrollX(1250);">프로필 정보</li>
				<li class="SNS_Profile_Menu_Button SNS_Background" onclick="setScrollX(2500);">후원하기</li>
				<li class="SNS_Profile_Menu_Button SNS_Background" onclick="setScrollX(3750);">모아보기</li>
				<li class="SNS_Profile_Menu_Button SNS_Background" onclick="setScrollX(5000);" >친구목록</li>
			</ul>
		</div>
		<div id="SNS_Profile_Down">
			<div id="SNS_Profile_Down_Scroll">
				<div id="SNS_Profile_Story">
					<ul id="SNS_Content_ul">
							<c:if test="${empty s_pro.socialPostVO}">
								<li>등록된 게시글이 없습니다.</li>
							</c:if>
							<c:if test="${!empty s_pro.socialPostVO}">
							<c:forEach  var="s_post" items="${s_pro.socialPostVO}">
								<li>
							<div class="SNS_Profile_Post">
								<img class="SNS_Content_user_img" src="../images/member_profile.png" width="40" height="40" alt="프로필 사진">
								<div class="SNS_Content_info">
									<div class="SNS_Content_Title">${s_pro.nickname}</div>
										<c:set var="date" value="${s_post.registerDate}"/>
										
										
									<div class="SNS_Content_Writer">
										<script>/* 시간 차 계산 후 출력 */
											var writeTime = "${date}";
											var nowTime = new Date();

											var yyyy = writeTime.substr(0, 4);
											var mm = writeTime.substr(5, 2);
											var dd = writeTime.substr(8, 2);
											var hh = writeTime.substr(11, 2);
											var mi = writeTime.substr(14, 2);

											var copyTime = new Date(yyyy,mm - 1, dd, hh, mi);
											var hours = Math.abs(nowTime- copyTime) / 36e5;
											
											hours = Math.floor(hours);
											
											if (hours<=1){
												hours = "조금 전";
											}
											else if (hours<=24){
												hours = hours + "시간 전";
											}
											else if (24 < hours <= 48){
												hours = "하루 전";
											}
											else {
												hours = copyTime.substring(0,10);
											}
											document.write(hours);
											date = string.substring(0, 10);
										</script>
									</div>
								</div>
								<input class="SNS_Option_Button" type="button" value="..."	style="float: right;">
								<img class="SNS_Content_Image" alt="사진" src="${s_pro.profileImagePath}">
								<div class="SNS_Content_Cont">
									${s_post.content}
									<div class="SNS_Cont_Move">${s_post.moveCount}명이 좋아합니다!</div>
									<div class="SNS_Cont_Option">
										<div class="SNS_Cont_Option_Move">무브!</div>
										<div class="SNS_Cont_Option_Share">공유하기</div>
										<div class="SNS_Cont_Option_Funding">펀딩하기</div>
									</div>
								</div>
								<div class="SNS_Comment">
									<img class="SNS_Content_user_img" class="SNS_Profile_Picture" src="../images/member_profile.png"
										width=30px height=30px alt="">
									<p>윤상은</p>
									<p>세로드립ㅋㅋ</p>
									<br /> <img class="SNS_Content_user_img" class="SNS_Profile_Picture"
										src="../images/member_profile.png" width=30px height=30px
										alt="">
									<p>박동수</p>
									<p>고양이 머고</p>
									<br /> <img class="SNS_Content_user_img" class="SNS_Profile_Picture"
										src="../images/member_profile.png" width=30px height=30px
										alt="">
									<p></p><!-- 댓글 작성자 -->
									<p></p><!-- 댓글 내용 -->
									<br />
									<div class="SNS_Comment_Write">
										<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
											src="../images/member_profile.png" width=30px height=30px
											alt=""> <input class="SNS_Comment_Write_Chat"
											type="text"> <input class="SNS_Comment_Write_Button"
											type="button" value="작성">
									</div>
								</div>
							</div>
						</li>
							</c:forEach>
							</c:if>
					</ul>
				</div>
				<div id="SNS_Profile_Collect">
						<div id="SNS_Profile_Intro">팔로워 수 : ${s_pro.followerCount}명</div>
						<ul id="SNS_Profile_Ul">
							<li><div class="SNS_Profile_Image">
									<img class="SNS_Profile_Image_Photo" src="../images/sns_photo.gif">
									<div class="SNS_Profile_Image_Info">
										<p>${s_pro.introduce}</p>
									</div>
									<div class="SNS_Profile_Image_Center">
										<p>더 보기</p>
									</div>
									<div class="SNS_Profile_Image_Like">
										<p>❤</p>
									</div>
								</div></li>
						</ul>
					</div>
			</div>			
		</div>
	</div>
</div>

<%@ include file="../include/sns_footer.jsp"%>