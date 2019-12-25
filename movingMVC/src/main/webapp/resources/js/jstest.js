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
	$('#write').click( function() {
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
				getCommentCount();
				$('#content').val("");
			}
		}
	});
	
	})
});

/*
	if(content=='') {
		alert('댓글 내용을 입력하세요!');
		$('#content').val('').focus();
		return false;
	}
	
	$.ajax({//jQuery ajax
		type: 'post',//서버로 자료를 보내는 법
		url: '/controller/replies',//매핑 주소
		headers: {
			"Content-Type": "application/json", 
			"X-HTTP-Method-Override": "POST"
			//HTTP 코드 맨 머리 앞에 추가적인 정보 지정
		},
		dataType: 'text',//문자열
		data: JSON.stringify({//댓글 작성자, 내용이 json이다.
			//왼쪽에서 오른쪽으로 대입됨!! 우 -> 왼 아님!!!
			//왼쪽이 키이름 오른쪽이 값!! 이건 동일!!
			project_post_id: project_post_id, //게시물 번호
			id: id, //댓글 작성자
			content: content //댓글 내용
		}),
		success: function(data) {//댓글 저장 성공시 SUCCESS 문자열 반환
			if(data=='SUCCESS') {
				alert('댓글이 등록되었습니다!');
				getCommentList();//댓글 목록 함수 호출! 갱신된 내용 가져옴.
				getCommentCount();
				$('#content').val("");
			}
		}
	});
});
*/





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
	$.getJSON("/moving.com/comments/all/" + id, function(data) {
		//get방식으로 json 데이터를 비동기식으로 가져와서 data에 저장
		var str = "";
		success: $(data).each(function() {//each()는 jQuery 반복 함수
			str += "<li data-rno='"+this.ID+"' style='align-items: center'>"
			+"<c:if test='${empty "+this.PROFILE_IMAGE_URL+"}'>"
			+"<img class='SNS_Content_user_img' class='SNS_Profile_Picture'"
			+"src='../images/member_profile.png' width=30px height=30px"
			+"alt=''></c:if>"
			+"<p>"+this.NICKNAME+"</p><p>"+this.CONTENT+"</p></li>";
		});
		$('#replies').html(str);//태그와 문자를 함께 변경 적용
	});//매핑 주소 써주기
}//getCommentList()

//댓글 목록 출력 부분 --%>

//게시글 번호에 해당하는 댓글 개수 출력, 개수 출력되는 부분에 값 변경
function getCommentCount() {
	$.getJSON("/moving.com/comments/count/"+id, function(data) {
		var commentCount= "<b>"+data+"</b>";
		$('.commentCount').html(commentCount);
	});
}//getCommentCount()

	
	
	//댓글 삭제 --%>
	$('#replyDelBtn').on('click', function() {
		var rno=$('.modal-title').html();//댓글 번호
		
		$.ajax({
			type: 'delete',
			url: '/controller/comments/'+rno,
			headers:{
				"Content-Type": "application/json",
				"X-HTTP-Method-Override": "DELETE"
			},
			dataType:'text',
			success:function(data) {
				if(data=='SUCCESS'){
					alert('댓글이 삭제되었습니다!');
					$('#modDiv').hide('slow');
					getAllList();
					getReplyCount();
				}
			}
		});
	});
	
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
	
	//댓글 수정 화면 --%>
	$('.modify').on('click', function() {
		var reply=$(this).parent();
		var rno=reply.attr('data-rno');//댓글 번호
		var replytext=reply.children('.com').text();
		
		$('.modal-title').html(rno);//댓글 번호
		$('#replytext').val(replytext);//댓글 내용
		$('#modDiv').show('slow');//해당 영역을 보이게 함.
	});
	
	//div 닫기
	function modDivClose() {
		$('#modDiv').hide('slow');//해당 영역을 숨김
	}//modDivClose()
	
	
	//댓글 추가 부분 --%>
	$('#replyAddBtn').on('click', function() {
		var replyer=$('#newreplyer').val();//댓글 작성자
		var replytext=$('#newreplytext').val();//댓글 내용
		
		/* check();
		function check() {
			if(replyer=="") {
				alert('작성자를 입력하세요!');
				$('#newreplyer').val("").focus();
				return false;
			}
			if(replytext=="") {
				alert('내용을 입력하세요!');
				$('#newreplytext').val("").focus();
				return false;
			}
		}//check() */
		
		$.ajax({//jQuery ajax
			type: 'post',//서버로 자료를 보내는 법
			url: '/controller/replies',//매핑 주소
			headers: {
				"Content-Type": "application/json", 
				"X-HTTP-Method-Override": "POST"
				//HTTP 코드 맨 머리 앞에 추가적인 정보 지정
			},
			dataType: 'text',//문자열
			data: JSON.stringify({//댓글 작성자, 내용이 json이다.
				//왼쪽에서 오른쪽으로 대입됨!! 우 -> 왼 아님!!!
				//왼쪽이 키이름 오른쪽이 값!! 이건 동일!!
				bno: bno, //게시물 번호
				replyer: replyer, //댓글 작성자
				replytext: replytext //댓글 내용
			}),
			success: function(data) {//댓글 저장 성공시 SUCCESS 문자열 반환
				if(data=='SUCCESS') {
					alert('댓글이 등록되었습니다!');
					getAllList();//댓글 목록 함수 호출! 갱신된 내용 가져옴.
					getReplyCount();
					$('#newreplyer').val("");
					$('#newreplytext').val("");
				}
			}
		});
	});

/*댓글 목록 출력 부분
var id = ${projectInfo.id};//게시물 번호값 전달
var user_id = ${mCommentVO.userIdFrom};//작성자 id 전달

댓글 추가 부분
$('#SNS_Comment_Write_Button').on('click', function() {
	alert('댓글내용');
	//var replyer = $('#newreplyer').val();//댓글 작성자
	var replytext = $('#content').val();//댓글 내용

	//	check();
	//	function check() {
	 if(replyer=="") {
						alert('작성자를 입력하세요!');
						$('#newreplyer').val("").focus();
						return false;
					} 
	if(replytext.value=="") {
		alert('내용을 입력하세요!');
		$('#content').val("").focus();
		return false;
	}
	//	}//check() 

	$.ajax({//jQuery ajax
		type : 'post',//서버로 자료를 보내는 법
		url : '/moving.com/replies/write',//매핑 주소
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
				//HTTP 코드 맨 머리 앞에 추가적인 정보 지정
		},
		dataType : 'text',//문자열
		data : JSON.stringify({//댓글 작성자, 내용이 json이다.
			//왼쪽에서 오른쪽으로 대입됨!! 우 -> 왼 아님!!!
			//왼쪽이 키이름 오른쪽이 값!! 이건 동일!!
			projectPostId : id, //게시물 번호
			userIdFrom : user_id, //댓글 작성자
			content : replytext
			//댓글 내용
		}),
		success : function(data) {//댓글 저장 성공시 SUCCESS 문자열 반환
			if (data == 'SUCCESS') {
				alert('댓글이 등록되었습니다!');
				//getAllList();//댓글 목록 함수 호출! 갱신된 내용 가져옴.
				getReplyCount();
				$('#newreplyer').val("");
				$('#newreplytext').val("");
			}
		}
	});
});*/