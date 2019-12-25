<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>

<!-- 크라우드 펀딩 상세 페이지 -->
<%-- 펀딩 제목, 간략 소개글 --%>
<div id="fCont_wrap">
	<div id="fCont_title">
		<h3>${projectInfo.title }</h3>
		<p>${projectInfo.introduce }</p>
	</div>

	<%-- 펀딩 메인 이미지, 모금 정보 --%>
	<div id="fCont_subtitle">
		<%-- 펀딩 메인 이미지 --%>
		<div id="fCont_mainImage">
			<img src="../images/funding05.PNG" width="700" height="400"
				src="펀딩이미지05" />
			<div class="fCont_tags">
				<span class="sumCont_sub fCont_tag"><i
					class="fas fa-tag fa-lg"></i> Project We Love</span> <span
					class="sumCont_sub fCont_tag"><i class="fas fa-tag fa-lg"></i>
					Documentary</span> <span class="sumCont_sub fCont_tag"><i
					class="fas fa-map-marker-alt fa-lg"></i> 독도, 대한민국 </span> <span
					class="sumCont_sub fCont_tag"><i
					class="fas fa-hashtag fa-lg"></i> 감동적인</span>
			</div>
		</div>

		<%-- 펀딩 메인 정보 요약 --%>
		<div id="fCont_sumCont">
			<div id="fCont_sumContTS">
				<div class="progress length">
					<!-- 여기에 수정해야 할 것 : 퍼센트 표시 바. -->
					<div class="progress-bar length" role="progressbar"
						aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
						style="width: ${ projectInfo.nowPrice div projectInfo.targetPrice * 100}%">
						<span class="sr-only">${ projectInfo.nowPrice div projectInfo.targetPrice * 100}%
							Complete</span>
					</div>
				</div>
				<span class="sumCont_title">${ projectInfo.nowPrice } 원</span> <span
					class="sumCont_sub">목표 금액 ${projectInfo.targetPrice } 원 중</span> <span
					class="sumCont_title">${projectInfo.sponserCount } 명</span> <span
					class="sumCont_sub">프로젝트 후원자</span> <span class="sumCont_title">${projectInfo.leftLimit }</span>
				<span class="sumCont_sub">남은 목표 일수</span>

				<button class="fCont_sumContBtn button button_f16 shadow"
					type="button">이 프로젝트 밀어주기</button>
				<div id="fCont_share">
					<button
						class="fCont_shareBtn button button_wce8e8e8 button_f12 shadow"
						type="button">
						<i class="fas fa-heart"></i> Remind Me
					</button>
					<div class="fCont_shareIcon fa-2x">
						<a href="#"><i class="fab fa-facebook"></i></a>
					</div>
					<div class="fCont_shareIcon fa-2x">
						<a href="#"><i class="fab fa-twitter"></i></a>
					</div>
					<div class="fCont_shareIcon fa-2x">
						<a href="#"><i class="fas fa-envelope"></i></a>
					</div>
					<div class="fCont_shareIcon fa-2x">
						<a href="#"><i class="fas fa-link"></i></a>
					</div>
				</div>
				<span class="sumCont_sub"><a href="#">All or Nothing</a>. 이
					프로젝트는 Sat, November 23 2019 1:59 PM UTC +09:00 까지 목표금액 달성시에만 후원금이
					전달됩니다.</span>
			</div>
		</div>


	</div>

	<div class="clear"></div>

	<%-- 펀딩 하위 메뉴 --%>
	<div id="fCont_menubar">
		<div id="fCont_row">
			<script>
				function setScrollX(xValue) {
					/* $('#SNS_Profile_Down').scrollLeft($('#SNS_Profile_Down').scrollLeft() + xValue); */
					$('#fCont_cont').animate({
						scrollLeft : xValue
					}, 400);
				}//클릭시 게시글
			</script>
			<button class="fCont_menu" onclick="setScrollX(0)">Campaign</button>
			<button class="fCont_menu" onclick="setScrollX(1250)">FAQ</button>
			<button class="fCont_menu" onclick="setScrollX(2500)">Updates</button>
			<button class="fCont_menu" onclick="setScrollX(3750)">
				Comments
				<%-- 댓글 개수가 0이 아닌 경우 개수 출력 --%>
				<c:if test="${projectInfo.commentCount != 0}">
					<span class="commentCount"><b>${projectInfo.commentCount }</b></span>
				</c:if>
			</button>
			<button class="fCont_menu" onclick="setScrollX(5000)">Communities</button>
		</div>
	</div>


	<div id="fCont_cont">
		<div id="fCont_scrollCont">

			<%-- 상세 정보 --%>
			<div id="fCont_CampaignCont">
				<h3>About</h3>
				<p>${projectInfo.content }</p>
				<c:if test="${!empty projectInfo.attachedFileVO }">
					<c:forEach var="file" items="${projectInfo.attachedFileVO }">
						<img src="${file.filePath }" width="800" height="1200"
							alt="fundingCont" />
					</c:forEach>
				</c:if>
				<c:if test="${empty projectInfo.attachedFileVO }">
					<p>첨부 파일이 없습니다!</p>
					<!-- <img src="../images/fundingCont01.png" width="800" height="1200" alt="fundingCont"/>
		 -->
				</c:if>
			</div>



			<div id="fCont_FAQCont"></div>
			<div id="fCont_UpdatesCont"></div>


			<%------------------------------------------------------------------------------------------------ --%>
			<div id="fCont_CommentsCont">
				<div class="SNS_Comment">

					<%------------------------------------------------------------------------------------------------ --%>
					<%-- 댓글 작성 --%>
					<div class="SNS_Comment_Write">
					
						<%-- 본인의 프로필 사진이 있다면,없다면 분기 나누기 나중에 프로필사진--%>
						<%-- 프로필 이미지가 있을 경우 --%>
						<c:if test="${!empty profile_image_url }">
							<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
								src="${comment.mUserVO.profileImageUrl }" width="30" height="30"
								alt="">
						</c:if>
						<%-- 프로필 이미지가 없을 경우 --%>
						<c:if test="${empty profile_image_url }">
							<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
								src="../images/member_profile.png" width="30" height="30" alt="">
						</c:if>
						<input type="hidden" id="project_post_id" size="40" value="${projectInfo.id }">
						<p>${nickname }</p>
						<input id="content" name="content" class="SNS_Comment_Write_Chat">
						<input id="write" name="write" class="SNS_Comment_Write_Button" type="button" 
						value="작성" >
					</div>
					
					<%-- 댓글 목록 출력 --%>
					<%-- 댓글이 있다면 --%>
					<ul id="replies"
						style="margin-top: 7px; list-style: none; align-items: center;">
						<c:if test="${!empty projectInfo.mCommentVO }">
							<c:forEach var="comment" items="${projectInfo.mCommentVO }">
								<li style="align-items: center;">
									<%-- 프로필 이미지가 있을 경우 --%>
									<c:if test="${!empty profile_image_url }">
										<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
											src="${comment.mUserVO.profileImageUrl }" width="30" height="30" alt="">
									</c:if> 
									<%-- 프로필 이미지가 없을 경우 --%>
									<c:if test="${empty comment.mUserVO.profileImageUrl }">
										<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
											src="../images/member_profile.png" width="30" height="30" alt="">
									</c:if>
									<a href="/moving.com/member/mypage?id=${comment.id }">
									<p>${comment.mUserVO.nickname }</p></a>
									<input type="hidden" class="id" value="${comment.id }">
									<%-- <p class="modyfiy_content">${comment.content }</p> --%>
									<input name="modify_content" class="modify_content SNS_Comment_Write_Chat" value="${comment.content }" >
									<input type="button" name="modify" class="modify SNS_Comment_Write_Button" value="수정" >
									<input type="button" name="delete" class="delete SNS_Comment_Write_Button" value="삭제" >
									</li>
							</c:forEach>
						</c:if>
						<c:if test="${empty projectInfo.mCommentVO }">
							<li><p>작성된 댓글이 아직 없습니다</p></li>
						</c:if>
					</ul>
				</div>

			</div>
			<div id="fCont_CommunitiesCont"></div>
		</div>
	</div>

</div>



<%@ include file="../include/footer.jsp"%>


<%-- <div id="test">
		<p>
		<i class="fas fa-bell"></i>기본 사용법
		<i class="fas fa-caret-square-right fa-lg"></i>기본 크기
		<i class="fas fa-caret-square-right fa-2x"></i>2배 크기
		<i class="fas fa-caret-square-right fa-3x"></i>3배 크기
		<i class="fas fa-caret-square-right fa-4x"></i>4배 크기
		<i class="fas fa-caret-square-right fa-4x" style="color: red;"></i>빨간색
		<i class="icon-logo_b"></i>icon-logo_b
		<i class="icon-logo_w"></i>icon-logo_w
		<i class="icon-logo_w font50"></i>icon-logo_w font50
		</p>
	</div>--%>