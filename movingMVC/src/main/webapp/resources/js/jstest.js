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

//댓글 추가 부분

$(function(){ 
	getCommentList();
	$('#write').on('click', function() {
	//$('#write').click( function() {
	//var sessionId="<%=session.getAttribute('id')%>"
	//	var sessionTest=sessionId;
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

//댓글 목록 불러오는 함수 호출
function getCommentList() {
	var project_post_id = $('#project_post_id').val();//게시글 번호
	$.getJSON("/moving.com/comments/all/" + project_post_id, function(data) {
		//get방식으로 json 데이터를 비동기식으로 가져와서 data에 저장
		//alert(project_post_id);
		var str = "";
		success: $(data).each(function() {//each()는 jQuery 반복 함수
			if(this.PROFILE_IMAGE_URL == 'default') {
			str += "<li class='replies' data-commentId='"+this.ID+"' style='align-items: center'>"
			+"<div class='comment_no' style='display:none'>"+this.ID+"</div>"
			+"<img class='SNS_Content_user_img' class='SNS_Profile_Picture'"
			+"src='../images/member_profile.png' width=30px height=30px"
			+"alt=''>"
			+"<p><a href='/moving.com/member/mypage?id="+this.USER_ID_FROM+"'>"
			+this.NICKNAME+"</a></p><p class='comment_content'>"
			+this.CONTENT+"</p>"
			+"<input type='button' name='modify_"+this.ID+"' class='modify SNS_Comment_Write_Button' value='수정'>"
			+"<input type='button' name='delete_"+this.ID+"' class='delete SNS_Comment_Write_Button' value='삭제'>"
			//+"<button name='modify_"+this.ID+"'  class='modify SNS_Comment_Write_Button'>수정</button>"
			//+"<button name='delete_"+this.ID+"' class='delete SNS_Comment_Write_Button'>삭제</button>"
			//<input type="button" id="button_${var.index }" name="button_${var.index }" value="Button">
			+"</li>";
			}else if(this.PROFILE_IMAGE_URL != 'default') {
				str += "<li class='replies' data-commentId='"+this.ID+"' style='align-items: center'>"
				+"<div class='comment_no' style='display:none'>"+this.ID+"</div>"
				+"<img class='SNS_Content_user_img' class='SNS_Profile_Picture'"
				+"src='"+this.PROFILE_IMAGE_URL+"' width=30px height=30px"
				+"alt=''>"
				+"<p class='com'><a class='a' href='/moving.com/member/mypage?id="+this.USER_ID_FROM+"'>"
				+this.NICKNAME+"</a></p><p class='comment_content'>"
				+this.CONTENT+"</p>"
				+"<input type='button' name='modify_"+this.ID+"' class='modify SNS_Comment_Write_Button' value='수정'>"
				+"<input type='button' name='delete_"+this.ID+"' class='delete SNS_Comment_Write_Button' value='삭제'>"
				//+"<button name='modify_"+this.ID+"'  class='modify SNS_Comment_Write_Button'>수정</button>"
				//+"<button name='delete_"+this.ID+"' class='delete SNS_Comment_Write_Button'>삭제</button>"
				+"</li>";
			}
		});
		$('#replies').html(str);//태그와 문자를 함께 변경 적용
	});//매핑 주소 써주기
}//getCommentList()

function please() {
	var reply=$(this).parent();
	var rno=reply.attr('data-commentId');//댓글 번호
	var replytext2=reply.children('.comment_content').text();
	
	alert(reply);
	alert(rno);
	alert(replytext2);
}

//게시글 번호에 해당하는 댓글 개수 출력, 개수 출력되는 부분에 값 변경
function getCommentCount() {
	var project_post_id = $('#project_post_id').val();//게시글 번호
	$.getJSON("/moving.com/comments/count/"+project_post_id, function(data) {
		var commentCount= "<b>"+data+"</b>";
		//alert(commentCount);
		$('.commentCount').html(commentCount);
	});
}//getCommentCount()

	
	
//댓글 삭제 --%>
$(function(){ 
	$("input[name^='delete']").on('click', function() {
	//$('.delete').on('click', function() {
		alert('제발');
		var commentId=$('#replies_li').html();//댓글 번호
		alert('삭제'+commentId);
		
		$.ajax({
			type: 'delete',
			url: '/moving.com/comments/delete/'+commentId,
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
});

function modifyComment() {
alert('수정');

var reply=$(this).parent();
var rno=reply.attr('data-commentId');//댓글 번호
var replytext2=reply.children('.comment_content').text();

alert(reply.text()+'번호'+rno);
alert(reply.text()+'내용'+ replytext2);
//$('.comment_no').html(rno);//댓글 번호
//$('#replytext').val(replytext);//댓글 내용
//$('#modDiv').show('slow');//해당 영역을 보이게 함.
}
$('#replies').on('click', '.replies_li button', function() {
	alert('adfsdasfafsda');
	
});
	
//댓글 수정 화면 --%>
$(function(){ 
	$("input[name^='modify']").on('click', function() {
	//$('.modify').click( function() {
	 alert('제발');
	 //function($(this));
	});
});

function deleteComment() {
	var commentId=$('.comment_no').html();//댓글 번호
	alert('삭제aasddsaf'+commentId);
	
	$.ajax({
		type: 'delete',
		url: '/moving.com/comments/delete/'+commentId,
		headers:{
			"Content-Type": "application/json",
			"X-HTTP-Method-Override": "DELETE"
		},
		dataType:'text',
		success:function(data) {
			if(data=='SUCCESS'){
				alert('댓글이 삭제되었습니다!');
				//$('#modDiv').hide('slow');
				getAllList();
				getReplyCount();
			}
		}
	});
}


	//댓글 수정 완료 --%>
	$('#replyModBtn').on('click', function() {
		var rno=$('.modal-title').html();//댓글 번호
		var replytext=$('#replytext').val();
		
		$.ajax({
			type: 'put',
			url: '/controller/comments/'+rno,
			headers:{
				"Content-Type": "application/json",
				"X-HTTP-Method-Override": "PUT"
			},
			data: JSON.stringify({replytext: replytext}),
			dataType:"text",
			success: function(data) {
				if(data=='SUCCESS') {
					alert('댓글이 수정되었습니다!');
					$('#modDiv').hide('slow');
					getAllList();
				}
			}
		});
	});
	
