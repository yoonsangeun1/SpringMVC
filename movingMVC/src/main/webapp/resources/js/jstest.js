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
   getCommentList();
   $('#write').on('click', function() {
   //var sessionId="<%=session.getAttribute('id')%>"
   //   var sessionTest=sessionId;
   var project_post_id = $('#project_post_id').val();//게시글 번호
   var content=$('#content').val();//댓글 내용

   if(content=='') {
      alert('댓글 내용을 입력하세요!');
      $('#content').val('').focus();
      return false;
   }

   $.ajax({//jQuery ajax
      type: 'post',//서버로 자료를 보내는 법
      url: '/moving.com/comments/write',//매핑 주소
      headers: {
         "Content-Type": "application/json", 
         "X-HTTP-Method-Override": "POST"
         //HTTP 코드 맨 머리 앞에 추가적인 정보 지정
      },
      dataType: 'text',//문자열
      data: JSON.stringify({//댓글 작성자, 내용이 json이다.
         //왼쪽에서 오른쪽으로 대입됨!! 우 -> 왼 아님!!!
         //왼쪽이 키이름 오른쪽이 값!! 이건 동일!!
         projectPostId: project_post_id, //게시물 번호
         //id: id, //댓글 작성자
         content: content //댓글 내용
      }),
      success: function(data) {//댓글 저장 성공시 SUCCESS 문자열 반환
         if(data=='SUCCESS') {
            alert('댓글이 등록되었습니다!');
            getCommentList();//댓글 목록 함수 호출! 갱신된 내용 가져옴.
            getCommentCount();//댓글 개수 불러오기
            $('#content').val("");
         }
      }
   });
   })
});


//댓글 작성시 내용 입력 체크
function comment_check() {
	if($.trim($('#content').val())=='') {
		alert('댓글 내용을 입력하세요!');
		$('#content').val('').focus();
		return false;
	}
}

/*function getData(){
	<%
	HttpSession session = request.getSession();
	session.getAttribute("nickname");
	%>
}*/

