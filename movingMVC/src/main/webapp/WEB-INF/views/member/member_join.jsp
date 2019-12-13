<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" 
    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>

<div id="mJoin_wrap">
	<form method="post" action="member_join_ok" onsubmit="return join_check();">
		<div id="mJoin_form">
			<section>
				<div class="am_Movingmember">
					<hr class="my-hr1" />
					<span>무빙 계정이 있으신가요? &nbsp;&nbsp;&nbsp;<a
						href="login">로그인</a></span>
					<hr class="my-hr1" />
				</div>
				
				<h2 class="mJoin_text">회원가입</h2>
					
					<div id="email_field" class="email_field">
						<div class="mv_email">
							<input type="email" id="email" name="email" class="text_input" placeholder="이메일 계정"> 
							<button type="button" class="btnCheckEmail" id="btnCheckEmail" onclick="emailTokenInput();">인증하기</button>
					 
							<div id="emailCheck_message" style="display:none">
								<span id="emailCheck"></span>
							</div>
							<div class="emailToken" style="display:none">
								<div class="emailTokenInput">
									<input id="email_check" name="email_check" class="text_input"  placeholder="인증번호 입력">
									<input type="button" id="btnCheckToken" name="btnCheckToken" class="btnCheckToken"  value="인증">
								</div>
							</div>
						</div>
					</div>
					<div id="info_field">
						<div id="info_name_nick">
							<input name="name" id="name" class="text_infoInput" placeholder="이름">
							<input name="nickname" id="nickname" class="text_infoNickInput" placeholder="닉네임">
							<br/>
							<input type="button" value="중복확인" class="nickCheckBtn" onclick="nick_check();">
						</div>
						<div id="nickcheck_message">
							<span id="nickcheck"></span>
						</div>
						
							<input type="password" name="password" id="password" class="text_infoInput" placeholder="비밀번호">
							<input type="password" name="password2" id="password2" class="text_infoInput" placeholder="비밀번호 확인">	
							
						<div id="pwdCheck_message">
							<span id="pwdcheck"></span>
						</div>
						<div id="phone_box">
						<span style="font:bold 15px 'lucida sans', 'trebuchet MS', 'Tahoma'; color:gray;">&nbsp;휴대폰 번호</span>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<select name="phone01" id="phone01" class="input_box" style="width:90px; height:51px;
						margin:5px auto; padding:1px 0px; font:bold 15px 'lucida sans', 'trebuchet MS', 'Tahoma'; color:gray;" 
						onchange="domain_list();">
     					<c:forEach var="p" items="${phonelist}">
      						<option value="${p}">${p}</option>
     					</c:forEach>
     					</select>
     					&nbsp;-&nbsp;
     					<input name="phone02" id="phone02" 
     					 maxlength="4" class="input_box" style="width:86px; height:45px;
						margin:5px auto; padding:1px 0px; font:bold 15px 'lucida sans', 'trebuchet MS', 'Tahoma'; color:gray;" />
						&nbsp;-&nbsp;
						<input name="phone03" id="phone03" 
						 maxlength="4" class="input_box" style="width:86px; height:45px;
						margin:5px auto; padding:1px 0px; font:bold 15px 'lucida sans', 'trebuchet MS', 'Tahoma'; color:gray;"/>
						

						<input type="hidden" name="phone" id="phone" value="${phone}">
						</div>
					</div>
					
					<div id="genreCheck_field">
					<span style="font-size:20px;"><b>선호 장르 선택(최대 3개 선택 가능):</b></span><br /><br />
						 	<input type="checkbox" class="genre_check" name="genre_like" value="history" onclick="CountChecked(this)"><span class="genre_name">시대극</span>
							<input type="checkbox" class="genre_check" name="genre_like" value="documentary" onclick="CountChecked(this)"><span class="genre_name">다큐멘터리</span>
							<input type="checkbox" class="genre_check" name="genre_like" value="adventure" onclick="CountChecked(this)"><span class="genre_name">어드벤쳐</span> <br />
							<input type="checkbox" class="genre_check" name="genre_like" value="thriller" onclick="CountChecked(this)"><span class="genre_name">스릴러</span>
							<input type="checkbox" class="genre_check" name="genre_like" value="fantasy" onclick="CountChecked(this)"><span class="genre_name">판타지</span>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
							<input type="checkbox" class="genre_check" name="genre_like" value="romance" onclick="CountChecked(this)"><span class="genre_name">로맨스</span> <br />
							<input type="checkbox" class="genre_check" name="genre_like" value="comedy" onclick="CountChecked(this)"><span class="genre_name">코미디</span>
							<input type="checkbox" class="genre_check" name="genre_like" value="animation" onclick="CountChecked(this)"><span class="genre_name">애니메이션</span>
							<input type="checkbox" class="genre_check" name="genre_like" value="etc_like" onclick="CountChecked(this)"><span class="genre_name">기타</span>
					</div>
					
					<div id="joinBtn_field">
						<div class="joinBtn1">
							<input type="submit" class="join" id="joinBtn" value="회원가입">
						</div>
						
<!-- 						<div class="separator_join"> -->
<!-- 						<span>----------------------------------------------또는-----------------------------------------------</span> -->
<!-- 						</div> -->
						
<!-- 						<div class="joinBtn2"> -->
<!-- 								<button type="button" class="join" id="facebookJoinBtn"> -->
<!-- 								<i class="icon_facebook"></i>페이스북으로 회원가입 -->
<!-- 							</button> -->
<!-- 							<button class="social-join" type="button" id="kakaoJoinBtn"> -->
<!-- 								카카오 -->
<!-- 							</button> -->
<!-- 							<button class="social-join" type="button" id="naverJoinBtn"> -->
<!-- 								네이버 -->
<!-- 							</button> -->
<!-- 							<button class="social-join" type="button" id="googleJoinBtn"> -->
<!-- 								구글 -->
<!-- 							</button> -->
<!-- 							<button class="social-join" type="button" id="twitterJoinBtn"> -->
<!-- 								트위터 -->
<!-- 							</button> -->
<!-- 						</div> -->
					</div>
					</section>
			</div>
	</form>
</div>

<%@ include file="../include/footer.jsp"%>