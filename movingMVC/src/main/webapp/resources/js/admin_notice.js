/**
 * admin_notice.js
 */

function notice_check(){ /*board_free 글쓰기,수정 부분*/
	
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
	
	var content=$("#content").val();	
	
	if($.trim($("#title").val())==""){
		alert('제목을 입력하세요!');
		$("#title").val('').focus();
		return false;
	}//if
	
	if(content == "" || content == null || content == "&nbsp;" || 
			content == '<br>' || content == '<br/>' ||
			content == '<p>&nbsp;</p>'){
		alert('내용을 입력하세요!');
		oEditors.getById["content"].exec("FOCUS");
		return false;
	}//if
	
}//free_check()