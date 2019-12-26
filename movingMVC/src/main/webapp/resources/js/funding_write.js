/**
 * funding_write.js
 */

$(function(){ /* 영상 업로드에서 티저/영화 분류탭 화면 나누기 */
	$("ul li.option").click(function(){ 
		var tab_id = $(this).attr('data-tab');
		$("ul li.option").removeClass('on');
		$(".menu-option").removeClass('on');
		$(this).addClass('on');
		$("#"+tab_id).addClass('on');
	});
});