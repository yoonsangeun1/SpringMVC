/**
 * VIDEO VIEW PAGE JS 설정
 * 
 */

/*
 * #1 검색 유효성 검사
 */
function search_check() {
	
}

/*
 * #2 VIDEO_MAIN PAGE INTRO POST 글자 변경
 */
function modDivOpen() {
	document.getElementByClass("intro").innerHTML = "Thanks ! ";
	$("#modDiv").show();
}
function modDivClose() {
	$("#modDiv").hide();
}