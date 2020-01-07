/**
 * admin_notice.js
 */

function notice_check(){ /*admin_notice_write 글쓰기,수정 부분*/
	
	oEditors.getById["notice_content"].exec("UPDATE_CONTENTS_FIELD", []);
	
	var content=$("#notice_content").val();	
	
	if($.trim($("#notice_title").val())==""){
		alert('제목을 입력하세요!');
		$("#notice_title").val('').focus();
		return false;
	}//if
	
	if(content == "" || content == null || content == "&nbsp;" || 
			content == '<br>' || content == '<br/>' ||
			content == '<p>&nbsp;</p>'){
		alert('내용을 입력하세요!');
		oEditors.getById["notice_content"].exec("FOCUS");
		return false;
	}//if
	
}//free_check()

function notice_del(){
	
	if(confirm("삭제하시겠습니까?")){
		return location='/moving.com/admin/board?codeNo=${codeNo}&findField=${findField}&findName=${findName}&page=${page}';
	}else{
		return false;
	}
	
}