<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../include/admin_header.jsp"%>
<%-- 영화 업로드 페이지 구성 --%>
<div id="aMovie_uploadWrap">
	<div class="h2div">
		<h2>영상 게시글 수정</h2>
	</div>
	<%-- 메뉴 탭 --%>
	<div id="aMovie_uploadTab" class="container">
		<ul class="tabs">
			<li class="tab on" data-tab="aMovie_upload">영화 등록</li>
			<li class="tab" data-tab="aMovie_upload2">티저 등록</li>
		</ul>
	<%-- 업로드 화면 구성 --%>
	<div id="aMovie_upload" class="tab-content on">
		
		<form method="post" action="/moving.com/admin/movie/movie_edit_ok" onsubmit="return movie_check();">
			<input type="hidden" name="page" value="${page }" />
			<input type="hidden" name="id" value="${vp.id }" />
		
			<%-- 업로드 창 중앙 div --%>
			<div id="aMUploadCenter">
				<table border="1" id="aMUpload_table" >

					<%-- 카테고리 콤보박스 --%>
					<tr>
						<th>감독</th>
						<td>
						<input name="director" id="aMUploadC_director" value="${vp.director }" />
						&nbsp;&nbsp;&nbsp;출연진&nbsp;
						<input name="actor" id="aMUploadC_actor" size="30" value="${vp.actor }" />
						&nbsp;&nbsp;&nbsp;시대배경&nbsp;
						<input name="eraBackground" id="aMUploadC_background" size="18" value="${vp.eraBackground }" />
						</td>
					</tr>
					<tr>
						<th class="thName">장르</th>
						<td class="tdName">
							<div id="aMUploadC_combo" class="select">
								<select id="aMUploadC_genre" name="codeNo" class="combo">
									<option value="30001"
									<c:if test="${vp.codeNo==30001 }"> ${'selected' }</c:if>>선택하세요.</option>
									<option value="3000101"
									<c:if test="${vp.codeNo==3000101 }"> ${'selected' }</c:if>>범죄/스릴러</option>
									<option value="3000102"
									<c:if test="${vp.codeNo==3000102 }"> ${'selected' }</c:if>>액션/어드벤쳐</option>
									<option value="3000103"
									<c:if test="${vp.codeNo==3000103 }"> ${'selected' }</c:if>>다큐/드라마/청춘</option>
									<option value="3000104"
									<c:if test="${vp.codeNo==3000104 }"> ${'selected' }</c:if>>역사/시대극</option>
									<option value="3000105"
									<c:if test="${vp.codeNo==3000105 }"> ${'selected' }</c:if>>판타지/SF</option>
									<option value="3000106"
									<c:if test="${vp.codeNo==3000106 }"> ${'selected' }</c:if>>멜로/로맨스</option>
									<option value="3000107"
									<c:if test="${vp.codeNo==3000107 }"> ${'selected' }</c:if>>코미디</option>
									<option value="3000108"
									<c:if test="${vp.codeNo==3000108 }"> ${'selected' }</c:if>>애니메이션</option>
									<option value="3000109"
									<c:if test="${vp.codeNo==3000109 }"> ${'selected' }</c:if>>기타</option>
								</select>
								&nbsp;&nbsp;&nbsp;상영등급&nbsp;
								<select id="aMUploadC_rating" name="rate" class="combo">
									<option value="null"
									<c:if test="${rate==null }"> ${'selected' }</c:if>>선택하세요.</option>
									<option value="g"
									<c:if test="${rate==g }"> ${'selected' }</c:if>>전체 관람가</option>
									<option value="pg-13"
									<c:if test="${rate==pg-13 }"> ${'selected' }</c:if>>12세 이상 관람가</option>
									<option value="r"
									<c:if test="${rate==r }"> ${'selected' }</c:if>>15세 이상 관람가</option>
									<option value="nc-17"
									<c:if test="${rate==nc-17 }"> ${'selected' }</c:if>>청소년 관람불가</option>
								</select>
								&nbsp;&nbsp;&nbsp;상영시간&nbsp;
								<input type="number" name="videoLength" class="time" id="aMUploadC_runningTime"
									value="${vp.videoLength }"/>분
							</div>
							
						</td>
					</tr>
					
					
					<tr>
						<th>제목</th>
						<td>
							<%-- 제목 입력 --%>
							<div id="aMUploadC_title">

								<input type="text" name="titleKorean" class="korean title"
									id="aMUploadC_titleText" value="${vp.titleKorean }"/>
								<input type="text" name="titleEnglish" class="english title"
									id="aMUploadC_titleText2" value="${vp.titleEnglish }"/>
								<input type="date" name="releaseDate" class="year"
									id="aMUploadC_titleText3" value="${fn:substring(vp.releaseDate,0,10)}"/>
							</div>
						</td>
					</tr>
					<tr>
						<th>줄거리</th>
						<td>
							<%-- 줄거리 입력 --%>
							<div id="aMUploadC_cont">
								<textarea name="content" id="aMUploadC_contText" class="txtbox content"
									placeholder="내용을 입력하세요." rows="22" cols="85"  >${vp.content }</textarea>
							</div>
						</td>
					</tr>
					<tr>
					
						<%-- 동영상 url or 파일명 --%>
						<td style="text-align: center;">영상 파일 경로</td>
						<td><input name="videoFilePath" id="aMUploadR_url" size="50" value="${vp.videoFilePath }"/></td>
					</tr>
				</table>
				
			</div>
			<%-- 업로드 창 오른쪽 div --%>
			<div id="aMUploadRight" style="vertical-align: middle;">
				영상 : <iframe width="200" height="130" src="${vp.videoFilePath }" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<%-- 취소 버튼 --%>
			<div id="aMUploadR_cancelBtn">
				<button type="button" class="button upCancel">취소</button>
			</div>
			<%-- 수정 버튼 --%>
			<div id="aMUploadR_uploadBtn">
				<button type="submit" class="button">수정</button>
			</div>
		</form>
	</div>
	
	<%-- 티저 업로드 화면 구성 --%>
	<div id="aMovie_upload2" class="tab-content">

		<form method="post" action="/moving.com/admin/movie/teaser_edit_ok" onsubmit="return teaser_check();">
			<input type="hidden" name="page" value="${page }" />
			<input type="hidden" name="id" value="${vp.id }" />
			<%-- 업로드 창 중앙 div --%>
			<div id="aMUploadCenter">
				<table border="1" id="aMUpload_table">

					<%-- 카테고리 콤보박스 --%>
					<tr>
						<th>감독</th>
						<td>
							<input name="director" id="aMUploadC_directorT" value="${vp.director }" />
						</td>
					</tr>
					<tr>
						<th>장르</th>
						<td>
							<div id="aMUploadC_combo">
								<select id="aMUploadC_genreT" name="codeNo" class="combo">
									<option value="30002"
									<c:if test="${vp.codeNo==30002 }"> ${'selected' }</c:if>>선택하세요.</option>
									<option value="3000201"
									<c:if test="${vp.codeNo==3000201 }"> ${'selected' }</c:if>>범죄/스릴러</option>
									<option value="3000202"
									<c:if test="${vp.codeNo==3000202 }"> ${'selected' }</c:if>>액션/어드벤쳐</option>
									<option value="3000203"
									<c:if test="${vp.codeNo==3000203 }"> ${'selected' }</c:if>>다큐/드라마/청춘</option>
									<option value="3000204"
									<c:if test="${vp.codeNo==3000204 }"> ${'selected' }</c:if>>역사/시대극</option>
									<option value="3000205"
									<c:if test="${vp.codeNo==3000205 }"> ${'selected' }</c:if>>판타지/SF</option>
									<option value="3000206"
									<c:if test="${vp.codeNo==3000206 }"> ${'selected' }</c:if>>멜로/로맨스</option>
									<option value="3000207"
									<c:if test="${vp.codeNo==3000207 }"> ${'selected' }</c:if>>코미디</option>
									<option value="3000208"
									<c:if test="${vp.codeNo==3000208 }"> ${'selected' }</c:if>>애니메이션</option>
									<option value="3000209"
									<c:if test="${vp.codeNo==3000209 }"> ${'selected' }</c:if>>기타</option>
								</select>
								&nbsp;&nbsp;&nbsp;상영등급&nbsp;
								<select id="aMUploadC_ratingT" name="rate" class="combo" >
									<option value="null"
									<c:if test="${rate==null }"> ${'selected' }</c:if>>선택하세요.</option>
									<option value="g"
									<c:if test="${rate==g }"> ${'selected' }</c:if>>전체 관람가</option>
									<option value="pg-13"
									<c:if test="${rate==pg-13 }"> ${'selected' }</c:if>>12세 이상 관람가</option>
									<option value="r"
									<c:if test="${rate==r }"> ${'selected' }</c:if>>15세 이상 관람가</option>
									<option value="nc-17"
									<c:if test="${rate==nc-17 }"> ${'selected' }</c:if>>청소년 관람불가</option>
								</select>
							</div>
						</td>
					</tr>
					
					
					<tr>
						<th>제목</th>
						<td>
							<%-- 제목 입력 --%>
							<div id="aMUploadC_title">

								<input type="text" name="titleKorean" class="korean title"
									id="aMUploadC_titleTextT" value="${vp.titleKorean }" />
								<input type="text" name="titleEnglish" class="english title"
									id="aMUploadC_titleTextT2" value="${vp.titleEnglish }" />
								<input type="date" name="releaseDate" class="year"
									id="aMUploadC_titleTextT3" value="${fn:substring(vp.releaseDate,0,10)}" />
							</div>
						</td>
					</tr>
					<tr>
						<th>줄거리</th>
						<td>
							<%-- 줄거리 입력 --%>
							<div id="aMUploadC_cont">
								<textarea name="content" id="aMUploadC_contTextT" class="txtbox content"
									placeholder="내용을 입력하세요." rows="22" cols="85" >${vp.content }</textarea>
							</div>
						</td>
					</tr>
					<tr>
						<%-- 동영상 url or 파일명 --%>
						<td style="text-align: center;">영상 파일 경로</td>
						<td><input name="videoFilePath" id="aMUploadR_url" size="50" value="${vp.videoFilePath }" /></td>
					</tr>
				</table>
			</div>
			<%-- 업로드 창 오른쪽 div --%>
			<div id="aMUploadRight" style="vertical-align: middle;">
				영상 : <iframe width="200" height="130" src="${vp.videoFilePath }" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<%-- 취소 버튼 --%>
			<div id="aMUploadR_cancelBtn">
				<button type="button" class="button upCancel">취소</button>
			</div>
			<%-- 업로드 버튼 --%>
			<div id="aMUploadR_uploadBtn">
				<button type="submit" class="button">수정</button>
			</div>
		</form>
	</div>
	</div>
</div>
<script>
	$(function(){
		$('.upCancel').click(function(){
			if(confirm('변경사항이 저장되지 않았습니다. 그래도 목록으로 나가시겠습니까?')){
				location.href="/moving.com/admin/movie/movie_cont?id=${vp.id}&page=${page}&findField=${findField}&findName=${findName}";
			}
		});
	});
</script>
<%@ include file="../include/admin_footer.jsp"%>