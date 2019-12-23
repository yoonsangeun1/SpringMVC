<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/sns_header.jsp"%>
<%@ taglib prefix="c" 
            uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- 배경화면 전체 지정 -->
	<div id="SNS_Wrap">
		<!-- 오브젝트 항목 래핑 -->
		<div id="SNS_main_left">
			<!-- 좌측 메뉴 -->
			<div id="SNS_left_title">
				<div id="SNS_Profile_Name">
					<a href="profile">${id}</a>
				</div> 
				<img class="SNS_Profile_Picture" src="../images/member_profile.png"
					width="30px" height="30px" alt="">
			</div>
			<br />
			<ul id="SNS_ul1">
				<!-- 좌측 메뉴 생성 -->
				<li><a href="#">즐겨찾기</a></li>
				<li><a href="messenger">메신저</a></li>
				<li><a href="#">영상</a></li>
				<li><a href="#">페이지</a></li>
				<li><a href="#">그룹</a></li>
				<li><a href="#">이벤트</a></li>
				<li><a href="#">저장한 게시글</a></li>
			</ul>
		</div>
		<div id="SNS_main_mid">
			<!-- 중간 글쓰기, 글보기 -->
				<div id="mid_pad">
					<div id="mid_left">
						<textarea id="SNS_main_text" rows="14" cols="61"
							placeholder="오늘은 어떤 기분을 남기고 싶으신가요?"></textarea>
					</div>
					<div id="mid_right">
						<input type="submit" class="SNS_Buttons" value="작성" />
						<div class="SNS_File">
							<label for="SNS_Buttons_File">사진 올리기</label> <input type="file"
								class="SNS_Buttons_File">
						</div>
						<input type="reset" class="SNS_Buttons" value="전체 삭제" />
					</div>
				</div>
			<div id="mid_scrap">
				<ul id="SNS_Content_ul">
					<li>
						<div class="SNS_Content">
							<img class="SNS_Content_user_img" src="../images/member_profile.png" width="40" height="40"
								 alt="프로필 사진">
							<div class="SNS_Content_info">
								<div class="SNS_Content_Author">박진우</div>
								<div class="SNS_Content_Write_Time">1시간 전</div>
							</div>
							<input class="SNS_Option_Button" type="button" value="..."
								style="float: right;">
							<div>
								<img class="SNS_Content_Image" alt="사진" src="../images/sns_photo.gif">
							</div>
							<div class="SNS_Content_Cont">
								훈내폭발 #김래원 을 만날 시간🤗<br /> 오늘 밤 11시10분 가장 특별한 인터뷰❣<br /> SBS
								접속! 무비월드 채널 고정🤩<br /> ↓예매는 아래에서↓<br /> ✔CGV <a
									href="https://bit.ly/2mvBz2B">https://bit.ly/2mvBz2B</a><br />
								✔메가박스 <a href="https://bit.ly/2ms0dAV">https://bit.ly/2ms0dAV</a><br />
								✔씨네큐 <a href="https://bit.ly/2m7DUjI">https://bit.ly/2m7DUjI</a><br />

								#한국영화_박스오피스1위 #거침없는_현실로맨스<br /> #가장보통의연애 #절찬상영중
								<div class="SNS_Cont_Move">903명이 이 영화를 후원하여 302,445,180원이
									모였습니다!</div>
								<div class="SNS_Cont_Option">
									<div class="SNS_Cont_Option_Move">무브!</div>
									<div class="SNS_Cont_Option_Share">공유하기</div>
									<div class="SNS_Cont_Option_Funding">펀딩하기</div>
								</div>
							</div>
							<div class="SNS_Comment">
								<img class="SNS_Content_user_img SNS_Profile_Picture" src="../images/member_profile.png"
									width=30px height=30px alt="">
								<p>박진우</p>
								<p>귀엽네요 물론 사람이요</p>
								<br /> 
								<img class="SNS_Content_user_img SNS_Profile_Picture"
									src="../images/member_profile.png" width=30px height=30px
									alt="">
								<p>양용준</p>
								<p>믓지네</p>
								<br /> 
								<img class="SNS_Content_user_img SNS_Profile_Picture"
									src="../images/member_profile.png" width=30px height=30px
									alt="">
								<p>송현범</p>
								<p>트윅스가 춤도 출 줄 아네</p>
								<br />
								<div class="SNS_Comment_Write">
									<img class="SNS_Content_user_img SNS_Profile_Picture"
										src="../images/member_profile.png" 
										alt=""> <input class="SNS_Comment_Write_Chat"
										type="text"> <input class="SNS_Comment_Write_Button"
										type="button" value="작성">
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="SNS_Content">
							<img class="SNS_Content_user_img" src="../images/member_profile.png" width="40" height="40"
								 alt="프로필 사진">
							<div class="SNS_Content_info">
								<div class="SNS_Content_Author">박진우</div>
								<div class="SNS_Content_Write_Time">1시간 전</div>
							</div>
							<input class="SNS_Option_Button" type="button" value="..."
								style="float: right;">
							<div >
								<img class="SNS_Content_Image" alt="사진" src="../images/sns_photo14.jpg">
							</div>
							<div class="SNS_Content_Cont">
								고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해<br />
								고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해<br />
								고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해<br />
								고양이 너무 불쌍해<br />고양이 너무 불쌍해<br />
								고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해고양이 너무 불쌍해
								<div class="SNS_Cont_Move">392명이 좋아합니다!</div>
								<div class="SNS_Cont_Option">
									<div class="SNS_Cont_Option_Move">무브!</div>
									<div class="SNS_Cont_Option_Share">공유하기</div>
									<div class="SNS_Cont_Option_Funding">펀딩하기</div>
								</div>
							</div>
							<div class="SNS_Comment">
								<img class="SNS_Content_user_img" class="SNS_Profile_Picture" src="../images/member_profile.png"
									width=30px height=30px alt="">
								<p>박동수</p>
								<p>진짜 냥불쌍하네</p>
								<br /> <img class="SNS_Content_user_img" class="SNS_Profile_Picture"
									src="../images/member_profile.png" width=30px height=30px
									alt="">
								<p>양용준</p>
								<p>믓지네</p>
								<br /> <img class="SNS_Content_user_img" class="SNS_Profile_Picture"
									src="../images/member_profile.png" width=30px height=30px
									alt="">
								<p>홍채훈</p>
								<p>믓지네 밖에 할 줄 모르니?</p>
								<br />
								<div class="SNS_Comment_Write">
									<img class="SNS_Content_user_img" class="SNS_Profile_Picture" src="../images/member_profile.png" width=30px height=30px	alt=""> 
										<input class="SNS_Comment_Write_Chat" type="text"> 
										<input class="SNS_Comment_Write_Button"	type="button" value="작성">
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="SNS_Content">
							<img class="SNS_Content_user_img" src="../images/member_profile.png" width="40" height="40" alt="프로필 사진">
							<div class="SNS_Content_info">
								<div class="SNS_Content_Author">박진우</div>
								<div class="SNS_Content_Write_Time">1시간 전</div>
							</div>
							<input class="SNS_Option_Button" type="button" value="..."	style="float: right;">
							<div >
								<img class="SNS_Content_Image" alt="사진" src="../images/sns_photo15.jpg">
							</div>
							<div class="SNS_Content_Cont">
								헤-하고 웃고있는 모습을 보면<br/>
								이발소 아저씨가 생각납니다.<br/>
								하루종일 웃으며 저를 반겨주시면서<br/>
								치도리를 해주셨는데..<br/>
								멋진 추억공유합니다.<br/>
								쟁반노래방도 생각이 나네요.<br/>
								이히다리야<br/>
								내용채우기<br/>
								<div class="SNS_Cont_Move">92명이 좋아합니다!</div>
								<div class="SNS_Cont_Option">
									<div class="SNS_Cont_Option_Move">무브!</div>
									<div class="SNS_Cont_Option_Share">공유하기</div>
									<div class="SNS_Cont_Option_Funding">펀딩하기</div>
								</div>
							</div>
							<div class="SNS_Comment">
								<img class="SNS_Content_user_img" class="SNS_Profile_Picture" src="../images/member_profile.png"
									width=30px height=30px alt="">
								<p>윤상은</p>
								<p>세로드립ㅋㅋ</p>
								<br /> <img class="SNS_Content_user_img" class="SNS_Profile_Picture"
									src="../images/member_profile.png" width=30px height=30px
									alt="">
								<p>박동수</p>
								<p>고양이 머고</p>
								<br /> <img class="SNS_Content_user_img" class="SNS_Profile_Picture"
									src="../images/member_profile.png" width=30px height=30px
									alt="">
								<p>홍채훈</p>
								<p>고양이가 웃을줄도 아네</p>
								<br />
								<div class="SNS_Comment_Write">
									<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
										src="../images/member_profile.png" width=30px height=30px
										alt=""> <input class="SNS_Comment_Write_Chat"
										type="text"> <input class="SNS_Comment_Write_Button"
										type="button" value="작성">
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div id="SNS_main_rightWrap">		
		<div id="SNS_main_right">
			<!-- 우측 프로필, 뉴스, 기타 -->
			<div id="right_profile">
				<p>비슷한 장르 배우 추천</p>
				<br />
				<div id="right_profile_friends">
					<ul id="right_profile_friends_ul">
						<li ><img src="../images/sns_photo3.jpg">
							<p>베잌동수</p></li>
						<li ><img src="../images/sns_photo9.jpg">
							<p>양드래곤</p></li>
						<li ><img src="../images/sns_photo12.jpg">
							<p>송타이거</p></li>
						<li ><img src="../images/sns_photo6.jpg">
							<p>윤상은행</p></li>
						<li ><img src="../images/sns_photo7.jpg">
							<p>홍채인식</p></li>
						<li ><img src="../images/sns_photo7.jpg">
							<p>홍채인식</p></li>
						<li ><img src="../images/sns_photo7.jpg">
							<p>홍채인식</p></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="right_etc">
			<div id="SNS_right_title">
				<p>뉴스</p>
			</div>
			<ul id="SNS_ul2">
				<li><a href="">[속보]팀장 윤상은.. 박진우에게 팀장 양도..."감격"</a></li>
				<li><a href="">홍진호.. 뉴스라인 2번째 당첨.. 홍진호.. 뉴스라인 2번째 당첨..</a></li>
				<li><a href="">박진우 감독.. 영화 "자신있나" 매출 2조 달성</a></li>
				<li><a href="">아스날 또 "4번째"</a></li>
				<li><a href="">(대충 감동적인 뉴스)</a></li>
				<li><a href="">빨리 프로젝트 끝내고 싶다</a></li>
			</ul>
		</div>
		<div id="right_etc2">
			<div id="SNS_right_title">
				<p>추천 광고</p>
			</div>
			<ul id="SNS_ul2">
				<li><a href="">제주도 항공 특가 편도 140만원 {즉시보기}</a></li>
				<li><a href="">홍진호.. 광고까지 2번째 당첨.. 홍진호.. 광고까지 2번째 당첨..</a></li>
				<li><a href="">5천원만 투자하시면 100원으로 돌려드립니다!</a></li>
				<li><a href="">♚♚히어로즈 오브 더 스☆톰♚♚가입시$$전원 카드팩☜☜</a></li>
				<li><a href="">월 4만원에 맥북을 사는 흑우가 있다?!</a></li>
				<li><a href="">2차 프로젝트에 쏟은 기간.."2시간" 보기만 해도 10만원!(이 부과됩니다.)</a></li>
			</ul>
		</div>
	</div>
	</div>

<%@ include file="../include/sns_footer.jsp"%>