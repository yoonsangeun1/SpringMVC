<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
 oAppRef: oEditors,
 elPlaceHolder: "ir1",
 sSkinURI: ../resources/naver/SmartEditor2Skin.html",
 fCreator: "createSEditor2"
});
</script>
<!-- 크라우드 펀딩 글 작성 페이지 -->
<div id="fWrite_wrap">
<%-- 티저 업로드 화면 구성 --%>
	<div id="aMovie_upload2" class="tab-content">

		<form>
		
			<%-- 업로드 창 중앙 div --%>
			<div id="aMUploadCenter">
				<table border="1" id="aMUpload_table">

					<%-- 카테고리 콤보박스 --%>
					<tr>
						<th>카테고리</th>
						<td>
							<div id="aMUploadC_category">
								<select name="aMUploadC_cateComboBox" class="combo">
									<option value="전체">전체</option>
									<option value="범죄/스릴러">범죄/스릴러</option>
									<option value="액션/어드벤쳐">액션/어드벤쳐</option>
									<option value="다큐/드라마/청춘">다큐/드라마/청춘</option>
									<option value="역사/시대극">역사/시대극</option>
									<option value="판타지/SF">판타지/SF</option>
									<option value="멜로/로맨스">멜로/로맨스</option>
									<option value="코미디">코미디</option>
									<option value="애니메이션">애니메이션</option>
									<option value="기타">기타</option>
								</select>
							</div>
						</td>
					</tr>
					
					
					<tr>
						<th>제목</th>
						<td>
							<%-- 제목 입력 --%>
							<div id="aMUploadC_title">

								<input type="text" name="aMUpload_titleText" class="title"
									id="aMUpload_titleText" placeholder="한글 제목을 입력하세요."/>
							</div>
						</td>
					</tr>
					<tr>
						<th>줄거리</th>
						<td>
							<%-- 줄거리 입력 --%>
							<div id="aMUploadC_cont">
							
							<!-- 	<textarea name="aMUpload_contText" id="aMUpload_contText" class="txtbox content"
									placeholder="내용을 입력하세요." rows="20"></textarea>
							 --></div>
						</td>
					</tr>
					<tr>
						<th>이미지</th>
						<td>
							<%-- 이미지파일 불러오기 --%>
							<div id="aMUploadC_imageLoad">
								<!-- <form method="post" enctype="multipart/form-data" action="#">
								<input multiple="multiple" name="files[]" id="files" type="file"
									style="width: 500px" />
							</form> 
							 -->
								<input type="file" />
								
							</div> <%-- 이미지파일 --%>
							<div id="aMUploadC_image">
							
							</div>
						</td>
					</tr>
					<tr>
						<th>태그</th>
						<td>
						
							<%-- 태그 --%>
							<div id="aMUploadC_tag">
								<input name="aMUC_tag" id="aMUC_tag" class="txtbox tag"/>
							</div>
							
						</td>
					</tr>
					<tr>
						<th colspan="2">
							<%-- 업로드 창 맨 밑 div --%>
							<div id="aMUploadBottom">
								댓글 허용<input type="checkbox" name="aMUploadU_Chk1" 
								value="aMUComment" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;퍼가기 허용<input type="checkbox" 
								name="aMUploadU_Chk2" value="aMUBring" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;공개 범위
								
								<%-- 공개범위 콤보박스 --%>
								<select name="aMUComboBox" id="aMUComboBox">
									<option value="전체">선택하세요.</option>
									<option value="공개">공개</option>
									<option value="비공개">비공개</option>
								</select>
							</div>
						</th>
					</tr>
				</table>
			</div>

			<%-- 업로드 창 오른쪽 div --%>
			<div id="aMUploadRight">
				<table border="1" id="aMUR_table">
					<tr>
					
						<%-- 동영상 div --%>
						<td>
							<div id="aMUploadR_video">
								<iframe width="340" height="220" src="https://www.youtube.com/embed/b5bHx1nTQ24" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
							</div>
						</td>
					</tr>
					<tr>
					
						<%-- 동영상 url or 파일명 --%>
						<td height="100">
							<div id="aMUploadR_videoUrl">
								동영상 URL<input name="aMUploadR_url" id="aMUploadR_url" size="45" readonly />
							</div>
						</td>
					</tr>
					<tr>
					
						<%-- 제작사/배우 추가 --%>
						<th height="30">제작사/배우 사진 추가</th>
					</tr>
					<tr>
					
						<%-- 제작사/배우 사진 --%>
						<td height="100">
							<div id="aMUploadR_Actor">
							
								<button type="button" name="aMU_imageBtn1" id="aMU_imageBtn1" >
									<img src="../images/addfriendB.png" width="70" height="90" />
								</button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<img src="../images/addfriendW.png" width="70" height="90" alt="이미지를 추가해 주세요." />
								<img src="../images/addfriendW.png" width="70" height="90" alt="이미지를 추가해 주세요." />

							</div>
						</td>
					</tr>

				</table>
			</div>
			<%-- 취소 버튼 --%>
			<div id="aMUploadR_cancelBtn">
				<button type="button" class="button">취소</button>
			</div>
			<%-- 업로드 버튼 --%>
			<div id="aMUploadR_uploadBtn">
				<button type="button" class="button">저장</button>
			</div>
		</form>














	<div id="fWrite_title">
		<h3>${projectInfo.title }</h3>
		<p>${projectInfo.introduce }</p>
	</div>

	<%-- 펀딩 메인 이미지, 모금 정보 --%>
	<div id="fWrite_subtitle">
		<%-- 펀딩 메인 이미지 --%>
		<div id="fWrite_mainImage">
			<img src="../images/funding05.PNG" width="700" height="400"
				src="펀딩이미지05" />
			<div class="fWrite_tags">
				<span class="sumCont_sub fWrite_tag"><i
					class="fas fa-tag fa-lg"></i> Project We Love</span> <span
					class="sumCont_sub fWrite_tag"><i class="fas fa-tag fa-lg"></i>
					Documentary</span> <span class="sumCont_sub fWrite_tag"><i
					class="fas fa-map-marker-alt fa-lg"></i> 독도, 대한민국 </span> <span
					class="sumCont_sub fWrite_tag"><i
					class="fas fa-hashtag fa-lg"></i> 감동적인</span>
			</div>
		</div>

		<%-- 펀딩 메인 정보 요약 --%>
		<div id="fWrite_sumCont">
			<div id="fWrite_sumContTS">
				<div class="progress length">
					<!-- 여기에 수정해야 할 것 : 퍼센트 표시 바. -->
					<div class="progress-bar length" role="progressbar"
						aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
						style="width: ${ projectInfo.nowPrice div projectInfo.targetPrice * 100}%">
						<span class="sr-only">${ projectInfo.nowPrice div projectInfo.targetPrice * 100}% Complete</span>
					</div>
				</div>
				<span class="sumCont_title">${ projectInfo.nowPrice } 원</span> 
				<span class="sumCont_sub">목표 금액 ${projectInfo.targetPrice } 원 중</span> 
				
				<span class="sumCont_title">${projectInfo.sponserCount } 명</span> 
				<span class="sumCont_sub">프로젝트 후원자</span>

				
				<span class="sumCont_title">${projectInfo.leftLimit }</span> <span class="sumCont_sub">남은
					목표 일수</span>

				<button class="fWrite_sumContBtn button button_f16 shadow"
					type="button">이 프로젝트 밀어주기</button>
				<div id="fWrite_share">
					<button
						class="fWrite_shareBtn button button_wce8e8e8 button_f12 shadow"
						type="button">
						<i class="fas fa-heart"></i> Remind Me
					</button>
					<div class="fWrite_shareIcon fa-2x">
						<a href="#"><i class="fab fa-facebook"></i></a>
					</div>
					<div class="fWrite_shareIcon fa-2x">
						<a href="#"><i class="fab fa-twitter"></i></a>
					</div>
					<div class="fWrite_shareIcon fa-2x">
						<a href="#"><i class="fas fa-envelope"></i></a>
					</div>
					<div class="fWrite_shareIcon fa-2x">
						<a href="#"><i class="fas fa-link"></i></a>
					</div>
				</div>
				<span class="sumCont_sub"><a href="#">All or Nothing</a>. 이
					프로젝트는 Sat, November 23 2019 1:59 PM UTC +09:00 까지 목표금액 달성시에만 후원금이
					전달됩니다.</span>
			</div>
		</div>


	</div>

	<div class="clear"></div>

	<%-- 펀딩 하위 메뉴 --%>
	<div id="fWrite_menubar">
		<div id="fWrite_row">
			<button class="fWrite_menu">Campaign</button>
			<button class="fWrite_menu">FAQ</button>
			<button class="fWrite_menu">Updates</button>
			<button class="fWrite_menu">Comments <b>${projectInfo.commentCount }</b></button>
			<button class="fWrite_menu">Communities</button>
		</div>
	</div>

	<div id="fWrite_cont">
		<%-- 상세 정보 --%>
		<div id="fWrite_leftCont">
		<h3>About</h3>
		<p>${projectInfo.content }</p>
		<img src="../images/fundingCont01.png" width="800" height="1200" alt="fundingCont"/>
		
		</div>
		<div id="fWrite_rightCont">
		<!-- <h3>About</h3>
		<img src="../images/fundingCont01.png" width="800" height="1200" alt="fundingCont"/> -->
		
		</div>
		
	</div>
