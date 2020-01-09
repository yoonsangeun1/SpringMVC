<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/sns_header.jsp"%>
<%@ taglib prefix="c" 
            uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${pageContext.request.contextPath}/resources/js/social.js"></script>
	<!-- 배경화면 전체 지정 -->
	<div id="SNS_Wrap">
		<!-- 오브젝트 항목 래핑 -->
		<div id="SNS_main_left">
			<!-- 좌측 메뉴 -->
			<div id="SNS_left_title">
				<div id="SNS_Profile_Name">
				<c:if test="${empty s_pro.nickname}">
					<a href="profile?id=${sessionSocial.id}">비회원</a>
				</c:if>
				<c:if test="${!empty s_pro.nickname}">
					<a href="profile?id=${sessionSocial.id}">${s_pro.nickname}</a>
				</c:if>
				</div> 
				<c:if test="${'default' != profile_image_url}">
					<img class="SNS_Profile_Picture" src="${profile_image_url}"
						width="30px" height="30px" alt="" onclick="location='/moving.com/social/profile?id='+${sessionSocial.id}">
				</c:if>
				<c:if test="${'default' == profile_image_url}">
					<img class="SNS_Profile_Picture" src="../images/member_profile.png"
						width="30px" height="30px" alt="" onclick="location='/moving.com/social/profile?id='+${sessionSocial.id}">
				</c:if>
			</div>
			<br />
			<ul id="SNS_ul1">
				<!-- 좌측 메뉴 생성 -->
				<li><a href="/moving.com/social/messenger?socialIdFrom=${sessionSocial.id}&socialIdTo=0">메신저</a></li>
				<li><a href="/moving.com/board/actors">배우</a></li>
				<li><a href="/moving.com/video/videomain">영화</a></li>
				<li><a href="/moving.com/project/list?category=20001">프로젝트</a></li>
<!-- 				<li><a href="#">이벤트</a></li> -->
<!-- 				<li><a href="#">저장한 게시글</a></li> -->
			</ul>
		</div>
		<div id="SNS_main_mid">
			<!-- 중간 글쓰기, 글보기 -->
				<form action="post_write_ok?page_num=0" enctype="mutipart/form-data" method="post" name="timeLineWriter">
					<div id="mid_pad">
						<div id="SNS_Profile_Upload_Top">
							<ul id="SNS_None_Ul"></ul>
						</div>
						<div id="mid_left">
							<textarea name="content" id="SNS_main_text" rows="14" cols="61"
								placeholder="오늘은 어떤 기분을 남기고 싶으신가요?"></textarea>
						</div>
						<div id="mid_right">
							<input type="submit" class="SNS_Buttons" value="작성" />
							<div class="SNS_File">
								<label for="File_First">사진 올리기</label> 
									<input type="file" id="File_First" class="SNS_Buttons_File" accept=".jpg,.jpeg,.png,.gif,.bmp" onchange="loadImage(this)" name="photoGet" multiple/>
							</div>
							<input type="reset" class="SNS_Buttons" value="전체 삭제" />
						</div>
					</div>
				</form>
				<%-- 
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
				</form> --%>
				
			<div id="mid_scrap">
				<c:if test="${empty s_pro.id}">
					<p style="width: 100%;height: 700px;font-size: 15px;text-align: center;line-height: 700px;">
						SNS을 이용하기 위해서는 등록이 필요합니다!
					</p>
				</c:if>
				<ul id="SNS_Content_ul"><!-- 게시글 출력 구간 -->
					<c:forEach var="s" items="${s_post}">
					<li>
						<div class="SNS_Content">
							<div style="height: 40px;">
								<div class="SNS_Info_Wrap">
								<c:if test="${'default'== s.socialProfileVO.profileImagePath}">
									<img class="SNS_Content_user_img" src="../images/member_profile.png" width="40" height="40" alt=""
										 alt="프로필 사진">
								</c:if>
								<c:if test="${'default'!= s.socialProfileVO.profileImagePath}">
									<img class="SNS_Content_user_img" src="${s.socialProfileVO.profileImagePath}" width="40" height="40" alt=""
										 alt="프로필 사진">
								</c:if>
								<div class="SNS_Content_info">
									<div class="SNS_Content_Author" onclick="location='/moving.com/social/go_profile?m_id=${s.socialProfileVO.userId}';">${s.socialProfileVO.nickname}</div>
									<c:set var="date" value="${s.registerDate}"/>
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
								</div>
								<c:if test="${id==s.socialProfileVO.userId}">
										<input class="SNS_Option_Button" type="button" value="삭제"	onclick="
										if(confirm('정말로 삭제할까요?') == true){
									location='/moving.com/social/post_del_ok?id=${s.id}&socialId=${s.socialProfileVO.userId}&page_num=0';}else{return}"
									 style="float: right;">
								</c:if>
							</div>
