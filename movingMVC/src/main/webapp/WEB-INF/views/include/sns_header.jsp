<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"
    		uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 화면</title>
<%-- Initialize, index, header 공통 부분 css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/init.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/social_scrollbar.css" />

<%-- 아이콘 폰트 사용을 위한 스타일시트, js 추가 --%>
<link rel="stylesheet" type="text/css"
	href="../iconfont/css/fontawesome.min.css">
<script src="https://kit.fontawesome.com/bf95efc607.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../icon/css/fontello.css">
<link rel="stylesheet" href="../icon/css/animation.css">

<%-- banner css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/aboutMoving.css" />

<%-- board css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/board_notice.css" />
<%-- 공지사항 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/board_event.css" />
<%-- 이벤트 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/board_faq.css" />
<%-- FAQ --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/board_actors.css" />
<%-- 배우 모집 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/board_contest.css" />
<%-- 시나리오 모집 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/board_free.css" />
<%-- 자유게시판 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/board_writing.css" />
<%-- 글 작성 폼 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/board_qna.css" />
<%-- Q & A--%>

<%-- funding css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/funding_list.css" />
<%-- 펀딩 리스트 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/funding_write.css" />
<%-- 펀딩 글 작성 폼 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/funding_cont.css" />
<%-- 펀딩 글 보기 --%>

<%-- member css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member_login.css" />
<%-- 로그인 폼 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member_join.css" />
<%-- 회원가입 폼 --%>

<%-- movie css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/movie_cont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/movie_mainList.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/movie_categoryList.css" />

<%-- sns css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/social_main.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/social_profile.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/social_messenger.css" />

<%-- javascript 추가 (우선, abc순)--%>
<script src="${pageContext.request.contextPath}/js/board_event.js"></script>
<script src="${pageContext.request.contextPath}/js/board_faq.js"></script>
<script src="${pageContext.request.contextPath}/js/funding_write.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/move_banner.js"></script>
<script src="${pageContext.request.contextPath}/js/movie_cont.js"></script>
<script src="${pageContext.request.contextPath}/js/slide.js"></script>
<script src="${pageContext.request.contextPath}/js/social.js"></script>
<script src="${pageContext.request.contextPath}/resources/editor/js/HuskyEZCreator.js"></script>
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
	function focusComment(){
// 		document.getElementsByClassName("SNS_Comment_Write_Chat").focus();
		$('.SNS_Comment_Write_Chat').focus();
	}
</script>

<style>
#msLogin_wrap {
	width: 1200px;
	height: auto;
	min-height: 750px;
	margin: auto auto;
	align-items: center;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: auto auto;
	background-color: #f2f0fb;
}

#msJoin_wrap {
	width: 1200px;
	height: auto;
	min-height: 800px;
	margin: auto auto;
	align-items: center;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: auto auto;
	background-color: #f2f0fb;
}
</style>
</head>
<body>
	<div id="SNS_All">
		<div class="sns_quick" style="position: fixed;">
			<button class="top_btn"
				onclick="$('html, body').stop().animate({scrollTop : 0}, 500);">TOP</button>
		</div>
		<%-- 상단 부분 --%>
		<div id="header_background">
			<div id="sns_header">
				<%-- 상단 메뉴 첫번째 --%>
				<div id="sns_headerMenu">
					<div class="flex-container">
						<div style="flex-grow: 1;">
							<a href="../funding/funding_list.jsp">Project</a>
						</div>
						<div style="flex-grow: 1;">
							<a href="../movie/movie_mainList.jsp">Movies</a>
						</div>
						<div style="flex-grow: 12;">
							<div id="header_logo">
								<a href="/moving.com/social/main"><img
									src="${pageContext.request.contextPath}/images/logo_w.png" alt="로고 이미지" width="150" height="25" /></a>
							</div>
						</div>
						<div style="flex-grow: 0.8;">
							<input name="header_searchbar" placeholder="Search"
								style="color: white; border: none; background-color: #6a67ce;"
								size="3">&nbsp;&nbsp; <a href="#"><i
								class="fas fa-search"></i></a>
						</div>
						<div style="flex-grow: 0.6;">
							<a href="../index.jsp">Main</a>
						</div>
						<div style="flex-grow: 0.6;">
							<a href="../member/member_snsLogin.jsp">Login</a>
							<a href="/moving.com/not_real_login">임시로그인</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>