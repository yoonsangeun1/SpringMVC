<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화를 움직이다! MOVING</title>

<%-- Initialize, index, header 공통 부분 css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/init.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/index.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/header.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/scrollbar.css" />

<%-- 아이콘 폰트 사용을 위한 스타일시트, js 추가 --%>
<link rel="stylesheet" type="text/css"ref="${pageContext.request.contextPath}/resources/iconfont/css/fontawesome.min.css">
<script src="https://kit.fontawesome.com/bf95efc607.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/icon/css/fontello.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/icon/css/animation.css">

<%-- banner css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/aboutMoving.css" />

<%-- board css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board_notice.css" /><%-- 공지사항 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board_event.css" /><%-- 이벤트 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board_faq.css" /><%-- FAQ --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board_actors.css" /><%-- 배우 모집 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board_contest.css" /><%-- 시나리오 모집 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board_free.css" /><%-- 자유게시판 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board_write.css" /><%-- 글 작성 폼 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board_qna.css" /><%-- Q & A--%>

<%-- funding css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/funding_list.css" /><%-- 펀딩 리스트 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/funding_write.css" /><%-- 펀딩 글 작성 폼 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/funding_cont.css" /><%-- 펀딩 글 보기 --%>

<%-- member css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member_change.css" /><%-- 회원전환 폼 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member_delete.css" /><%-- 회원전환 폼 --%>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member_find.css" />회원전환 폼 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member_infosetting.css" /><%-- 회원설정 폼 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member_join.css" /><%-- 회원가입 폼 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member_login.css" /><%-- 로그인 폼 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member_mypage.css" /><%-- 마이페이지 폼 --%>


<%-- movie css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/video_content.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/video_mainList.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/video_categoryList.css" />

<%-- sns css 추가 --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/social_main.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/social_profile.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/social_messenger.css" />

<%-- javascript 추가 (우선, abc순)--%>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/header_icon.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/member_join.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/member_login.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/member_change.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/member_setting.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/board_event.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/board_faq.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/funding_write.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/move_banner.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/video_viewPg.js"></script>

<!--  <script>
$(function(){ // document ready
      if (!!$('#header').offset()) { // make sure "#header" element exists
        var stickyTop = $('#header').offset().top; // returns number
        $(window).scroll(function(){ // scroll event
          var windowTop = $(window).scrollTop(); // returns number
          if (stickyTop < windowTop){
            $('#header').css({ position: 'fixed', top: '0px', margin: '0px auto'});
          }
          else {
            $('#header').css('position','static');
          }
        });
      }
    });
//     헤더가 좌상단에 붙음. 가운데정렬 마진레프트라이트오토 css 지정, 배경투명말고 색넣기 나중에
</script> -->

