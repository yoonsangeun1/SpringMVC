<%@ include file="../include/admin_header.jsp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<div id="admin_noticeWrap">
	<form method="post" action="/moving.com/admin/board/notice_write_ok" onsubmit="return notice_check();">
		<table border="1" style="width: 1024px">
			<!-- width 임시로 넣어둠. -->
			<caption>공지사항 글쓰기</caption>
			<tr>
				<th>글쓴이</th>
				<td><div class="nickname">${nickname}</div> <%--input? --%></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input name="title" id="notice_title" size="36" value="[공지]"/></td>
			</tr>
			<tr>
				<th>공지</th>
				<td>
					<select name="codeNo">
						<option value="10001">공지사항</option>
						<option value="10002">자유게시판</option>
						<option value="10003">FAQ</option>
						<option value="10004">공모전</option>
						<option value="10005">회원 프로필</option>
						<option value="10006">Q&A</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>글내용</th>
				<td><textarea name="content" id="notice_content" rows="10" cols="100"></textarea>
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
					<input type="submit" value="저장" />
					<input type="reset" value="취소" />
					<button type="button" onclick="location='/moving.com/admin/board?codeNo=0';">목록</button>
				</th>
			</tr>
		</table>
	</form>
</div>
<%@ include file="../include/admin_footer.jsp"%>