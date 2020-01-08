/**
 * member_change.js
 */

function change_check() {
	if($.trim($("#mChange_businessName").val()) == "") {
		alert("사업자명을 입력해주세요 !");
		$("#mChange_businessName").val("").focus();
		return false;
	}
	if($.trim($("#mChange_businessRegisterNo").val()) == "") {
		alert("사업자 번호를 -포함 하여 입력해주세요 !");
		$("#mChange_businessRegisterNo").val("").focus();
		return false;
	}
}

/** 사업자명 중복체크 */
function businessName_check() {
	$mChange_businessName=$.trim($("#mChange_businessName").val());

	$.ajax({ //$는 jQuery , $.ajax는 jQuery내의 아작스 실행
		type:"POST", //데이터를 서버로 보내는 방법
		url:"check_businessName", //아작스 서버 주소 파일명->컨트롤러에 등록한 매핑주소
		data : {"businessName":$mChange_businessName}, //좌측 nickname파라미터 이름에 우측 $nickname 변수값을 저장
		datatype : "int", //서버의 실행된 결과값을 사용자로 받아오는 방법
		success : function(data) { //success는 아작스로 받아오는 것이 성공했을 경우 서버 데이터를 data변수에 저장
			if(data==1) { //중복 닉네임이 있다면
				$("#mChange_Check").text("중복된 사업자명입니다. 다시 입력해주세요 ! :P"); 
				$("#mChange_Check").css("color","red");
				$("#mChange_Check").css("font-size","15px");
				$("#mChange_Check").css("font-weight","bold");
				$("#mChange_businessName").css("background-color","#FFCECE");
			}else if($mChange_businessName.length < 2 || $mChange_businessName.length > 6) {
				$("#mChange_Check").text("사업자명은 2~6자 이어야 합니다 ! :P"); 
				$("#mChange_Check").css("color","red");
				$("#mChange_Check").css("font-size","15px");
				$("#mChange_Check").css("font-weight","bold");
				$("#mChange_businessName").css("background-color","#FFCECE");
			}else if(!(check_businessName($mChange_businessName))){
				$("#mChange_Check").text("사업자명은 한글,영문,숫자 조합만 가능합니다 ! :P");
				$("#mChange_Check").css("color","red");
				$("#mChange_Check").css("font-size","15px");
				$("#mChange_Check").css("font-weight","bold");
				$("#mChange_businessName").css("background-color","#FFCECE");
			}else { //중복된 닉네임이 없다면
				$("#mChange_Check").text("사용 가능한 사업자명입니다 ! :)"); 
				$("#mChange_Check").css("color","#9d8ce2");
				$("#mChange_Check").css("font-size","15px");
				$("#mChange_Check").css("font-weight","bold");
				$("#mChange_businessName").css("background-color","#eae6fa");
			}
		},
		error : function() { //비동기식 아작스로 서버디비 데이터를 못가져와서 에러가 발생했을때 호출되는 함수
			alert("data error");
		}
	}); //$.ajax
}


/** 사업자명 중복체크 정규표현식 */
function check_businessName($mChange_businessName) {
	var pattern = new RegExp(/^[가-힣a-zA-Z0-9]+$/); //사업자명을 한글,영문,숫자
	return pattern.test($mChange_businessName);
};



/** 사업자등록번호 중복체크 */
function businessRegisterNo_check() {
	$mChange_businessRegisterNo=$.trim($("#mChange_businessRegisterNo").val());

	$.ajax({ //$는 jQuery , $.ajax는 jQuery내의 아작스 실행
		type:"POST", //데이터를 서버로 보내는 방법
		url:"check_businessRegisterNo", //아작스 서버 주소 파일명->컨트롤러에 등록한 매핑주소
		data : {"businessRegisterNo":$mChange_businessRegisterNo}, //좌측 nickname파라미터 이름에 우측 $nickname 변수값을 저장
		datatype : "int", //서버의 실행된 결과값을 사용자로 받아오는 방법
		success : function(data) { //success는 아작스로 받아오는 것이 성공했을 경우 서버 데이터를 data변수에 저장
			if(data==1) { //중복 닉네임이 있다면
				$("#mChange_Check").text("중복된 사업자등록번호입니다. 다시 입력해주세요 ! :P"); 
				$("#mChange_Check").css("color","red");
				$("#mChange_Check").css("font-size","15px");
				$("#mChange_Check").css("font-weight","bold");
				$("#mChange_businessRegisterNo").css("background-color","#FFCECE");
			}else if(!(check_businessRegisterNo($mChange_businessRegisterNo))){
				$("#mChange_Check").text("사업자등록번호는 숫자만 입력 가능합니다 ! :P")
				$("#mChange_Check").css("color","red");
				$("#mChange_Check").css("font-size","15px");
				$("#mChange_Check").css("font-weight","bold");
				$("#mChange_businessRegisterNo").css("background-color","#FFCECE");
				$mChange_businessRegisterNo.value="";
			}else { 
				$("#mChange_Check").text("사용 가능한 사업자등록번호입니다 ! :)"); 
				$("#mChange_Check").css("color","#9d8ce2");
				$("#mChange_Check").css("font-size","15px");
				$("#mChange_Check").css("font-weight","bold");
				$("#mChange_businessRegisterNo").css("background-color","#eae6fa");
			}
		},
		error : function() { //비동기식 아작스로 서버디비 데이터를 못가져와서 에러가 발생했을때 호출되는 함수
			alert("data error");
		}
	}); //$.ajax
	
	/** 사업자등록번호 형식 xxx-xx-xxxxx */
	$(document).ready(function () {
		   $(function () {
		            
		            $('#mChange_businessRegisterNo').keydown(function (event) {
		             var key = event.charCode || event.keyCode || 0;
		             $text = $(this); 
		             if (key !== 8 && key !== 9) {
		                 if ($text.val().length === 3) {
		                     $text.val($text.val() + '-');
		                 }
		                 if ($text.val().length === 6) {
		                     $text.val($text.val() + '-');
		                 }
		             }

		             return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
					 // Key 8번 백스페이스, Key 9번 탭, Key 46번 Delete 부터 0 ~ 9까지, Key 96 ~ 105까지 넘버패트
					 // 한마디로 JQuery 0 ~~~ 9 숫자 백스페이스, 탭, Delete 키 넘버패드외에는 입력못함
		         })
		   });

		});
	
}

/** 닉네임 중복체크 정규표현식 */
function check_businessRegisterNo($mChange_businessRegisterNo) {
	var pattern = new RegExp(/^[0-9-]+$/); //사업자등록번호를 숫자만 입력
	return pattern.test($mChange_businessRegisterNo);
};

/** 사업자 등록증 이미지 미리보기 */

var sel_file2;
$(document).ready(function() {
	$("#mChange_file").on("change", handleImgFileSelect);
});
function handleImgFileSelect(e) {
	var files2 = e.target.files2;
	var filesArr2 = Array.prototype.slice.call(files2);
	filesArr2.forEach(function(f) {
		if(!f.type.match("image.*")) {
			alert("확장자는 이미지 확장자만 가능합니다.");
			return;
		}
		sel_file2 = f;
		var reader2 = new FileReader();
		reader2.onload = function(e) {
			$("#business_img").attr("src", e.target.result);
		}
		reader2.readAsDataURL(f);
	});
}