</div>


<script>
var config = { txHost: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) http://xxx.xxx.com */ txPath: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) /xxx/xxx/ */ txService: 'sample', /* 수정필요없음. */ txProject: 'sample', /* 수정필요없음. 프로젝트가 여러개일 경우만 수정한다. */ initializedId: "", /* 대부분의 경우에 빈문자열 */ wrapper: "tx_trex_container", /* 에디터를 둘러싸고 있는 레이어 이름(에디터 컨테이너) */ form: 'boardWrite'+"", /* 등록하기 위한 Form 이름 */ txIconPath: "${ pageContext.request.contextPath }/resources/daumOpenEditor/images/icon/editor/", /* 에디터에 사용되는 이미지 디렉터리, 필요에 따라 수정한다. */ txDecoPath: "${ pageContext.request.contextPath }/resources/daumOpenEditor/images/deco/contents/", /* 본문에 사용되는 이미지 디렉터리, 서비스에서 사용할 때는 완성된 컨텐츠로 배포되기 위해 절대경로로 수정한다. */ canvas: { exitEditor:{ /* desc:'빠져 나오시려면 shift+b를 누르세요.', hotKey: { shiftKey:true, keyCode:66 }, nextElement: document.getElementsByTagName('button')[0] */ }, styles: { color: "#123456", /* 기본 글자색 */ fontFamily: "굴림", /* 기본 글자체 */ fontSize: "10pt", /* 기본 글자크기 */ backgroundColor: "#fff", /*기본 배경색 */ lineHeight: "1.5", /*기본 줄간격 */ padding: "8px" /* 위지윅 영역의 여백 */ }, showGuideArea: false }, events: { preventUnload: false }, sidebar: { attachbox: { show: true, confirmForDeleteAll: true } }, size: { contentWidth: 700 /* 지정된 본문영역의 넓이가 있을 경우에 설정 */ } }; EditorJSLoader.ready(function(Editor) { var editor = new Editor(config); });

</script>
<%@ include file="../include/footer.jsp"%>