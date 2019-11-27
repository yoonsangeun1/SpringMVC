<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div id="mJoin_wrap">
	<form method="post" action="#" onclick="#">
		<div id="mJoin_form">
			<section>
				<div id="am_Movingmember">
					<hr class="my-hr1" />
					<span>무빙 계정이 있으신가요? &nbsp;&nbsp;&nbsp;<a
						href="member_login.jsp">로그인</a></span>
					<hr class="my-hr1" />
				</div>
				<table id="mJoin_table" border="">
					<tr>
						<td colspan="2">
							<h2>회원가입</h2>
						</td>
					</tr>
					<tr>
						<th colspan="2"><input placeholder="이름" size="30"
							class="input_text" /></th>
					</tr>
					<tr>
						<th colspan="2"><input type="email" placeholder="이메일 아이디"
							size="30" class="input_text" /></th>
					</tr>
					<tr>
						<th colspan="2"><input type="password"
							placeholder="비밀번호(영문, 숫자, 특수문자 포함 8자 이상)" size="30"
							class="input_text" /></th>
					</tr>
					<tr>
						<th colspan="2"><input type="password" placeholder="비밀번호 재입력"
							size="30" class="input_text" /></th>
					</tr>
					<tr>
						<th colspan="2"><span><b>선호 장르 선택(최대 3개 선택 가능):</b></span> <input
							type="checkbox" name="genre_like" value="adventure">어드벤쳐
							<input type="checkbox" name="genre_like" value="documentary">다큐멘터리
							<input type="checkbox" name="genre_like" value="history">시대극
							<input type="checkbox" name="genre_like" value="thriller">스릴러
							<input type="checkbox" name="genre_like" value="fantasy">판타지
							<input type="checkbox" name="genre_like" value="romance">로맨스
							<input type="checkbox" name="genre_like" value="comedy">코미디
							<input type="checkbox" name="genre_like" value="animation">애니메이션
							<input type="checkbox" name="genre_like" value="etc_like">기타
						</th>
					</tr>
					<tr>
						<td colspan="2" id="remember_me"><input type="checkbox"
							id="save_id" class="save_id" /><span>Send me a weekly mix
								of handpicked projects, plus occasional Kickstarter news</span></td>
					</tr>
					<tr>
						<td colspan="2" id="remember_me"><input type="checkbox"
							id="save_id" class="save_id" /><span>Contact me about
								participating in Kickstarter research</span></td>
					</tr>
					<tr>
						<th colspan="2">
							<button type="submit" class="join" id="joinBtn">회원가입</button>
						</th>
					</tr>
					<tr>
						<td colspan="2">By signing up, you agree to our terms of use,
							privacy policy, and cookie policy. <br /> <a href="#">Readmore</a>
						</td>
					</tr>
					<tr>
						<th colspan="2">
							<div class="text-strikethru">
								<div class="line"></div>
								<div class="text">or</div>
							</div>
						</th>
					</tr>

					<!-- <div class="social-join"></div> -->
					<tr>
						<th colspan="2">
							<button type="button" class="join" id="facebookJoinBtn">
								<i class="icon_facebook"></i>페이스북으로 회원가입
							</button>
						</th>
					</tr>
					<tr>
						<th>
							<button class="social-join" type="button" id="kakaoJoinBtn">
								<i class="icon_kakao"></i>카카오
							</button>
							<button class="social-join" type="button" id="naverJoinBtn">
								<i class="icon_naver"></i>네이버
							</button>
							<button class="social-join" type="button" id="googleJoinBtn">
								<i class="icon google color"></i>구글
							</button>
						</th>
					</tr>

				</table>

			</section>
		</div>

	</form>
</div>

<%@ include file="../include/footer.jsp"%>