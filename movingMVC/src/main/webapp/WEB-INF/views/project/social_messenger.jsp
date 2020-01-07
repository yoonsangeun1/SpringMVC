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
		<c:if test="${m_pro.id!=0}">
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
					<ul>
						<li><div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채 팝니다.</div></div></li>
						<li><div id="SNS_Messenger_Text_Right"><div id="SNS_Messenger_Text_M">안 사요.</div></div></li>
						<li><div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채.</div></div></li>
						<li><div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">팝니다.</div></div></li>
						<li><div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채 팝니다.</div></div></li>
						<li><div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채 팝니다.</div></div></li>
						<li><div id="SNS_Messenger_Text_Right"><div id="SNS_Messenger_Text_M">안 사요.</div></div></li>
						<li><div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">사세요.</div></div></li>
						<li><div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">팝니다.</div></div></li>
						<li><div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채 팝니다.</div></div></li>
						<li><div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채 팝니다.</div></div></li>
						<li><div id="SNS_Messenger_Text_Right"><div id="SNS_Messenger_Text_M">안 사요.</div></div></li>
						<li><div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채.</div></div></li>
						<li><div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">팝니다.</div></div></li>
						<li><div id="SNS_Messenger_Text_Left"><div id="SNS_Messenger_Text_U">홍채 팝니다.</div></div></li>
					</ul>
					</div>
					<textarea id="SNS_Messenger_Text_Write">안 산다고</textarea>
						<input id="SNS_Messenger_Send" type="button" value="보내기">
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
		</c:if>
		</div>
	<script>
		function t(bno) {
			var sessionId = $('#sessionId').text();//로그인한 아이디
			//var social_post_id = $('#social_post_id').val();//게시글 번호
	
			$
					.getJSON(
							"/moving.com/socialcomments/all_list{}" + bno,
							function(data) {
								var str = "";
								success: $(data).each(
												function() {//each()는 jQuery 반복 함수
													/* if(this.PROFILE_IMAGE_PATH == 'default') { */
													str += "<li class='replies' data-messageId='"+this.ID+"' style='align-items: center'>"
															+ "<div class='comment_no' style='display:none'>"
															+ this.ID
															+ "</div>"
															+ "<img class='SNS_Content_user_img' class='SNS_Profile_Picture'"
															+"src='../images/member_profile.png' width=30px height=30px"
															+"alt=''/>"
															+ "<p><a href='/moving.com/social/profile?id="+ this.SOCIAL_PROFILE_ID_FROM+ "'>"
															+ this.NICKNAME
															+ "</a></p><p class='comment_content_"+this.ID+"'>"
															+ this.CONTENT
															+ "</p>"
															+ "<input name='comment_txt_"+this.ID+"' id='comment_txt_"+this.ID+"' class='comment_txt' value='"+this.CONTENT+"' style='display: none;'>"
													//+"<input type='button' name='modify' class='modify SNS_Comment_Write_Button' value='수정' onclick='clicksss();'>"
													if (sessionId == this.NICKNAME) {//로그안한 닉네임과 댓글 닉네임 비교하여 수정, 삭제 버튼 생성
														str += "<button name='modify_"+this.ID+"'  class='modify SNS_Comment_Write_Button'>수정</button>"
																+ "<button name='modify_ok_"+this.ID+"'  class='modify_ok SNS_Comment_Write_Button' style='display: none;'>수정완료</button>"
																+ "<button name='delete_"+this.ID+"' class='delete SNS_Comment_Write_Button'>삭제</button>"
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
								$('#replies_' + bno).html(str);//태그와 문자를 함께 변경 적용
							});//매핑 주소 써주기
		}//t()
	
		/**
		 * jstest
		 */
	
		//게시글 번호 받아오기
		function getParameterByName(name) {
			name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
			var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"), results = regex
					.exec(location.search);
			return results === null ? "" : decodeURIComponent(results[1].replace(
					/\+/g, " "));
		}
		var id = getParameterByName('id');
	
		//세션 아이디 가져오기
	
		//댓글 추가
		$(function() {
			//getCommentList();
			//								   $('#write').on('click', function() {
			$("input[name^='write']").on('click', function() {
				var reply = $(this).parent();
				var rno = reply.attr('data-contentPostId');//게시글번호
				var content = $("input[name='content_" + rno + "']").val();//댓글 내용
	
				if (content == '') {
					alert('댓글 내용을 입력하세요!');
					$("input[name='content_" + rno + "']").val('').focus();
					return false;
				}
	
				$.ajax({//jQuery ajax
					type : 'post',//서버로 자료를 보내는 법
					url : '/moving.com/socialcomments/write',//매핑 주소
					headers : {
						"Content-Type" : "application/json",
						"X-HTTP-Method-Override" : "POST"
					//HTTP 코드 맨 머리 앞에 추가적인 정보 지정
					},
					dataType : 'text',//문자열
					data : JSON.stringify({//댓글 작성자, 내용이 json이다.
						//왼쪽에서 오른쪽으로 대입됨!! 우 -> 왼 아님!!!
						//왼쪽이 키이름 오른쪽이 값!! 이건 동일!!
						socialPostId : rno, //게시물 번호
						//id: id, //댓글 작성자
						content : content
					//댓글 내용
					}),
					success : function(data) {//댓글 저장 성공시 SUCCESS 문자열 반환
						if (data == 'SUCCESS') {
							// 										            alert('댓글이 등록되었습니다!');
							t(rno);
							// getCommentList();//댓글 목록 함수 호출! 갱신된 내용 가져옴.
							// getCommentCount();//댓글 개수 불러오기
							$("input[name='content_" + rno + "']").val("");
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
		$(function() {
			// $("id[name^='replies']").on('click','.replies .modify',function() {
			$('#replies').on('click', '.replies .modify', function() {
				var reply = $(this).parent();
				var rno = reply.attr('data-commentId');//댓글 번호
				//var replytext=reply.children("#comment_txt_"+rno).text();//댓글 내용만 가져옴.
				var replytext = reply.children(".comment_content_" + rno).text();//댓글 내용만 가져옴.
				//var replytext=reply.children('.comment_txt').text();//댓글 내용만 가져옴.
				//alert(getElementByName("comment_txt_"+rno));
	
				$('.modal-title').html(rno);//댓글 번호
				$('#replytext').val(replytext);//댓글 내용
				// $('.comment_content').hide();
				$('.comment_content_' + rno).hide();
				// $('.comment_txt').show();
				$("input[name ='comment_txt_" + rno + "']").show();
				$("button[name ='modify_" + rno + "']").hide();
				$("button[name ='modify_ok_" + rno + "']").show();
			});
		})
	
		/* 댓글 수정 완료 */
		$(function() {
			$('#replies').on(
					'click',
					'.replies .modify_ok',
					function() {
						var reply = $(this).parent();
						var rno = reply.attr('data-commentId');//댓글 번호
						var replyModifyText = $(
								"input[name='comment_txt_" + rno + "']").val();//수정한 댓글 내용 가져오기
						//$("input[name='comment_txt_"+rno+"']")
	
						$.ajax({
							type : 'put',
							url : '/moving.com/socialcomments/update/' + rno,
							headers : {
								"Content-Type" : "application/json",
								"X-HTTP-Method-Override" : "PUT"
							},
							data : JSON.stringify({
								content : replyModifyText
							}),
							dataType : "text",
							success : function(data) {
								if (data == 'SUCCESS') {
									alert('댓글이 수정되었습니다!');
									//getCommentList();//댓글 목록 함수 호출! 갱신된 내용 가져옴.
									//getCommentCount();//댓글 개수 불러오기
								}
							}
						});
					});
		})
	
		/* 댓글 삭제 */
		$(function() {
			$('#replies').on('click', '.replies .delete', function() {
				var reply = $(this).parent();
				var rno = reply.attr('data-commentId');//댓글 번호
	
				$.ajax({
					type : 'delete',
					url : '/moving.com/socialcomments/delete/' + rno,
					headers : {
						"Content-Type" : "application/json",
						"X-HTTP-Method-Override" : "DELETE"
					},
					dataType : 'text',
					success : function(data) {
						if (data == 'SUCCESS') {
							alert('댓글이 삭제되었습니다!');
							//getCommentList();//댓글 목록 함수 호출! 갱신된 내용 가져옴.
							//getCommentCount();//댓글 개수 불러오기
						}
					}
				});
			});
		})
	</script>
<%@ include file="../include/sns_footer.jsp"%>