<!-- 							<img class="SNS_Content_Image" alt="사진" src="../images/sns_photo.gif"> -->
							<div class="SNS_Content_Cont">
								${s.content}
							<c:if test="${s.projectId==2}">
								<div class="SNS_Cont_Move">0명이 이 영화를 후원하여 0원이 모였습니다!</div>
							</c:if>
							<c:if test="${s.moveCount>=1 }">
								<div class="SNS_Cont_Move">${s.moveCount}명이좋아합니다!</div>
							</c:if>
								<div class="SNS_Cont_Option">
									<div class="SNS_Cont_Option_Move" onclick="location='/moving.com/social/add_move?social_id=${sessionSocial.id}&post_num=${s.id}&page_num=0';">무브!</div>
									<div class="SNS_Cont_Option_Funding" onclick="if(confirm('공유할까요?') == true){
											location='/moving.com/social/post_share_ok?id=${s.id}&socialId=${s_pro.id}&page_num=0';}else{return}">공유하기</div>
								</div>
							</div>
							<div class="SNS_Comment">
										<%-- 댓글 목록 출력 --%>
										<%-- 댓글이 있다면 --%>
										<%-- <p id="social_post_id" style="display: none;">${s_post.id }<p> --%>
										<input type="hidden" id="social_post_id" size="40" value="${s.id }">
										<ul id="replies_${s.id }"
											style="margin-top: 7px; list-style: none; align-items: center;">

											<c:if test="${empty s.mCommentVO }">
												<li class="no_comment"><p>작성된 댓글이 아직 없습니다</p></li>
											</c:if>
										</ul>

										<%-- 댓글 작성 --%>
										<div class="SNS_Comment_Write" data-contentPostId="${s.id }">
											<script>
												/* $("input[name^='write']").on(
														'click', function() {
															alert('제박');
														}); */
											</script>
											<%-- 본인의 프로필 사진이 있다면,없다면 분기 나누기 나중에 프로필사진--%>
											<%-- 프로필 이미지가 있을 경우 --%>
											<c:if test="${'default' != profile_image_url}">
												<img class="SNS_Content_user_img"
													class="SNS_Profile_Picture" src="${profile_image_url }"
													width="30" height="30" alt="">
											</c:if>
											<%-- 프로필 이미지가 없을 경우 --%>
											<c:if test="${'default' == profile_image_url}">
												<img class="SNS_Content_user_img"
													class="SNS_Profile_Picture"
													src="${pageContext.request.contextPath}/resources/images/member_profile.png" width="30" height="30"
													alt="">
											</c:if>
											<input type="hidden" id="social_post_id" size="40" value="${s.id }">
											<p id="sessionId">${sessionSocial.nickname}</p>
											<input name="content_${s.id }" data-contentno="${s.id }"
												class="content SNS_Comment_Write_Chat">
											<input id="write"	name="write_${s.id}" class="write SNS_Comment_Write_Button"
												type="button"	value="작성">
										</div>
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
														+"src='${profile_image_url }' width=30px height=30px"
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
// 										      alert('댓글 내용을 입력하세요!');
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
// 															alert('댓글이 수정되었습니다!');
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
// 															alert('댓글이 삭제되었습니다!');
															//getCommentList();//댓글 목록 함수 호출! 갱신된 내용 가져옴.
															//getCommentCount();//댓글 개수 불러오기
														}
													}
												});
											});
										})
										</script>
									
						</div>
					</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div id="SNS_main_rightWrap">		
		<div id="SNS_main_right">
			<!-- 우측 프로필, 뉴스, 기타 -->
			<div id="right_profile">
				<p>요즘 뜨는 회원</p>
				<br />
				<div id="right_profile_friends">
					<ul id="right_profile_friends_ul">
					<c:if test="${!empty random_s}">
						<c:forEach var="ran" items="${random_s}" begin="1" end="8">
							<c:if test="${'default'==ran.profileImagePath }">
								<li><img onclick="location.href='/moving.com/social/profile?id=${ran.id}'"
								  src="../images/member_profile.png"><p>${ran.nickname}</p></li>
							</c:if>
							<c:if test="${'default'!=ran.profileImagePath }">
								<li><img onclick="location.href='/moving.com/social/profile?id=${ran.id}'"
								  src="${ran.profileImagePath}"><p>${ran.nickname}</p></li>
							</c:if>
						</c:forEach>
					</c:if>
					</ul>
				</div>
			</div>
		</div>
		<div id="right_etc">
			<div id="SNS_right_title">
				<p>추천하는 배우</p>
			</div>
			<ul id="SNS_ul2">
				<c:if test="${!empty random_p}">
					<c:forEach var="ran" items="${random_p}" begin="1" end="8">
						<li><a href="/moving.com/board/actors_cont?id=${ran.id}&page=1">${ran.name}</a></li>
					</c:forEach>
				</c:if>
			</ul>
		</div>
		<div id="right_etc">
			<div id="SNS_right_title">
				<p>영화 뉴스(타 사이트)</p>
			</div>
			<ul id="SNS_ul2">
				<li><a href="https://www.msn.com/ko-kr/entertainment/movies/%eb%b0%b1%eb%91%90%ec%82%b0%e2%86%92%eb%82%a8%ec%82%b0%ec%9d%98-%eb%b6%80%ec%9e%a5%eb%93%a4-%ec%9d%b4%eb%b3%91%ed%97%8c-%ec%97%b0%ec%b4%88-%ea%b7%b9%ec%9e%a5%ea%b0%80-%ec%a0%9c%eb%8c%80%eb%a1%9c-%ec%a0%91%ec%88%98/ar-BBYL8tV">'백두산'->'남산의 부장들' 이병헌, 연초 극장가 제대로 접수</a></li>
				<li><a href="https://www.msn.com/ko-kr/entertainment/movies/%ec%99%b8%ed%99%94-%ea%b3%b5%ec%8a%b5-%ec%8b%9c%ec%9e%91-%eb%8b%a5%ed%84%b0-%eb%91%90%eb%a6%ac%ed%8b%80%c2%b7%ec%8a%a4%ed%83%80%ec%9b%8c%ec%a6%88-%ec%83%88-%ec%a0%95%ec%83%81-%ec%9a%b0%eb%9a%9d%eb%b0%b1%eb%91%90%ec%82%b0-3%ec%9c%84%eb%a1%9c-%ec%a2%85%ed%95%a9/ar-BBYL8bo">외화 공습 시작 '닥터 두리틀','스타워즈' 새 정상 우뚝 ...'백두산' 3위로</a></li>
				<li><a href="https://www.msn.com/ko-kr/entertainment/movies/%ec%9d%b4%ec%a0%9c%ed%9b%88-%ec%82%ac%eb%83%a5%ec%9d%98%ec%8b%9c%ea%b0%84%ec%9c%bc%eb%a1%9c-3%eb%85%84%eb%a7%8c-%ec%8a%a4%ed%81%ac%eb%a6%b0-%eb%b3%b5%ea%b7%80%ed%8f%ad%eb%b0%9c%ec%a0%81-%ea%b0%90%ec%a0%95%ec%97%b0%ea%b8%b0-%ec%98%88%ea%b3%a0/ar-BBYL8bt">이제훈 '사냥의 시간'으로 3년만에 스크린 복귀.. 폭발적 감정 연기 예고</a></li>
				<li><a href="https://www.msn.com/ko-kr/entertainment/movies/%eb%8f%85%eb%a6%bd%ec%98%81%ed%99%94%ea%b3%84-%eb%b8%94%eb%a3%a8%ec%b9%a9-%ea%b9%80%ed%95%9c%eb%82%98-%ec%8b%a0%ec%86%8c%ec%9c%a8-%ea%b9%80%eb%b3%b4%eb%9d%bc%ec%99%80-%ed%95%9c%ec%86%a5%eb%b0%a5-%ea%b3%b5%ec%8b%9d%ec%9e%85%ec%9e%a5/ar-BBYJpLb">'독립영화계 블루칩' 김한나, 신소율 김보라와 한솥밥(공식입장)</a></li>
				<li><a href="https://www.msn.com/ko-kr/entertainment/movies/%ec%8b%9c%eb%8f%99-%eb%a7%88%eb%b8%94%eb%a6%ac%e2%86%92%eb%89%b4%ed%8e%98%ec%9d%b4%ec%8a%a4-%ec%b5%9c%ec%84%b1%ec%9d%80%ec%97%b0%ea%b8%b0-%eb%a7%9b%ec%a7%91-%ea%b1%b0%eb%93%ad%eb%82%9c-%ec%9d%b4%ec%9c%a0/ar-BBYL8Zs">'시동' 마블리->뉴페이스 최성은..연기 맛집 거듭난 이유</a></li>
				<li><a href="https://www.msn.com/ko-kr/entertainment/movies/%e2%80%9c%eb%88%88%eb%ac%bc-%ed%95%91-%eb%8f%8c%ec%95%84%e2%80%9d%eb%b0%b1%eb%91%90%ec%82%b0-%ec%9d%b4%eb%b3%91%ed%97%8c-%ea%b9%80%ec%8b%9c%ec%95%84-%eb%b6%80%eb%85%80%ea%b0%80-%ec%84%a0%ec%82%ac%ed%95%9c-%ea%b0%90%eb%8f%99/ar-BBYLkT2">"눈물 핑 돌아"..'백두산' 이병헌 김시아 부녀가 선사한 감동</a></li>
			</ul>
		</div>
		<div id="right_etc2">
			<div id="SNS_right_title">
				<p>추천 광고</p>
			</div>
			<ul id="SNS_ul2">
				<c:if test="${empty project}">
					광고영역
				</c:if>
				<c:if test="${!empty project}">
					<c:forEach var="p" items="${project}" begin="1" end="7">
						<li><a href="/moving.com/project/list?category=20001&id=${p.id}">${p.title}</a></li>
					</c:forEach>
				</c:if>
			</ul>
		</div>
	</div>
	</div>

<%@ include file="../include/sns_footer.jsp"%>