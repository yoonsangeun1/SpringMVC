<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/admin_header.jsp"%>
<%-- 영화 업로드 페이지 구성 --%>
<div id="aMovie_uploadWrap">
	<div class="h2div">
		<h2>동영상 업로드</h2>
	</div>
	<%-- 메뉴 탭 --%>
	<div id="aMovie_uploadTab" class="container">
		<ul class="tabs">
			<li class="tab on" data-tab="aMovie_upload">영화 등록</li>
			<li class="tab" data-tab="aMovie_upload2">티저 등록</li>
		</ul>
	
	<%-- 업로드 화면 구성 --%>
	<div id="aMovie_upload" class="tab-content on">

		<form method="post" action="/moving.com/admin/movie/movie_upload_ok" onsubmit="return movie_check();">
		
			<%-- 업로드 창 중앙 div --%>
			<div id="aMUploadCenter">
				<table border="1" id="aMUpload_table" >

					<%-- 카테고리 콤보박스 --%>
					<tr>
						<th>감독</th>
						<td>
						<input name="director" id="aMUploadC_director"/>
						&nbsp;&nbsp;&nbsp;출연진&nbsp;
						<input name="actor" id="aMUploadC_actor" size="30"/>
						&nbsp;&nbsp;&nbsp;시대배경&nbsp;
						<input name="eraBackground" id="aMUploadC_background" size="18"/>
						</td>
					</tr>
					<tr>
						<th class="thName">장르</th>
						<td class="tdName">
							<div id="aMUploadC_combo" class="select">
								<select id="aMUploadC_genre" name="codeNo" class="combo">
									<option value="30001">선택하세요.</option>
									<option value="3000101">범죄/스릴러</option>
									<option value="3000102">액션/어드벤쳐</option>
									<option value="3000103">다큐/드라마/청춘</option>
									<option value="3000104">역사/시대극</option>
									<option value="3000105">판타지/SF</option>
									<option value="3000106">멜로/로맨스</option>
									<option value="3000107">코미디</option>
									<option value="3000108">애니메이션</option>
									<option value="3000109">기타</option>
								</select>
								&nbsp;&nbsp;&nbsp;상영등급&nbsp;
								<select id="aMUploadC_rating" name="rate" class="combo">
									<option value="null">선택하세요.</option>
									<option value="g">전체 관람가</option>
									<option value="pg-13">12세 이상 관람가</option>
									<option value="r">15세 이상 관람가</option>
									<option value="nc-17">청소년 관람불가</option>
								</select>
								&nbsp;&nbsp;&nbsp;상영시간&nbsp;
								<input type="number" name="videoLength" class="time" id="aMUploadC_runningTime"
									/>분
							</div>
							
						</td>
					</tr>
					
					
					<tr>
						<th>제목</th>
						<td>
							<%-- 제목 입력 --%>
							<div id="aMUploadC_title">

								<input type="text" name="titleKorean" class="korean title"
									id="aMUploadC_titleText" placeholder="한글 제목을 입력하세요."/>
								<input type="text" name="titleEnglish" class="english title"
									id="aMUploadC_titleText2" placeholder="영문 제목을 입력하세요."/>
								<input type="date" name="releaseDate" class="year"
									id="aMUploadC_titleText3" placeholder="연도"/>
							</div>
						</td>
					</tr>
					<tr>
						<th>줄거리</th>
						<td>
							<%-- 줄거리 입력 --%>
							<div id="aMUploadC_cont">
								<textarea name="content" id="aMUploadC_contText" class="txtbox content"
									placeholder="내용을 입력하세요." rows="22" cols="85"></textarea>
									<script type="text/javascript">
										var oEditors = []; //전역변수

										nhn.husky.EZCreator.createInIFrame({ //스마트 에디터 프레임 생성
											oAppRef : oEditors,
											elPlaceHolder : "aMUploadC_contText",
											sSkinURI : "${pageContext.request.contextPath}/resources/editor/SmartEditor2Skin.html",
											bUseToolbar : true, //툴 바 사용 여부
											bUseVerticalResizer : true, //입력창 크기 조절 사용 여부
											bUseVerticalResizer : true, //모드 탭(Editor | HTML | TEXT ) 사용 여부
										});
									</script>
							</div>
						</td>
					</tr>
					<tr>
					
						<%-- 동영상 url or 파일명 --%>
						<td style="text-align: center;">영상 파일 경로</td>
						<td><input name="videoFilePath" id="aMUploadR_url" size="50"/></td>
					</tr>
				</table>
			</div>
			<%-- 취소 버튼 --%>
			<div id="aMUploadR_cancelBtn">
				<button type="button" class="button upCancel">취소</button>
			</div>
			<%-- 업로드 버튼 --%>
			<div id="aMUploadR_uploadBtn">
				<button type="submit" class="button">저장</button>
			</div>
		</form>
	</div>
	
	<%-- 티저 업로드 화면 구성 --%>
	<div id="aMovie_upload2" class="tab-content">

		<form method="post" action="/moving.com/admin/movie/teaser_upload_ok" onsubmit="return teaser_check();">
		
			<%-- 업로드 창 중앙 div --%>
			<div id="aMUploadCenter">
				<table border="1" id="aMUpload_table">

					<%-- 카테고리 콤보박스 --%>
					<tr>
						<th>감독</th>
						<td>
							<input name="director" id="aMUploadC_directorT"/>
						</td>
					</tr>
					<tr>
						<th>장르</th>
						<td>
							<div id="aMUploadC_combo">
								<select id="aMUploadC_genreT" name="codeNo" class="combo">
									<option value="30002">선택하세요.</option>
									<option value="3000201">범죄/스릴러</option>
									<option value="3000202">액션/어드벤쳐</option>
									<option value="3000203">다큐/드라마/청춘</option>
									<option value="3000204">역사/시대극</option>
									<option value="3000205">판타지/SF</option>
									<option value="3000206">멜로/로맨스</option>
									<option value="3000207">코미디</option>
									<option value="3000208">애니메이션</option>
									<option value="3000209">기타</option>
								</select>
								&nbsp;&nbsp;&nbsp;상영등급&nbsp;
								<select id="aMUploadC_ratingT" name="rate" class="combo">
									<option value="null">선택하세요.</option>
									<option value="g">전체 관람가</option>
									<option value="pg-13">12세 이상 관람가</option>
									<option value="r">15세 이상 관람가</option>
									<option value="nc-17">청소년 관람불가</option>
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
									id="aMUploadC_titleTextT" placeholder="한글 제목을 입력하세요."/>
								<input type="text" name="titleEnglish" class="english title"
									id="aMUploadC_titleTextT2" placeholder="영문 제목을 입력하세요."/>
								<input type="date" name="releaseDate" class="year"
									id="aMUploadC_titleTextT3" placeholder="연도"/>
							</div>
						</td>
					</tr>
					<tr>
						<th>줄거리</th>
						<td>
							<%-- 줄거리 입력 --%>
							<div id="aMUploadC_cont">
								<textarea name="content" id="aMUploadC_contTextT" class="txtbox content"
									placeholder="내용을 입력하세요." rows="22" cols="85"></textarea>
							</div>
						</td>
					</tr>
					<tr>
						<%-- 동영상 url or 파일명 --%>
						<td style="text-align: center;">영상 파일 경로</td>
						<td><input name="videoFilePath" id="aMUploadR_url" size="50"/></td>
					</tr>
				</table>
			</div>
			<%-- 취소 버튼 --%>
			<div id="aMUploadR_cancelBtn">
				<button type="button" class="button upCancel">취소</button>
			</div>
			<%-- 업로드 버튼 --%>
			<div id="aMUploadR_uploadBtn">
				<button type="submit" class="button">저장</button>
			</div>
		</form>
	</div>
	</div>
</div>
<script>
	$(function(){
		$('.upCancel').click(function(){
			if(confirm('변경사항이 저장되지 않았습니다. 그래도 목록으로 나가시겠습니까?')){
				location.href="/moving.com/admin/movie";
			}
		});
	});
</script>
<%@ include file="../include/admin_footer.jsp"%>