/**
 * movie_upload.js
 */


$(function(){ /* 영상 업로드에서 티저/영화 분류탭 화면 나누기 */
	$("ul.tabs li").click(function(){ 
		var tab_id = $(this).attr('data-tab');
		$("ul.tabs li").removeClass('on');
		$(".tab-content").removeClass('on');
		$(this).addClass('on');
		$("#"+tab_id).addClass('on');
	});
});

function movie_check(){

	if($.trim($("#aMUploadC_director").val()) == ""){
		alert("감독을 입력하세요!");
		$('#aMUploadC_director').val('').focus();
		return false;
	} // 감독
	
	if($.trim($('#aMUploadC_actor').val()) == ''){
		alert('출연진을 입력하세요!');
		$('#aMUploadC_actor').val('').focus();
		return false;
	} // 출연진
	
	if($.trim($('#aMUploadC_background').val()) == ''){
		alert('시대배경을 입력해주세요!');
		$('#aMUploadC_background').val('').focus();
		return false;
	} // 시대배경
	
	if($('#aMUploadC_genre').val() == '30001'){
		alert("장르를 선택해주세요!");
		$('#aMUploadC_genre').val('30001').focus();
		return false;
	} // 장르
	
	if($('#aMUploadC_rating').val() == 'null'){
		alert('상영 등급을 선택해주세요!');
		$('#aMUploadC_rating').val('null').focus();
		return false;
	} // 상영등급
	
	if($.trim($('#aMUploadC_runningTime').val()) == ''){
		alert("상영 시간을 입력해주세요!");
		$('#aMUploadC_runningTime').val('').focus();
		return false;
	} // 상영시간
	
	if($.trim($('#aMUploadC_titleText').val()) == ''){
		alert('한글 제목을 입력해주세요!');
		$('#aMUploadC_titleText').val('').focus();
		return false;
	} // 한글제목
	
	if($.trim($('#aMUploadC_titleText2').val()) == ''){
		alert('영어 제목을 입력해주세요!');
		$('#aMUploadC_titleText2').val('').focus();
		return false;
	} // 영문제목
	
	if($.trim($('#aMUploadC_titleText3').val()) == ''){
		alert('연도를 입력해주세요!');
		$('#aMUploadC_titleText3').val('').focus();
		return false;
	} // 연도
	
	oEditors.getById["aMUploadC_contText"].exec("UPDATE_CONTENTS_FIELD", []);
	
	var content=$("#aMUploadC_contText").val();	
	
	if(content == "" || content == null || content == "&nbsp;" || 
			content == '<br>' || content == '<br/>' ||
			content == '<p>&nbsp;</p>'){
		alert('줄거리를 입력해주세요!');
		oEditors.getById["aMUploadC_contText"].exec("FOCUS");
		return false;
	}//if
	
} // movie_check()

function teaser_check(){
	
	if($.trim($('#aMUploadC_directorT').val()) == ''){
		alert('감독을 입력해주세요!');
		$('#aMUploadC_directorT').val('').focus();
		return false;
	} // 장르
	
	if($('#aMUploadC_genreT').val() == '30001'){
		alert('장르를 선택해주세요!');
		$('#aMUploadC_genreT').val('30002').focus();
		return false;
	} // 장르
	
	if($('#aMUploadC_ratingT').val() == 'null'){
		alert('상영등급을 선택해주세요!');
		$('#aMUploadC_ratingT').val('null').focus();
		return false;
	} // 장르
	
	if($.trim($('#aMUploadC_titleTextT').val()) == ''){
		alert('한글 제목을 입력해주세요!');
		$('#aMUploadC_titleTextT').val('').focus();
		return false;
	}
	
	if($.trim($('#aMUploadC_titleTextT2').val()) == ''){
		alert('영어 제목을 입력해주세요!');
		$('#aMUploadC_titleTextT2').val('').focus();
		return false;
	}
	
	if($.trim($('#aMUploadC_titleTextT3').val()) == ''){
		alert('날짜를 입력해주세요!');
		$('#aMUploadC_titleTextT3').val('').focus();
		return false;
	}
	
	if($.trim($("#aMUploadC_contTextT").val()) == ""){
		alert('줄거리를 입력해주세요!');
		$('#aMUploadC_contTextT').val('').focus();
		return false;
	}
} // teaser_check()