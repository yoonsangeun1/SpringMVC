<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>

<div id="mPsetting_wrap">
	<form id="mPsetting_form" method="post" action="member_profileSetting_ok" onsubmit="return mPSetting_check();" enctype="multipart/form-data">
		<section>
			<div id="mPsetting_text">
				<h2>프로필 정보 설정</h2>
			</div>
			<div id="mPsetting_image_box">
				<h3>프로필 사진</h3>
				<input name="nickname" value="${nickname}" style="display : none;">
				<div id="profileimg-wrap">
					<div id="resultProfileImg">
						<div id="image_upload" class="aaa" >
						
						<img id="img"  
							<c:if test="${profile_image_url == 'default'}">
								src="${pageContext.request.contextPath}/images/member_profile.png"
						  	</c:if>
						  	<c:if test="${profile_image_url != 'default'}">
						  		src="${profile_image_url}"
						  	</c:if>
						 />
						
						</div>
					</div>
					 
					<p id="setting_profileimg">
					<c:if test="${profile_image_url == 'default'}">
						<button type="button" id="btn_updatePhoto" class="aaa button_cb3a9eb button_f12 button_r4 vertical group border">프로필 사진 등록</button>
					</c:if>
					<c:if test="${profile_image_url != 'default'}">
						<button type="button" id="btn_updatePhoto" class="aaa button_cb3a9eb button_f12 button_r4 vertical group border">프로필 사진 변경</button>
					</c:if>
						<button type="button" id="btn_deletePhoto" class="btn_deletePhoto button_cb3a9eb button_f12 button_r4 vertical group border">삭제</button>
						<input type="file" id="profile_file" name="profile_file" style="display:none;"/> 
					</p>
					
					<script>
					$(function(){
						$('#profileimg-wrap').on('click','.aaa',function() {
							document.all.profile_file.click();
						});
					})
					</script>
					</div>
			</div>
			<div id="mPsetting_text2">
				<h3>선호장르</h3>
				<p class="genre_text">회원님께서 가입시 선택하신 선호장르입니다.</p>
			</div>
			<div id="check_genrelike_wrap">
				<ul>
					<li>
						<input type="checkbox" class="genre_check" name="edit_genre_like" value="history" onclick="ModifyCountChecked(this)" <c:if test="${genre01 == 'history' || genre02 == 'history' || genre03 == 'history'}">checked</c:if>>  <span class="genre_name">시대극</span>
					</li>
					<li>
						<input type="checkbox" class="genre_check" name="edit_genre_like" value="documentary" onclick="ModifyCountChecked(this)" <c:if test="${genre01 == 'documentary' || genre02 == 'documentary' || genre03 == 'documentary'}">checked</c:if>><span class="genre_name">다큐멘터리</span>						
					</li>
					<li>
						<input type="checkbox" class="genre_check" name="edit_genre_like" value="adventure" onclick="ModifyCountChecked(this)" <c:if test="${genre01 == 'adventure' || genre02 == 'adventure' || genre03 == 'adventure'}">checked</c:if>><span class="genre_name">어드벤쳐</span> <br />
					</li>						
					<li>
						<input type="checkbox" class="genre_check" name="edit_genre_like" value="thriller" onclick="ModifyCountChecked(this)" <c:if test="${genre01 == 'thriller' || genre02 == 'thriller' || genre03 == 'thriller'}">checked</c:if>><span class="genre_name">스릴러</span>
					</li>
					<li>
						<input type="checkbox" class="genre_check" name="edit_genre_like" value="fantasy" onclick="ModifyCountChecked(this)" <c:if test="${genre01 == 'fantasy' || genre02 == 'fantasy' || genre03 == 'fantasy'}">checked</c:if>><span class="genre_name">판타지</span>
					</li>
					<li>
						<input type="checkbox" class="genre_check" name="edit_genre_like" value="romance" onclick="ModifyCountChecked(this)" <c:if test="${genre01 == 'romance' || genre02 == 'romance' || genre03 == 'romance'}">checked</c:if>><span class="genre_name">로맨스</span> <br />
					</li>
					<li>
						<input type="checkbox" class="genre_check" name="edit_genre_like" value="comedy" onclick="ModifyCountChecked(this)" <c:if test="${genre01 == 'comedy' || genre02 == 'comedy' || genre03 == 'comedy'}">checked</c:if>><span class="genre_name">코미디</span>
					</li>
					<li>
						<input type="checkbox" class="genre_check" name="edit_genre_like" value="animation" onclick="ModifyCountChecked(this)" <c:if test="${genre01 == 'animation' || genre02 == 'animation' || genre03 == 'animation'}">checked</c:if>><span class="genre_name">애니메이션</span>
					</li>
					<li>
						<input type="checkbox" class="genre_check" name="edit_genre_like" value="etc_like" onclick="ModifyCountChecked(this)" <c:if test="${genre01 == 'etc_like' || genre02 == 'etc_like' || genre03 == 'etc_like'}">checked</c:if>><span class="genre_name">기타</span>
					</li>
				</ul>
			</div>	
			
			<div id="mPsetting_button_box">
				<button type="submit" id="mPsetting_btn">정보 수정</button>
				<button type="button" id="mPsetting_cancel_btn" onclick="location='./member_infosetting';">돌아가기</button>
			</div>
		</section>
	</form>
</div>