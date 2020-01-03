<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/sns_header.jsp"%>

<div id="mLogin_wrap">
	<form method="post" action="social_login_ok" onsubmit="return login_check();" id="mLogin_form">
<!-- 		<div id="mLogin_form"> -->
			<section>
				<div id="mLogin_text">
					<h2>로그인 </h2>
				</div>
				
				<div id="mLogin_box">
					<input name="mLogin_email" id="mLogin_email" class="input_text" type="email" placeholder="이메일 아이디">
					<input name="mLogin_password" id="mLogin_password" class="input_text" type="password" placeholder="비밀번호(영문,숫자,특수문자 포함 8자 이상)">
				</div>
				
				<div id="mLogin_text2">
					<span class="find_id" style="cursor:pointer;" onclick="member_find()">아이디,비밀번호 찾기 &gt;</span> 
				</div>
				
				<div id="mLogin_btnBox">
					<button type="submit" class="login" id="loginBtn">로그인</button>
<!-- 					<div class="separator"> -->
<!-- 						<span>----------------------------------------------또는-----------------------------------------------</span> -->
<!-- 					</div> -->
<!-- 					<div class="social_login_box"> -->
<!-- 						<button type="button" class="login" id="facebookLoginBtn"> -->
<!-- 							<i class="icon_facebook"></i>페이스북으로 로그인 -->
<!-- 						</button> -->
					
<!-- 						<button class="social-login" type="button" id="kakaoLoginBtn"> -->
<!-- 							<i class="icon kakao"></i>카카오 -->
<!-- 						</button>			 -->
<!-- 						<button class="social-login" type="button" id="naverLoginBtn"> -->
<!-- 							<i class="icon naver"></i>네이버 -->
<!-- 						</button> -->
<!-- 						<button class="social-login" type="button" id="googleLoginBtn"> -->
<!-- 							<i class="icon google"></i>구글 -->
<!-- 						</button> -->
<!-- 						<button class="social-login" type="button" id="twitterLoginBtn" -->
<!-- 							onclick="pageLoginByTwitter()"> -->
<!-- 							<i class="icon twitter"></i>트위터 -->
<!-- 						</button> -->
<!-- 					</div>			 -->
				</div>
				<div id="not_Movingmember">
					<hr class="my-hr1" />
					<span>아직 무빙 계정이 없나요? &nbsp;&nbsp;&nbsp;<a href="/moving.com/social/join">회원가입</a></span>
					<hr class="my-hr1" />
				</div>
			</section>
<!-- 		</div> -->

	</form>
</div>

<%@ include file="../include/footer.jsp"%>