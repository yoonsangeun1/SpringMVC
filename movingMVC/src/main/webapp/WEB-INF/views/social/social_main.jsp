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
				<c:if test="${empty s_pro.nickname}">
					<a href="profile?id=${id}">비회원</a>
				</c:if>
				<c:if test="${!empty s_pro.nickname}">
					<a href="profile?id=${id}">${s_pro.nickname}</a>
				</c:if>
				</div> 
				<c:if test="${!empty s_pro.profileImagePath}">
					<img class="SNS_Profile_Picture" src="${s_pro.profileImagePath}"
						width="30px" height="30px" alt="" onclick="location='/moving.com/social/profile?id='+${id}">
				</c:if>
				<c:if test="${empty s_pro.profileImagePath}">
					<img class="SNS_Profile_Picture" src="../images/member_profile.png"
						width="30px" height="30px" alt="" onclick="location='/moving.com/social/profile?id='+${id}">
				</c:if>
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
			<c:if test="${!empty s_pro.id}">
			<form action="post_write_ok/0" enctype="mutipart/form-data" method="post" name="timeLineWriter">
				<div id="mid_pad">
					<div id="SNS_Profile_Upload_Top">
						<ul id="SNS_None_Ul"></ul>
					</div>
					<div id="mid_left">
						<textarea name="content" id="SNS_main_text" rows="14" cols="61"
							placeholder="오늘은 어떤 기분을 남기고 싶으신가요?"></textarea>
					</div>
					<div id="mid_right">
						<input type="submit" class="SNS_Buttons" value="작성" />
						<div class="SNS_File">
							<label for="File_First">사진 올리기</label> 
								<input type="file" id="File_First" class="SNS_Buttons_File" accept=".jpg,.jpeg,.png,.gif,.bmp" onchange="loadImage(this)" name="photoGet" multiple/>
						</div>
						<input type="reset" class="SNS_Buttons" value="전체 삭제" />
					</div>
				</div>
				</form>
			</c:if>
				<%-- 
				<form action="post_write_ok/${id}" enctype="mutipart/form-data" method="post" name="timeLineWriter">
					<div id="SNS_Profile_Writer">
						<div id="SNS_Profile_Upload_Top">
							<ul id="SNS_None_Ul"></ul>
						</div>
						<div id="SNS_Profile_Upload_Roof" onclick="goTimeLine()"></div>
						<div id="SNS_Profile_Mid_Left">
							<textarea name="content" id="SNS_main_text" rows="15" cols="54" placeholder="오늘은 어떤 기분을 남기고 싶으신가요?"></textarea>
						</div>
						<div id="mid_right">
							<input type="submit" class="SNS_Buttons" value="작성" />
							<div class="SNS_File">
								<label for="File_First">사진 올리기</label> 
								<input type="file" id="File_First" class="SNS_Buttons_File" accept=".jpg,.jpeg,.png,.gif,.bmp" onchange="loadImage(this)" name="photoGet" multiple/>
							</div>
							<input type="reset" class="SNS_Buttons" value="전체 삭제" onclick="removeAllLi()"/>
						</div>
					</div>
				</form> --%>
				
			<div id="mid_scrap">
				<c:if test="${empty s_pro.id}">
					<p style="width: 100%;height: 700px;font-size: 15px;text-align: center;line-height: 700px;">
						SNS을 이용하기 위해서는 등록이 필요합니다!
					</p>
				</c:if>
				<ul id="SNS_Content_ul">
					<c:forEach var="s" items="${s_post}">
					<li>
						<div class="SNS_Content">
							<div style="height: 40px;">
								<div class="SNS_Info_Wrap">
								<c:if test="${empty s.socialProfileVO.profileImagePath}">
									<img class="SNS_Content_user_img" src="../images/member_profile.png" width="40" height="40" alt=""
										 alt="프로필 사진">
								</c:if>
								<c:if test="${!empty s.socialProfileVO.profileImagePath}">
									<img class="SNS_Content_user_img" src="${s.socialProfileVO.profileImagePath}" width="40" height="40" alt=""
										 alt="프로필 사진">
								</c:if>
								<div class="SNS_Content_info">
									<div class="SNS_Content_Author">${s.socialProfileVO.nickname}</div>
									<c:set var="date" value="${s.registerDate}"/>
									<div class="SNS_Content_Write_Time">
										<script>/* 시간 차 계산 후 출력 */
												var writeTime = "${date}";
												var nowTime = new Date();
	
												var yyyy = writeTime.substr(0, 4);
												var mm = writeTime.substr(5, 2);
												var dd = writeTime.substr(8, 2);
												var hh = writeTime.substr(11, 2);
												var mi = writeTime.substr(14, 2);
	
												var copyTime = new Date(yyyy,mm - 1, dd, hh, mi);
												var hours = Math.abs(nowTime- copyTime) / 36e5;
												
												hours = Math.floor(hours);
												
												if (hours<=1){
													hours = "조금 전";
												}
												else if (hours<=24){
													hours = hours + "시간 전";
												}
												else if (24 < hours && hours <= 48){
													hours = "하루 전";
												}
												else if (hours>=48 && hours <8760){
													hours = (copyTime.getMonth()+1)+"월"
													+		copyTime.getDate()+"일 ";
												}
												else if (hours>=8760)
												{
													hours = copyTime.getFullYear()+"년"
													+		(copyTime.getMonth()+1)+"월"
													+		copyTime.getDate()+"일 ";
												}
												document.write(hours);
											</script>
									</div>
									</div>
								</div>
								<input class="SNS_Option_Button" type="button" value="..."
								style="float: right;">
							</div>
							<div id="SNS_Content_Image_DIV">
								<img class="SNS_Content_Image" alt="사진" src="../images/sns_photo.gif">
							</div>
							<div class="SNS_Content_Cont">
								${s.content}
								<div class="SNS_Cont_Move">0명이 이 영화를 후원하여 0원이 모였습니다!</div>
								<div class="SNS_Cont_Option">
									<div class="SNS_Cont_Option_Move">무브!</div>
									<div class="SNS_Cont_Option_Share">공유하기</div>
									<div class="SNS_Cont_Option_Funding">펀딩하기</div>
								</div>
							</div>
							<div class="SNS_Comment">
							<c:forEach var="s_reply" items="${s.mCommentVO}">
								<c:if test="${!empty s_reply}">
								<ul id="SNS_None_Ul_Main">
									<li>
										<img class="SNS_Content_user_img SNS_Profile_Picture" src="${s_reply.socialProfileVO.profileImagePath}"
											width=30px height=30px alt="">
										<c:if test="${!empty s_reply.socialProfileVO.nickname}">
											<p>${s_reply.socialProfileVO.nickname}</p>
										</c:if>
										<c:if test="${empty s_reply.socialProfileVO.nickname}">
											<p>탈퇴한 회원</p>
										</c:if>
										<p>${s_reply.content}</p>
										<br />
									</li> 
								</ul>
								</c:if>
							</c:forEach>
								<c:if test="${empty s_reply}">
										<div class="SNS_Comment_None">댓글이 아직 없습니다. 댓글을 작성해보세요 </div>
								</c:if>
								<div class="SNS_Comment_Write">
									<img class="SNS_Content_user_img SNS_Profile_Picture"
										src="${s.socialProfileVO.profileImagePath}" 
										alt=""> 
										<input class="SNS_Comment_Write_Chat" type="text">
										<input class="SNS_Comment_Write_Button" type="button" value="작성">
								</div>
							</div>
						</div>
					</li>
					</c:forEach>
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