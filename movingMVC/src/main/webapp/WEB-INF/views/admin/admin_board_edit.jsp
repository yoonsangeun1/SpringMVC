<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/admin_header.jsp"%>
<%-- 게시글 내용보기  --%>
<div id="aBoard_editWrap">
	
	<div class="h2">
		<h2>게시글 내용수정</h2>
	</div>
	
	<%-- 게시글 내용 --%>
	<form method="post" action="/moving.com/admin/board/board_edit_ok" onsubmit="return notice_check();">
		<%-- 히든값 --%>
		<input type="hidden" name="codeNo1" value="${codeNo}" />
		<input type="hidden" name="id" value="${np.id}" />
		<input type="hidden" name="page" value="${page}" />
		<table id="aBCont_table" border="1" style="width: 1024px;">
			<tr>
				<th>글쓴이</th>
				<td>${np.mUserVO.nickname}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input name="title" id="notice_title" size="36" value="${np.title }"/></td>
			</tr>
			<tr>
				<th>공지</th>
				<td>
					<select name="codeNo">
						<option value="10001"
							<c:if test="${codeNo==10001 }"> ${'selected' }</c:if>>공지사항</option>
						<option value="10002"
							<c:if test="${codeNo==10002 }"> ${'selected' }</c:if>>자유게시판</option>
						<option value="10003"
							<c:if test="${codeNo==10003 }"> ${'selected' }</c:if>>FAQ</option>
						<option value="10004"
							<c:if test="${codeNo==10004 }"> ${'selected' }</c:if>>공모전</option>
						<option value="10005"
							<c:if test="${codeNo==10005 }"> ${'selected' }</c:if>>회원 프로필</option>
						<option value="10006"
							<c:if test="${codeNo==10006 }"> ${'selected' }</c:if>>Q&A</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" id="notice_content" rows="10" cols="100">${np.content}</textarea>
				<script type="text/javascript">
					var oEditors = []; //전역변수

					nhn.husky.EZCreator.createInIFrame({ //스마트 에디터 프레임 생성
						oAppRef : oEditors,
						elPlaceHolder : "notice_content",
						sSkinURI : "${pageContext.request.contextPath}/resources/editor/SmartEditor2Skin.html",
						bUseToolbar : true, //툴 바 사용 여부
						bUseVerticalResizer : true, //입력창 크기 조절 사용 여부
						bUseVerticalResizer : true, //모드 탭(Editor | HTML | TEXT ) 사용 여부
					});
				</script>
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<button type="submit">수정</button>
					<button type="reset">취소</button>
					<button type="button" onclick="location='/moving.com/admin/board?codeNo=${codeNo}&page=${page}&findField=${findField}&findName=${findName}';">목록</button>
				</th>
			</tr>
		</table>
	</form>
</div>
<script>
	var msg = "${msg}"; // 자바스크립트에서 스프링컨트롤러에서 설정한 키이름을 EL(표현언어)로 참조 가능하다.
	if (msg == 'WRITE') {
		alert("게시물 저장에 성공했습니다!");
	}
	if (msg == "EDIT") {
		alert("게시물 수정에 성공했습니다!");
	}
	if (msg == 'DEL') {
		alert('게시물 삭제에 성공했습니다!');
	}
</script>
<%@ include file="../include/admin_footer.jsp"%>