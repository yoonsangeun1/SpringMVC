<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/admin_header.jsp"%>
<%-- 영화 업로드 페이지 구성 --%>
<div id="aMovie_uploadWrap">
	<h2>동영상 업로드</h2>

	<%-- 저장 버튼 --%>
	<div id="aMUploadR_saveBtn">
		<button type="button" class="button" >저장</button>
	</div>
	<%-- 업로드 화면 구성 --%>
	<div id="aMovie_upload">
		<form>


			<%-- 업로드 창 중앙 div --%>
			<div id="aMUploadCenter">
				<table border="1" id="aMUpload_table" valign=bottom>

					<%-- 카테고리 콤보박스 --%>
					<tr>
						<th>카테고리</th>
						<td>
							<div id="aMUploadC_category">
								<select name="aMUploadC_cateComboBox" class="txtbox combo">
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

								<input type="text" name="aMUpload_titleText" class="txtbox title"
									id="aMUpload_titleText" placeholder="제목을 입력하세요."/>

							</div>
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<%-- 내용 입력 --%>
							<div id="aMUploadC_cont">
								<textarea name="aMUpload_contText" id="aMUpload_contText" class="txtbox content"
									placeholder="내용을 입력하세요." rows="20"></textarea>
							</div>
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
							<div id="aMUploadUnder">
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
									<img src="/images/addfriendB.png" width="70" height="90" />
								</button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<img src="/images/addfriendW.png" width="70" height="90" alt="이미지를 추가해 주세요." />
								<img src="/images/addfriendW.png" width="70" height="90" alt="이미지를 추가해 주세요." />

							</div>
						</td>
					</tr>

				</table>
			</div>

		</form>
	</div>
</div>
<%@ include file="../include/admin_footer.jsp"%>