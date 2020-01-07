<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/admin_header.jsp"%>
<%-- 게시글 내용보기  --%>
<div id="aBoard_contWrap">
	
	<div class="h2">
		<h2>게시글 내용보기</h2>
	</div>
	
	<%-- 게시글 내용 --%>
	<table id="aBCont_table" border="1">
		<tr>
			<th>글쓴이</th>
			<td>${np.mUserVO.nickname}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${np.title }</td>
		</tr>
		
		<tr>
			<th>내용</th>
			<td><textarea name="content" id="notice_content" rows="10" cols="100" disabled>${np.content}</textarea>
			</td>
		</tr>
		
		<tr>
			<th colspan="2">
				<button type="button" onclick="edit_button();">수정</button>
				<button type="button" onclick="location='/moving.com/admin/board?codeNo=${codeNo}&page=${page}&findField=${findField}&findName=${findName}';">목록</button>
				<button type="button" onclick="delCont();">삭제</button>
			</th>
		</tr>
	</table>
</div>

<script>
	
	function edit_button(){ 
		location.href='board_edit?codeNo=${codeNo }&id=${np.id}&page=${page}&findField=${findField}&findName=${findName}';
	}
	
	<%-- 삭제 --%>
	function delCont(){
		if(confirm("삭제하시겠습니까?")){
			location.replace('/moving.com/admin/board/board_del?codeNo=${codeNo}&id=${np.id}&page=${page}');//yes
		}else{
			location.replace('/moving.com/admin/board/board_cont?codeNo=${codeNo}&id=${np.id}&page=${page}');//no
		}//if else
	}//function delcont()
	
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