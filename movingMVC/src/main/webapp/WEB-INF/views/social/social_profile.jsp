<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/sns_header.jsp"%>
<%@ taglib prefix="c"
    		uri="http://java.sun.com/jsp/jstl/core" %>
<script>
	function removeAllLi(){
		$('#SNS_None_Ul').empty();
	}
	function setScrollX(xValue){
		$('#SNS_Profile_Down').animate({scrollLeft : xValue}, 200);
		(xValue>200)?hideWriter():showWriter();
	}
	function showWriter(){
		$('#SNS_Profile_Writer').animate({top:"59%"},130);
	}
	function hideWriter(){
		$('#SNS_Profile_Writer').animate({top:"88%"},130);
	}
	function addPhoto(){
		var st=$("SNS_main_text").text();
		for(var i=0;i<document.getElementsByName("photoGet")[0].files.length;i++){
				st+=document.getElementsByName("photoGet")[0].files[i].name+"\n";
		}
		$('#SNS_main_text').text(st);
	}
	function goTimeLine(){
		setScrollX(0);
		showWriter();
	}
	function loadImage(img){/* 이미지를 불러오는 함수 */
		$('#SNS_Profile_Writer').animate({top:"59%"},280);
		
// 		alert(img.files[0].name);
// 		alert($('.SNS_Profile_Upload_Picture').length); /* 개수 반환 */
		var num=img.files.length;
		for(var i=1;i<=num;i++){
			var reader = new FileReader();
			reader.onload = function (e) {
			$('#SNS_None_Ul').append('<li><img id="Upload_Pic'+i+'" class="SNS_Profile_Upload_Picture"'
					+'src="'+e.target.result+'"></li>');
			}
			reader.readAsDataURL(img.files[i-1]);
		}
	}
</script>
<div id="SNS_Profile_All">							<!-- 배경화면 전체 지정 -->
	<div id="SNS_Profile_Wrap">						<!-- 오브젝트 항목 래핑 -->
		<div id="SNS_Profile_Top">
			<div id="SNS_Profile_Ground">
				<c:if test="${empty s_pro.profileImagePath}">
					<div id="SNS_Profile_Background">
				</c:if>
				<c:if test="${!empty s_pro.profileImagePath}">
					<div id="SNS_Profile_Background" style="background-image:url('${s_pro.backgroundImagePath}')">
				</c:if>
					<c:if test="${!empty s_pro.profileImagePath}">					<!-- 회원 이미지가 없을 경우 기본 이미지로 설정 -->
						<img id="SNS_Profile_Photo" src="${s_pro.profileImagePath}">
					</c:if>
					<c:if test="${empty s_pro.profileImagePath}">
						<img id="SNS_Profile_Photo" src="../images/member_profile.png">
					</c:if>
					<div id="SNS_Profile_Title_Name">
					<c:if test="${!empty s_pro.nickname}">
						<p>${s_pro.nickname}</p>
	 				</c:if>
					<c:if test="${empty s_pro.nickname}">
						<p>비회원</p>
	 				</c:if>
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
				<li class="SNS_Profile_Menu_Button SNS_Background" onclick="setScrollX(2500);">모아보기</li>
				<li class="SNS_Profile_Menu_Button SNS_Background" onclick="setScrollX(3750);">후원하기</li>
				<li class="SNS_Profile_Menu_Button SNS_Background" onclick="setScrollX(5000);">팔로우 목록</li>
			</ul>
		</div>
		<div id="SNS_Profile_Down">
			<div id="SNS_Profile_Down_Scroll">
<!-- 			<textarea name="content" id="content" rows="10" cols="40" left="10px"></textarea> -->
<!-- 							<script type="text/javascript"> 
// 								var oEditors = []; //전역변수
	
// 								nhn.husky.EZCreator
// 										.createInIFrame({ //스마트 에디터 프레임 생성
// 											oAppRef : oEditors,
// 											elPlaceHolder : "content",
// 											sSkinURI : "../resources/editor/SocialEditor.html",
// 											bUseToolbar : true, //툴 바 사용 여부
// 											bUseVerticalResizer : true, //입력창 크기 조절 사용 여부
// 											bUseVerticalResizer : true, //모드 탭(Editor | HTML | TEXT ) 사용 여부
// 										});
<!-- 							</script> -->
			<div id="SNS_Profile_Story">
				<form action="post_write_ok/${id}" enctype="mutipart/form-data" method="post" name="timeLineWriter">
					<div id="SNS_Profile_Writer">
						<div id="SNS_Profile_Upload_Top">
							<ul id="SNS_None_Ul"></ul>
						</div>
						<div id="SNS_Profile_Upload_Roof" onclick="goTimeLine()"></div>
						<div id="SNS_Profile_Mid_Left">
							<textarea name="content" id="SNS_main_text" rows="15" cols="54" placeholder="오늘은 어떤 기분을 남기고 싶으신가요?"></textarea>
						</div>
						<div id="mid_right">
							<input type="submit" class="SNS_Buttons" value="작성" />
							<div class="SNS_File">
								<label for="File_First">사진 올리기</label> 
								<input type="file" id="File_First" class="SNS_Buttons_File" accept=".jpg,.jpeg,.png,.gif,.bmp" onchange="loadImage(this)" name="photoGet" multiple/>
							</div>
							<input type="reset" class="SNS_Buttons" value="전체 삭제" onclick="removeAllLi()"/>
						</div>
					</div>
				</form>
							
				<ul id="SNS_Content_ul">
					<c:if test="${empty s_pro.socialPostVO}">
						<div class="SNS_Profile_Post">
							<p>등록된 게시글이 없습니다.</p>
						</div>
					</c:if>
					<c:if test="${!empty s_pro.socialPostVO}">
							<c:forEach  var="s_post" items="${s_pro.socialPostVO}">
							${s_post.id}번 게시글 / <b>${s_pro.id}</b> 사용자 

							<li>
							<div class="SNS_Profile_Post">
								<img class="SNS_Content_user_img" src="${s_pro.profileImagePath}" width="40" height="40" alt="프로필 사진">
								<div class="SNS_Content_info">
									<div class="SNS_Content_Author">${s_pro.nickname}</div>
										<c:set var="date" value="${s_post.registerDate}"/>
									<div class="SNS_Content_Write_Time">
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
											else if (24 < hours && hours <= 48){
												hours = "하루 전";
											}
											else if (hours>=48 && hours <8760){
												hours = (copyTime.getMonth()+1)+"월"
												+		copyTime.getDate()+"일 ";
											}
											else if (hours>=8760)
											{
												hours = copyTime.getFullYear()+"년"
												+		(copyTime.getMonth()+1)+"월"
												+		copyTime.getDate()+"일 ";
											}
											document.write(hours);
										</script>
									</div>
								</div>
								<input class="SNS_Option_Button" type="button" value="삭제"	onclick="if(confirm('정말로 삭제할까요?') == true){
									location='/moving.com/social/post_del_ok?post_id=${s_post.id}&user_id=${s_post.socialId}';}else{return}" style="float: right;">
