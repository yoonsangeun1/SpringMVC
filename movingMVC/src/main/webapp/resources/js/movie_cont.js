/** movie_cont.jsp에 대한 js 작업 */

function check () {
	if($.trim($("#mComment_cont").val()) == "") {
		alert("내용을 입력하세요.");
		$("#mComment_cont").val("").focus(); // 입력 박스를 초기화 하고 포커스를 이동시킵니다.
		return false; // 제출 이벤트 종료
	}
}