//댓글 목록 불러오는 함수 호출
function getCommentList() {
	//var a=$('nickname').val();
	//var a=session.getAttribute('nickname');
	//var a= "<%=(String)session.getAttribute('nickname')%>";
	//var a= '<%=(String)session.getAttribute("nickname")%>';
	//var a=getParameterByName('nickname');
	//var a=sessionStorage.getItem('id');
	//alert(a);
	//var a=$('#sessionId').val();
	//alert(a);
	
	var project_post_id = $('#project_post_id').val();//게시글 번호
	$.getJSON("/moving.com/comments/all/" + project_post_id, function(data) {
		//get방식으로 json 데이터를 비동기식으로 가져와서 data에 저장
		//alert(project_post_id);
		var str = "";
		success: $(data).each(function() {//each()는 jQuery 반복 함수
			/*if($.trim($('#sessionId').val())==this.ID) {
				alert('로그인');
			}*/
			
			if(this.PROFILE_IMAGE_URL == 'default') {
				str += "<li class='replies' data-commentId='"+this.ID+"' style='align-items: center'>"
				+"<div class='comment_no' style='display:none'>"+this.ID+"</div>"
				+"<img class='SNS_Content_user_img' class='SNS_Profile_Picture'"
				+"src='../images/member_profile.png' width=30px height=30px"
				+"alt=''/>"
				+"<p><a href='/moving.com/member/mypage?id="+this.USER_ID_FROM+"'>"
				+this.NICKNAME+"</a></p><p class='comment_content_"+this.ID+"'>"
				+this.CONTENT+"</p>"
				+"<input name='comment_txt_"+this.ID+"' class='comment_txt' value='"+this.CONTENT+"' style='display: none;'>"
				//+"<input type='button' name='modify' class='modify SNS_Comment_Write_Button' value='수정' onclick='clicksss();'>"
//				if($.trim($('#sessionId').val())==this.ID) {
				str += "<button name='modify_"+this.ID+"'  class='modify SNS_Comment_Write_Button'>수정</button>"
				+"<button name='modify_ok_"+this.ID+"'  class='modify_ok SNS_Comment_Write_Button' style='display: none;'>수정완료</button>"
				+"<button name='delete_"+this.ID+"' class='delete SNS_Comment_Write_Button'>삭제</button>"
//				}
				+"</li>";
			}else if(this.PROFILE_IMAGE_URL != 'default') {
				str += "<li class='replies' data-commentId='"+this.ID+"' style='align-items: center'>"
				+"<div class='comment_no' style='display:none'>"+this.ID+"</div>"
				+"<img class='SNS_Content_user_img' class='SNS_Profile_Picture'"
				+"src='"+this.PROFILE_IMAGE_URL+"' width=30px height=30px"
				+"alt=''/>"
				+"<p><a href='/moving.com/member/mypage?id="+this.USER_ID_FROM+"'>"
				+this.NICKNAME+"</a></p><p class='comment_content_"+this.ID+"'>"
				+this.CONTENT+"</p>"
				+"<input name='comment_txt_"+this.ID+"' class='comment_txt' value='"+this.CONTENT+"' style='display: none;'>"
				//+"<input type='button' name='modify' class='modify SNS_Comment_Write_Button' value='수정' onclick='clicksss();'>"
//				if($.trim($('#sessionId').val())==this.ID) {
					str += "<button name='modify_"+this.ID+"'  class='modify SNS_Comment_Write_Button'>수정</button>"
					+"<button name='modify_ok_"+this.ID+"'  class='modify_ok SNS_Comment_Write_Button' style='display: none;'>수정완료</button>"
					+"<button name='delete_"+this.ID+"' class='delete SNS_Comment_Write_Button'>삭제</button>"
//					}
				+"</li>";
			}
		});
		$('#replies').html(str);//태그와 문자를 함께 변경 적용
	});//매핑 주소 써주기
}//getCommentList()

//게시글 번호에 해당하는 댓글 개수 출력, 개수 출력되는 부분에 값 변경
function getCommentCount() {
	var project_post_id = $('#project_post_id').val();//게시글 번호
	$.getJSON("/moving.com/comments/count/"+project_post_id, function(data) {
		var commentCount= "<b>"+data+"</b>";
		//alert(commentCount);
		$('.commentCount').html(commentCount);
	});
}//getCommentCount()

/* 댓글 수정 화면 출력 */
$(function(){
	$('#replies').on('click','.replies .modify',function() {
		var reply=$(this).parent();
		var rno=reply.attr('data-commentId');//댓글 번호
		var replytext=reply.children('.comment_txt').text();//댓글 내용만 가져옴.

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
		var replyModifyText=$('.comment_txt').val();//수정한 댓글 내용 가져오기

		$.ajax({
			type: 'put',
			url: '/moving.com/comments/update/'+rno,
			headers:{
				"Content-Type": "application/json",
				"X-HTTP-Method-Override": "PUT"
			},
			data: JSON.stringify({content: replyModifyText}),
			dataType:"text",
			success: function(data) {
				if(data=='SUCCESS') {
					alert('댓글이 수정되었습니다!');
					getCommentList();//댓글 목록 함수 호출! 갱신된 내용 가져옴.
					getCommentCount();//댓글 개수 불러오기
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
			url: '/moving.com/comments/delete/'+rno,
			headers:{
				"Content-Type": "application/json",
				"X-HTTP-Method-Override": "DELETE"
			},
			dataType:'text',
			success:function(data) {
				if(data=='SUCCESS'){
					alert('댓글이 삭제되었습니다!');
					getCommentList();//댓글 목록 함수 호출! 갱신된 내용 가져옴.
					getCommentCount();//댓글 개수 불러오기
				}
			}
		});
	});
})
   