</head>
<body>
	<div id="main_wrap">

		<%-- 상단 부분 --%>
		<div id="header">

			<%-- 상단 메뉴 첫번째 --%>
			<div id="header_menuBar">
				<div class="flex-container">
					<div style="flex-grow: 1;">
						<a href="/moving.com/project/list?category=20001">Project</a>
					</div>
					<div style="flex-grow: 1;">
						<a href="/moving.com/video/videomain">Movies</a>
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
						<div id="header_notification_container_activebox" style="display:none; font:15px '맑은 고딕' black;">
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
							<button type="button" id="header_profile_btn" onclick="getUserInfo();">
								<c:if test="${profile_image_url == 'default'}">
									<img class="Avatar_image avatar_image_change" src="${pageContext.request.contextPath}/images/member_profile.png"	style="width:30px; height:30px; border-radius: 50%;">
								</c:if>
								
								<c:if test="${profile_image_url != 'default'}">
									<img class="Avatar_image avatar_image_change" src="${profile_image_url}" style="width:30px; height:30px; border-radius: 50%;">
								</c:if>
							</button>
						</div>
						
						<script>
						function getUserInfo() {
							$.getJSON("/moving.com/getUserInfo", function(data) {
								//get방식으로 json 데이터를 비동기식으로 가져와서 data에 저장
								var myLevel = data.userLv;
								if(myLevel==1) {
									myLevel="개인회원";
								}else if(myLevel==3) {
									myLevel="제작사";
								}else if(myLevel==4) {
									myLevel="관리자";
								}
								var myName = data.name;
								var myPoint = "나의 포인트 "+data.userPoint+" 점";
								var myProfile = data.profileImageUrl;
								
								if(myProfile == 'default') {
									myProfile = "${pageContext.request.contextPath}/images/member_profile.png";
								}
								$('#myName').html(myName);//태그와 문자를 함께 변경 적용
								$('#myLevel').html(myLevel);//태그와 문자를 함께 변경 적용
								$('#myPoint').html(myPoint);//태그와 문자를 함께 변경 적용
								$('.avatar_image_change').attr('src', myProfile);//태그와 문자를 함께 변경 적용
								$('.MyMenuUserInfo_avatar').attr('src', myProfile);//태그와 문자를 함께 변경 적용
								});//매핑 주소 써주기	
						}
						</script>
						<!-- 프로필아이콘 클릭시 생성되는 내 정보창 -->
						<div id="header_profile_container_activebox" style="display:none; font-color:black;">
							<div id="MymenuLayout_contatainer">
								<div class="MyMenuUserInfo_userInfo" onclick="location='/moving.com/member_mypage?mid=${id}';"> 
									<a class="MyMenuUserInfo_profileLink">
										<span class="MyMenuUserInfo_name" id="myName">${name}</span> &nbsp;&nbsp;<i class="fas fa-chevron-right" aria-hidden="true"></i>
										<c:if test="${profile_image_url == 'default'}">
											<img class="MyMenuUserInfo_avatar" src="${pageContext.request.contextPath}/images/member_profile.png"	style="width:60px; height:60px; border-radius: 50%;">
										</c:if>
								
										<c:if test="${profile_image_url != 'default'}">
											<img id="MyMenuUserInfo_avatar" class="MyMenuUserInfo_avatar" src="${profile_image_url}" style="width:60px; height:60px; border-radius: 50%;">
										</c:if>
										<span class="MyMenuUserInfo_userLevel" id="myLevel">${user_lv}</span> 
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
							<div id="MymenuUserActive_like" onclick="location.href='member_mypage?mid=${id}';">
								<span class="like_project">좋아한</span>
								<br>
								<i class="far fa-heart"></i>
							</div>
							<ul class="MyMenu_subMenu">
								<li>
									<a href="#" class="MyMenu_subMenuBtn" id="myPoint">
										나의 포인트 ${user_point} 점
										<i class="fas fa-chevron-right" aria-hidden="true" style="float:right"></i>
									</a>
								</li>
								<li>
									<a href="#" class="MyMenu_subMenuBtn" >
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
			<div class="border_bottom_10"></div>

			<%-- 상단 메뉴 두번째  category_bar --%>
			<!-- <div id="header_menu2">
				<nav id="menu_bar">
					<ul>
						<li><a href="../funding/funding_list.jsp">All</a></li>
						<li><a href="../funding/funding_list.jsp">Documentaries</a></li>
						<li><a href="../funding/funding_list.jsp">Shorts</a></li>
						<li><a href="../funding/funding_list.jsp">Animation</a></li>
						<li><a href="../funding/funding_list.jsp">Action</a></li>
						<li><a href="../funding/funding_list.jsp#">Romance</a></li>
						<li><a href="../funding/funding_list.jsp">Action</a></li>
						<li><a href="../funding/funding_list.jsp">Romance</a></li>
						<li><a href="../funding/funding_list.jsp">Action</a></li>
					</ul>
				</nav>
			</div>
			<div class="border_bottom_t20"></div> -->
		</div>
		<div class="clear"></div>

		<%-- 현범오빠 퀵메뉴 호출에 버튼스타일 적용 --%>
		<div class="mainRight_quick2" style="position: fixed;">
			<div class="quickmenu1">
				<button
					class="quickBtn button_cb3a9eb button_f12 button_r4 vertical group border"
					onclick="location='/moving.com/member/join';">회원가입</button>
			</div>
			<div class="quickmenu2">
				<button
					class="quickBtn button_cb3a9eb button_f12 button_r4 vertical group border"
					onclick="location='/moving.com/board/actors';">배우모집</button>
			</div>

			<div class="quickmenu3">
				<button
					class="quickBtn button_cb3a9eb button_f12 button_r4 vertical group border"
					onclick="location='/moving.com/board/event';">이벤트</button>
			</div>

			<button
				class="quickBtn button_cb3a9eb button_f12 button_r4 vertical group border"
				onclick="$('html, body').stop().animate({scrollTop : 0}, 500);"
				style="background-color: #fc636b">TOP</button>
		</div>