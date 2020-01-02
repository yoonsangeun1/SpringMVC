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


<%-- member css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member_login.css" />
<%-- 로그인 폼 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member_join.css" />
<%-- 회원가입 폼 --%>


<%-- sns css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/social_main.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/social_profile.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/social_messenger.css" />

<%-- javascript 추가 (우선, abc순)--%>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<%-- <script src="${pageContext.request.contextPath}/resources/js/social.js"></script> --%>
<script src="${pageContext.request.contextPath}/resources/editor/js/HuskyEZCreator.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/header_icon.js"></script>  <%-- 헤더 js --%>
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
						<a href="/moving.com/project/list">Project</a>
					</div>
					<div style="flex-grow: 1;">
						<a href="../movie/movie_mainList.jsp">Movies</a>
					</div>
					<div style="flex-grow: 12;">
						<div id="header_logo">
							<a href="/moving.com/main"><img src="${pageContext.request.contextPath}/images/logo.png"
								alt="로고 이미지" width="150" height="25" /></a>
						</div>
					</div>
					<div style="flex-grow: 0.8;">
						<input id="snsHeader_searchbar" name="header_searchbar"
							placeholder="Search" style="color: #656969; border: none;"
							size="3">&nbsp;&nbsp; <a href="#"><i
							class="fas fa-search"></i></a>
					</div>
					<div style="flex-grow: 0.6;">
						<a href="/moving.com/social/main">SNS</a>
					</div>
					<div style="flex-grow: 0.6;">
						<c:if test="${empty userid}">
					<div style="flex-grow: 0.6;">
						<a href="/moving.com/member/login">Login</a>
					</div>
					</c:if>
					<c:if test="${!empty userid}">
					<div style="flex-grow: 0.6;">
<!-- 					<form name="user_logout" method="post" action="member_logout"> -->
						<!-- 로그인 후 보여지는 알림아이콘  -->
						<div class="header_notification_container">
							<button  type="button" id="header_notification_btn">
								<i class="far fa-bell" aria-hidden="true" style="font-size: 30px;"></i>
							</button>
						</div>
						
						<!-- 알림아이콘 클릭시 생성되는 알림리스트창 -->
						<div id="header_notification_container_activebox" style="display:none">
							<div id="notification_list">
								<div class="notification_cont"></div>
								<div class="notification_cont"></div>
								<div class="notification_cont"></div>
								<div class="notification_cont"></div>
								<div class="notification_cont"></div>
								<div class="notification_cont"></div>
								<div class="notification_cont"></div>
								<div class="notification_cont"></div>
								<div class="notification_cont"></div>
							</div>
							<div id="notificationList_all">
								<a class="noti_all_btn" href="#">알림 전체보기 ></a>
							</div>
						</div>
						
						<!-- 로그인 후  보여지는 프로필아이콘 -->
						<div class="header_profile_container">
							<button type="button" id="header_profile_btn">
								<i class="far fa-user-circle" aria-hidden="true" style="font-size: 30px;"></i>	
							</button>
						</div>
						
						<!-- 프로필아이콘 클릭시 생성되는 내 정보창 -->
						<div id="header_profile_container_activebox" style="display:none;">
							<div id="MymenuLayout_contatainer">
<!-- 								<button type="button" class="profile_modify_btn button_cb3a9eb border"> -->
<!-- 									정보 수정 -->
<!-- 								</button> -->
								<div class="MyMenuUserInfo_userInfo" onclick="location='/moving.com/member/mypage';"> 
									<a class="MyMenuUserInfo_profileLink">
										<span class="MyMenuUserInfo_name">${name}</span> &nbsp;&nbsp;<i class="fas fa-chevron-right" aria-hidden="true"></i>
										<span class="MyMenuUserInfo_avatar"><i class="far fa-user-circle" aria-hidden="true" style="font-size:60px;"></i></span>
										<span class="MyMenuUserInfo_userLevel">${user_lv}</span> 
									</a>
								</div>
							</div>
							
							<div id="MymenuUserActive_writeBoard" onclick="location.href='http://www.naver.com';">
								<span class="wirte_Board">내가 쓴 글</span>
								<br>
								<i class="far fa-edit"></i>
							</div>
							<div id="MymenuUserActive_reward" onclick="location.href='http://www.naver.com';">
								<span class="my_reward">나의 리워드</span>
								<br>
								<i class="fas fa-gift"></i>
							</div>
							<div id="MymenuUserActive_like" onclick="location.href='http://www.naver.com';">
								<span class="like_project">좋아한</span>
								<br>
								<i class="far fa-heart"></i>
							</div>
							<ul class="MyMenu_subMenu">
								<li>
									<a href="#" class="MyMenu_subMenuBtn">
										나의 포인트 ${user_point} 점
										<i class="fas fa-chevron-right" aria-hidden="true" style="float:right"></i>
									</a>
								</li>
								<li>
									<a href="#" class="MyMenu_subMenuBtn">
										나의 지지서명<i class="fas fa-chevron-right" aria-hidden="true" style="float:right"></i>
									</a>
								</li>
								<li>
									<a href="/moving.com/member_change" class="MyMenu_subMenuBtn"> 
											 회원 전환<i class="fas fa-chevron-right" aria-hidden="true" style="float: right"></i>
									</a>
								</li>
								<li>
									<a href="/moving.com/member_infosetting" class="MyMenu_subMenuBtn">
										설정<i class="fas fa-chevron-right" aria-hidden="true" style="float:right"></i>
									</a>
								</li>
							</ul>
							
							<div id="MyMenuUserActive_logout">
								<input type="button" value="로그아웃" class="logout button_cb3a9eb border" onclick="location='/moving.com/member_logout';">
<!-- 								<input type="hidden"> -->
							</div>

						</div>
<!-- 					</form> -->
					</div>
					</c:if>
						
<%-- 						<a href="/moving.com/not_real_login">임시로그인 ${userid}</a> --%>
					</div>
						
					</div>
				</div>
			</div>
		</div>
		</div>