<%-- 								<img class="SNS_Content_Image" alt="사진" src="${s_pro.profileImagePath}"> --%>
								<div class="SNS_Content_Cont">
									<%-- 게시글 넘버 : ${s_post.id}<br/>
									게시글 종류 : ${s_post.codeNo}<br/>
									소셜 회원 아이디 : ${s_post.socialId}<br/>
									등록일자 : ${s_post.registerDate}<br/>--%>
										${s_post.content}<br/> 
									<div class="SNS_Cont_Move">${s_post.moveCount}명이 좋아합니다!</div>
									<div class="SNS_Cont_Option">
										<div class="SNS_Cont_Option_Move">무브!</div>
										<div class="SNS_Cont_Option_Share">댓글</div>
										<div class="SNS_Cont_Option_Funding">공유하기</div>
									</div>
								</div>
								<div class="SNS_Comment">
									<c:if test="${!empty s_post.mCommentVO }">
										<c:forEach  var="s_reply" items="${s_post.mCommentVO}">
										<div class="SNS_Comment_Background">
										<img class="SNS_Comment_user_img" class="SNS_Profile_Picture" 
											src="${s_reply.socialProfileVO.profileImagePath}" 
											width=30px height=30px>
<%-- 											${s_reply.id } --%>
										<p class="SNS_Comment_Writer">
											${s_reply.id} ${s_reply.socialProfileIdFrom}
											${s_reply.socialProfileVO.nickname}
										</p>
											<p>${s_reply.content}</p>
												<p class="SNS_Comment_Time">
													<script>/* 시간 차 계산 후 출력 */
														var writeTime = "${s_reply.registerDate}";
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
														else if (24 < hours && hours <= 48){
															hours = "하루 전";
														}
														else if (hours>=48 && hours <8760){
															hours = (copyTime.getMonth()+1)+"월"
															+		copyTime.getDate()+"일 ";
														}
														else if (hours>=8760)
														{
															hours = copyTime.getFullYear()+"년"
															+		(copyTime.getMonth()+1)+"월"
															+		copyTime.getDate()+"일 ";
														}
														document.write(hours);
												</script>
											</p>
											<br />
										</div>
										</c:forEach>
									</c:if>
									<c:if test="${empty s_post.mCommentVO }">
										<p class="SNS_Comment_None">댓글이 아직 없습니다. 댓글을 작성해보세요 </p>
									</c:if>
									<div class="SNS_Comment_Write">
										<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
											src="${s_pro.profileImagePath}" width=30px height=30px alt=""> 
										<input class="SNS_Comment_Write_Chat" type="text"> 
										<input class="SNS_Comment_Write_Button"	type="button" value="작성">
									</div>
								</div>
							</div>
						</li>
							</c:forEach>
							</c:if>
					</ul>
				</div>
				<div id="SNS_Profile_Information">
					<div>
						프로필 정보입니다.
					</div>
				</div>
				<div id="SNS_Profile_Collect">
						<div id="SNS_Profile_Intro">팔로워 수 : ${s_pro.followerCount}명</div>
						<ul id="SNS_Profile_Ul">
							<c:forEach  var="s_post" items="${s_pro.socialPostVO}">
							<li>
								<div class="SNS_Profile_Image">
									<img class="SNS_Profile_Image_Photo" src="${s_pro.profileImagePath}">
									<div class="SNS_Profile_Image_Info">
										<p>${s_post.content}</p>
									</div>
									<div class="SNS_Profile_Image_Center">
										<p>더 보기</p>
									</div>
									<div class="SNS_Profile_Image_Like">
										<p>❤</p>
									</div>
								</div>
							</li>
							</c:forEach>
						</ul>
				</div>
				<div id="SNS_Profile_Donate">
					후원하기 입니다.
				</div>
				<div id="SNS_Profile_Friends">
					<ul id="SNS_Profile_Friends_List">
						<li>
							<div class="SNS_Profile_Friends_Li">
								<img class="SNS_Profile_Friends_Picture" src="../images/sns_photo14.jpg">
								<div class="SNS_Profile_Frineds_Info">
									<div class="SNS_Profile_Friends_Name">김충칭</div>
									<div class="SNS_Profile_Friends_Intro">장기밀매합니다</div>
									<input class="SNS_Profile_Friends_Out" type="button" 
										   value="팔로우 취소">
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>			
		</div>
	</div>
</div>

<%@ include file="../include/sns_footer.jsp"%>