/**
 *  board_free.js
 *  board_free페이지 스크립트
 */

function free_check(){ /*board_free 글쓰기,수정 부분*/
	
	if($.trim($("#title").val())==""){
		alert('제목을 입력하세요!');
		$("#title").val('').focus();
		return false;
	}//if
	
	if($.trim($("#content").val())==""){
		alert('내용을 입력하세요!');
		$("#content").val('').focus();
		return false;
	}//if
	
}//free_check()

function del_check(){
	
	if(confirm("삭제하시겠습니까?")){
	
	return location='/moving.com/board/free_del?free_id=${bf.free_id}&page=${page}';
	}else{
		return false;
	}
}//del_check()