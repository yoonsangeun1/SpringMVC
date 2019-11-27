<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div id="mLogin_wrap">
	<form method="post" action="#" onclick="#" id="mLogin_form">
		<div id="mLogin_form">
			<section>
				<table id="mLogin_table" border="">
					<tr>
						<td colspan="2">
							<h2>로그인</h2>
						</td>
					</tr>
					<tr>
						<th colspan="2"><input type="email" placeholder="이메일 아이디"
							size="30" class="input_text" /></th>
					</tr>
					<tr>
						<th colspan="2"><input type="password"
							placeholder="비밀번호(영문, 숫자, 특수문자 포함 8자 이상)" size="30" class="input_text" /></th>
					</tr>
					<tr>
						<td id="remember_me" valign="bottom"><input type="checkbox"
							id="save_id" class="save_id" /><span>아이디 저장</span></td>
						<td id="find_id" valign="bottom"><a href="#">아이디, 비밀번호 찾기
								&gt;</a></td>
					<tr>
						<th colspan="2">
							<button type="submit" class="login" id="loginBtn">로그인</button>
						</th>
					</tr>
					<tr>
						<th colspan="2" class="separator"><span>----------------------------------------------또는-----------------------------------------------</span></th>
					</tr>

					<!-- <div class="social-login"></div> -->
					<tr>
						<th colspan="2">
							<button type="button" class="login" id="facebookLoginBtn">
								<i class="icon_facebook"></i>페이스북으로 로그인
							</button>
						</th>
					</tr>
					<tr>
						<th>
							<button class="social-login" type="button" id="kakaoLoginBtn">
								<i class="icon_kakao"></i>카카오
							</button>
						</th>
						<th>
							<button class="social-login" type="button" id="naverLoginBtn">
								<i class="icon_naver"></i>네이버
							</button>
						</th>
					</tr>
					<tr>
						<th>
							<button class="social-login" type="button" id="googleLoginBtn">
								<i class="icon google color"></i>구글
							</button>
						</th>
						<th>
							<button class="social-login" type="button" id="twitterLoginBtn"
								onclick="pageLoginByTwitter()">
								<i class="icon twitter"></i>트위터
							</button>
						</th>
					</tr>

				</table>
				<div id="not_Movingmember">
					<hr class="my-hr1" />
					<span>아직 무빙 계정이 없나요? &nbsp;&nbsp;&nbsp;<a href="member_join.jsp">회원가입</a></span>
					<hr class="my-hr1" />
				</div>
			</section>
		</div>

	</form>
</div>

<%@ include file="../include/footer.jsp"%>