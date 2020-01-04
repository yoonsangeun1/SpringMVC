<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/sns_header.jsp"%>
<%@ taglib prefix="c"
    		uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script>
	$('.SNS_Comment_Write_Button').on('click', function() {
		$('#SNS_Profile_Writer').animate({background:"white"},10);
		$('#SNS_Profile_Writer').animate({background:"black"},280);
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
					<c:if test="${s_pro.profileImagePath != 'default'}">					<!-- 회원 이미지가 없을 경우 기본 이미지로 설정 -->
						<img id="SNS_Profile_Photo" src="${s_pro.profileImagePath}">
					</c:if>
					<c:if test="${s_pro.profileImagePath == 'default'}">
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
				<li class="SNS_Profile_Menu_Button SNS_Background" onclick="setScrollX(3750);">팔로우 목록</li>
<%-- 				<c:if test="${sessionSocial.id != s_pro.id}"> --%>
				<li class="SNS_Profile_Menu_Button SNS_Background" onclick="alert(${sessionSocial.id});">메시지 보내기</li>
<%-- 				</c:if> --%>
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
				<form action="post_write_ok" enctype="mutipart/form-data"
					method="post" name="timeLineWriter">
					<div id="SNS_Profile_Writer">
						<div id="SNS_Profile_Upload_Top">
							<ul id="SNS_None_Ul"></ul>
						</div>
						<div id="SNS_Profile_Upload_Roof" onclick="goTimeLine()"></div>
						<div id="SNS_Profile_Mid_Left">
							<textarea name="content" id="SNS_main_text" rows="15" cols="54"
								placeholder="오늘은 어떤 기분을 남기고 싶으신가요?"></textarea>
						</div>
						<div id="mid_right">
							<input type="submit" class="SNS_Buttons" value="작성" />
							<div class="SNS_File">
								<label for="File_First">사진 올리기</label> <input type="file"
									id="File_First" class="SNS_Buttons_File"
									accept=".jpg,.jpeg,.png,.gif,.bmp" onchange="loadImage(this)"
									name="photoGet" multiple />
							</div>
							<input type="reset" class="SNS_Buttons" value="전체 삭제"
								onclick="removeAllLi()" />
						</div>
					</div>
				</form>

				<ul id="SNS_Content_ul">
					<c:if test="${empty s_pro.socialPostVO}">
						<div class="SNS_Profile_Post">
							<p
								style="width: 100%; height: 200px; text-align: center; line-height: 180px; font-size: 20px;">등록된
								게시글이 없습니다.</p>
						</div>
					</c:if>
					<c:if test="${!empty s_pro.socialPostVO}">
						<c:forEach var="s_post" items="${s_pro.socialPostVO}">
							${s_post.id}번 게시글 / <b>${s_pro.id}</b> 사용자 
							
							<li>
							<input type="hidden" id="postId_${s_post.id }" value="${s_post.id }">
							<input type="hidden" id="id" value="${s_post.id }">
							<input type="hidden" id="socialId" value="${s_pro.id }">
								<div class="SNS_Profile_Post">
									<c:if test="${s_pro.profileImagePath != 'default'}">
										<img class="SNS_Content_user_img"
											src="${s_pro.profileImagePath}" width="40" height="40" alt="">
									</c:if>
									<c:if test="${s_pro.profileImagePath == 'default'}">
										<img class="SNS_Content_user_img"
											src="../images/member_profile.png" width="40" height="40"
											alt="">
									</c:if>
									<div class="SNS_Content_info">
										<div class="SNS_Content_Author">${s_pro.nickname}</div>
										<c:set var="date" value="${s_post.registerDate}" />
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
									<c:if test="${sessionSocial.id==s_pro.id}">
									<input class="SNS_Option_Button" type="button" value="삭제"
										onclick="if(confirm('정말로 삭제할까요?') == true){
									location='/moving.com/social/post_del_ok?id=${s_post.id}&socialId=${s_pro.id}&page_num=1';}else{return}"
										style="float: right;">
									</c:if>
									<%-- 								<img class="SNS_Content_Image" alt="사진" src="${s_pro.profileImagePath}"> --%>
									<div class="SNS_Content_Cont_Profile">
										<%-- 게시글 넘버 : ${s_post.id}<br/>
									게시글 종류 : ${s_post.codeNo}<br/>
									소셜 회원 아이디 : ${s_post.socialId}<br/>
									등록일자 : ${s_post.registerDate}<br/>--%>
										${s_post.content}<br />
										<div class="SNS_Cont_Move">${s_post.moveCount}명이좋아합니다!</div>
										<div class="SNS_Cont_Option">
											<div class="SNS_Cont_Option_Move" >
											<!-- <input type="file" value="asdf" onchange="getCommentList()"> -->
											무브!</div>
											<input class="SNS_Cont_Option_Funding" type="button"
												value="공유하기"
												onclick="if(confirm('공유할까요?') == true){
											location='/moving.com/social/post_share_ok?id=${s_post.id}&socialId=${s_pro.id}';}else{return}"
												style="float: right;">
										</div>
									</div>


									<div class="SNS_Comment">
										<%-- 댓글 목록 출력 --%>
										<%-- 댓글이 있다면 --%>
										<%-- <p id="social_post_id" style="display: none;">${s_post.id }<p> --%>
										<input type="hidden" id="social_post_id" size="40" value="${s_post.id }">
										<ul id="replies_${s_post.id }"
											style="margin-top: 7px; list-style: none; align-items: center;">

											<c:if test="${empty s_post.mCommentVO }">
												<li class="no_comment"><p>작성된 댓글이 아직 없습니다</p></li>
											</c:if>
										</ul>

										<%-- 댓글 작성 --%>
										<div class="SNS_Comment_Write" data-contentPostId="${s_post.id }">
											<script>
												/* $("input[name^='write']").on(
														'click', function() {
															alert('제박');
														}); */
											</script>
											<%-- 본인의 프로필 사진이 있다면,없다면 분기 나누기 나중에 프로필사진--%>
											<%-- 프로필 이미지가 있을 경우 --%>
											<c:if test="${'default' != s_pro.profileImagePath }">
												<img class="SNS_Content_user_img"
													class="SNS_Profile_Picture" src="${profile_image_url }"
													width="30" height="30" alt="">
											</c:if>
											<%-- 프로필 이미지가 없을 경우 --%>
											<c:if test="${'default' == s_pro.profileImagePath }">
												<img class="SNS_Content_user_img"
													class="SNS_Profile_Picture"
													src="../images/member_profile.png" width="30" height="30"
													alt="">
											</c:if>
											<input type="hidden" id="social_post_id" size="40" value="${s_post.id }">
											<p id="sessionId">${sessionSocial.nickname}</p>
											<input name="content_${s_post.id }" data-contentno="${s_post.id }"
												class="content SNS_Comment_Write_Chat">
											<input id="write"	name="write_${s_post.id}" class="write SNS_Comment_Write_Button"
												type="button"	value="작성">
										</div>


										<script>
										function t(bno) {
											var sessionId=$('#sessionId').text();//로그인한 아이디
											//var social_post_id = $('#social_post_id').val();//게시글 번호
											
											$.getJSON("/moving.com/socialcomments/all/" + bno, function(data) {
												var str = "";
												success: $(data).each(function() {//each()는 jQuery 반복 함수
													/* if(this.PROFILE_IMAGE_PATH == 'default') { */
														str += "<li class='replies' data-commentId='"+this.ID+"' style='align-items: center'>"
														+"<div class='comment_no' style='display:none'>"+this.ID+"</div>"
														+"<img class='SNS_Content_user_img' class='SNS_Profile_Picture'"
														+"src='../images/member_profile.png' width=30px height=30px"
														+"alt=''/>"
														+"<p><a href='/moving.com/social/profile?id="+this.SOCIAL_PROFILE_ID_FROM+"'>"
														+this.NICKNAME+"</a></p><p class='comment_content_"+this.ID+"'>"
														+this.CONTENT+"</p>"
														+"<input name='comment_txt_"+this.ID+"' id='comment_txt_"+this.ID+"' class='comment_txt' value='"+this.CONTENT+"' style='display: none;'>"
														//+"<input type='button' name='modify' class='modify SNS_Comment_Write_Button' value='수정' onclick='clicksss();'>"
														if(sessionId == this.NICKNAME) {//로그안한 닉네임과 댓글 닉네임 비교하여 수정, 삭제 버튼 생성
															str += "<button name='modify_"+this.ID+"'  class='modify SNS_Comment_Write_Button'>수정</button>"
															+"<button name='modify_ok_"+this.ID+"'  class='modify_ok SNS_Comment_Write_Button' style='display: none;'>수정완료</button>"
															+"<button name='delete_"+this.ID+"' class='delete SNS_Comment_Write_Button'>삭제</button>"
														}
														+"</li>";
													/* }else if(this.PROFILE_IMAGE_PATH != 'default') {
														str += "<li class='replies' data-commentId='"+this.ID+"' style='align-items: center'>"
														+"<div class='comment_no' style='display:none'>"+this.ID+"</div>"
														+"<img class='SNS_Content_user_img' class='SNS_Profile_Picture'"
														+"src='../images/member_profile.png' width=30px height=30px"
														+"alt=''/>"
														+"<p><a href='/moving.com/social/profile?id="+this.SOCIAL_PROFILE_ID_FROM+"'>"
														+this.NICKNAME+"</a></p><p class='comment_content_"+this.ID+"'>"
														+this.CONTENT+"</p>"
														+"<input name='comment_txt_"+this.ID+"' id='comment_txt_"+this.ID+"' class='comment_txt' value='"+this.CONTENT+"' style='display: none;'>"
														//+"<input type='button' name='modify' class='modify SNS_Comment_Write_Button' value='수정' onclick='clicksss();'>"
														if(sessionId == this.NICKNAME) {//로그안한 닉네임과 댓글 닉네임 비교하여 수정, 삭제 버튼 생성
															str += "<button name='modify_"+this.ID+"'  class='modify SNS_Comment_Write_Button'>수정</button>"
															+"<button name='modify_ok_"+this.ID+"'  class='modify_ok SNS_Comment_Write_Button' style='display: none;'>수정완료</button>"
															+"<button name='delete_"+this.ID+"' class='delete SNS_Comment_Write_Button'>삭제</button>"
														}
														+"</li>";
													} */
												});
												$('#replies_'+bno).html(str);//태그와 문자를 함께 변경 적용
											});//매핑 주소 써주기
										}//t()
										
										
										
										/**
										 * jstest
										 */

										//게시글 번호 받아오기
										function getParameterByName(name) {
										   name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
										   var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
										   results = regex.exec(location.search);
										   return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
										}
										var id = getParameterByName('id');

										//세션 아이디 가져오기

										//댓글 추가
										$(function(){ 
										   //getCommentList();
 		//								   $('#write').on('click', function() {
 											  $("input[name^='write']").on('click', function() {
											var reply=$(this).parent();
											var rno=reply.attr('data-contentPostId');//게시글번호
										   var content= $("input[name='content_"+rno+"']").val();//댓글 내용

										   if(content=='') {
										      alert('댓글 내용을 입력하세요!');
										      $("input[name='content_"+rno+"']").val('').focus();
										      return false;
										   }

										   $.ajax({//jQuery ajax
										      type: 'post',//서버로 자료를 보내는 법
										      url: '/moving.com/socialcomments/write',//매핑 주소
										      headers: {
										         "Content-Type": "application/json", 
										         "X-HTTP-Method-Override": "POST"
										         //HTTP 코드 맨 머리 앞에 추가적인 정보 지정
										      },
										      dataType: 'text',//문자열
										      data: JSON.stringify({//댓글 작성자, 내용이 json이다.
										         //왼쪽에서 오른쪽으로 대입됨!! 우 -> 왼 아님!!!
										         //왼쪽이 키이름 오른쪽이 값!! 이건 동일!!
										         socialPostId: rno, //게시물 번호
										         //id: id, //댓글 작성자
										         content: content //댓글 내용
										      }),
										      success: function(data) {//댓글 저장 성공시 SUCCESS 문자열 반환
										         if(data=='SUCCESS') {
// 										            alert('댓글이 등록되었습니다!');
										            t(rno);
										           // getCommentList();//댓글 목록 함수 호출! 갱신된 내용 가져옴.
										           // getCommentCount();//댓글 개수 불러오기
										            $("input[name='content_"+rno+"']").val("");
										         }
										      }
										   });
										   })
										});


										//댓글 목록 불러오는 함수 호출
										/* function getCommentList() {
											var sessionId=$('#sessionId').text();//로그인한 아이디
											var social_post_id = $('#social_post_id').val();//게시글 번호
											
											
											$.getJSON("/moving.com/socialcomments/all/" + social_post_id, function(data) {
												var str = "";
												success: $(data).each(function() {//each()는 jQuery 반복 함수
													if(this.PROFILE_IMAGE_PATH == 'default') {
														str += "<li class='replies' data-commentId='"+this.ID+"' style='align-items: center'>"
														+"<div class='comment_no' style='display:none'>"+this.ID+"</div>"
														+"<img class='SNS_Content_user_img' class='SNS_Profile_Picture'"
														+"src='../images/member_profile.png' width=30px height=30px"
														+"alt=''/>"
														+"<p><a href='/moving.com/social/profile?id="+this.SOCIAL_PROFILE_ID_FROM+"'>"
														+this.NICKNAME+"</a></p><p class='comment_content_"+this.ID+"'>"
														+this.CONTENT+"</p>"
														+"<input name='comment_txt_"+this.ID+"' id='comment_txt_"+this.ID+"' class='comment_txt' value='"+this.CONTENT+"' style='display: none;'>"
														//+"<input type='button' name='modify' class='modify SNS_Comment_Write_Button' value='수정' onclick='clicksss();'>"
														if(sessionId == this.NICKNAME) {//로그안한 닉네임과 댓글 닉네임 비교하여 수정, 삭제 버튼 생성
															str += "<button name='modify_"+this.ID+"'  class='modify SNS_Comment_Write_Button'>수정</button>"
															+"<button name='modify_ok_"+this.ID+"'  class='modify_ok SNS_Comment_Write_Button' style='display: none;'>수정완료</button>"
															+"<button name='delete_"+this.ID+"' class='delete SNS_Comment_Write_Button'>삭제</button>"
														}
														+"</li>";
													}else if(this.PROFILE_IMAGE_PATH != 'default') {
														str += "<li class='replies' data-commentId='"+this.ID+"' style='align-items: center'>"
														+"<div class='comment_no' style='display:none'>"+this.ID+"</div>"
														+"<img class='SNS_Content_user_img' class='SNS_Profile_Picture'"
														+"src='../images/member_profile.png' width=30px height=30px"
														+"alt=''/>"
														+"<p><a href='/moving.com/social/profile?id="+this.SOCIAL_PROFILE_ID_FROM+"'>"
														+this.NICKNAME+"</a></p><p class='comment_content_"+this.ID+"'>"
														+this.CONTENT+"</p>"
														+"<input name='comment_txt_"+this.ID+"' id='comment_txt_"+this.ID+"' class='comment_txt' value='"+this.CONTENT+"' style='display: none;'>"
														//+"<input type='button' name='modify' class='modify SNS_Comment_Write_Button' value='수정' onclick='clicksss();'>"
														if(sessionId == this.NICKNAME) {//로그안한 닉네임과 댓글 닉네임 비교하여 수정, 삭제 버튼 생성
															str += "<button name='modify_"+this.ID+"'  class='modify SNS_Comment_Write_Button'>수정</button>"
															+"<button name='modify_ok_"+this.ID+"'  class='modify_ok SNS_Comment_Write_Button' style='display: none;'>수정완료</button>"
															+"<button name='delete_"+this.ID+"' class='delete SNS_Comment_Write_Button'>삭제</button>"
														}
														+"</li>";
													}
												});
												$('#replies').html(str);//태그와 문자를 함께 변경 적용
											});//매핑 주소 써주기
										}//getCommentList() */


										/* 댓글 수정 화면 출력 */
										$(function(){
											// $("id[name^='replies']").on('click','.replies .modify',function() {
											$('#replies').on('click','.replies .modify',function() {
												var reply=$(this).parent();
												var rno=reply.attr('data-commentId');//댓글 번호
												//var replytext=reply.children("#comment_txt_"+rno).text();//댓글 내용만 가져옴.
												var replytext=reply.children(".comment_content_"+rno).text();//댓글 내용만 가져옴.
												//var replytext=reply.children('.comment_txt').text();//댓글 내용만 가져옴.
												//alert(getElementByName("comment_txt_"+rno));
	
												$('.modal-title').html(rno);//댓글 번호
												$('#replytext').val(replytext);//댓글 내용
												// $('.comment_content').hide();
												$('.comment_content_'+rno).hide();
												// $('.comment_txt').show();
												$("input[name ='comment_txt_"+rno+"']").show();
												$("button[name ='modify_"+rno+"']").hide();
												$("button[name ='modify_ok_"+rno+"']").show();
											});
										})

										/* 댓글 수정 완료 */
										$(function(){
											$('#replies').on('click','.replies .modify_ok',function() {
												var reply=$(this).parent();
												var rno=reply.attr('data-commentId');//댓글 번호
												var replyModifyText=$("input[name='comment_txt_"+rno+"']").val();//수정한 댓글 내용 가져오기
												//$("input[name='comment_txt_"+rno+"']")

												$.ajax({
													type: 'put',
													url: '/moving.com/socialcomments/update/'+rno,
													headers:{
														"Content-Type": "application/json",
														"X-HTTP-Method-Override": "PUT"
													},
													data: JSON.stringify({content: replyModifyText}),
													dataType:"text",
													success: function(data) {
														if(data=='SUCCESS') {
															alert('댓글이 수정되었습니다!');
															//getCommentList();//댓글 목록 함수 호출! 갱신된 내용 가져옴.
															//getCommentCount();//댓글 개수 불러오기
														}
													}
												});
											});
										})

										      
										/* 댓글 삭제 */
										$(function(){
											$('#replies').on('click','.replies .delete',function() {
												var reply=$(this).parent();
												var rno=reply.attr('data-commentId');//댓글 번호

												$.ajax({
													type: 'delete',
													url: '/moving.com/socialcomments/delete/'+rno,
													headers:{
														"Content-Type": "application/json",
														"X-HTTP-Method-Override": "DELETE"
													},
													dataType:'text',
													success:function(data) {
														if(data=='SUCCESS'){
															alert('댓글이 삭제되었습니다!');
															//getCommentList();//댓글 목록 함수 호출! 갱신된 내용 가져옴.
															//getCommentCount();//댓글 개수 불러오기
														}
													}
												});
											});
										})
										   

											/* 시간 차 계산 후 
											출력 */
											var writeTime = "${s_reply.registerDate}";
											var nowTime = new Date();

											var yyyy = writeTime.substr(0, 4);
											var mm = writeTime.substr(5, 2);
											var dd = writeTime.substr(8, 2);
											var hh = writeTime.substr(11, 2);
											var mi = writeTime.substr(14, 2);

											var copyTime = new Date(yyyy,
													mm - 1, dd, hh, mi);
											var hours = Math.abs(nowTime
													- copyTime) / 36e5;

											hours = Math.floor(hours);

											if (hours <= 1) {
												hours = "조금 전";
											} else if (hours <= 24) {
												hours = hours + "시간 전";
											} else if (24 < hours
													&& hours <= 48) {
												hours = "하루 전";
											} else if (hours >= 48
													&& hours < 8760) {
												hours = (copyTime.getMonth() + 1)
														+ "월"
														+ copyTime.getDate()
														+ "일 ";
											} else if (hours >= 8760) {
												hours = copyTime.getFullYear()
														+ "년"
														+ (copyTime.getMonth() + 1)
														+ "월"
														+ copyTime.getDate()
														+ "일 ";
											}
											document.write(hours);
										</script>

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
										<c:if test="${fn:length(s_post.content)>100}">
											<p>${fn:substring(s_post.content,0,99)}...</p>										
										</c:if>
										<c:if test="${fn:length(s_post.content)<=100}">
											<p>${fn:substring(s_post.content,0,99)}</p>		
										</c:if>
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