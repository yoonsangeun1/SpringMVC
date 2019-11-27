/**
 *  board_faq.js
 *  
 *  board/board_faq 속 들어가는 js
 */

function bFaq_tap_over(x){ /*탭 버튼들 마우스 오버 시*/
	x.style.transition="0.5s";
	x.style.background="#000";
	x.style.color="#fff";
}

function bFaq_no_bt(x){ /*질문 버튼들 마우스 오버 시*/
	x.style.transition="0.5s";
	x.style.background="#000";
	x.style.color="#fff";
}

function bFaq_tap_out(){ /*마우스 오버 벗어날 시*/
		if($('#bFaq_no1_body').css("display") == "none"){ /*이용문의 밑 div none일 시 작동*/
			$('#bFaq_tap_no1').css("transition","0.5s");
			$('#bFaq_tap_no1').css("background","#fff");
			$('#bFaq_tap_no1').css("color","#000");
		}//if
		
		if($('#bFaq_no2_body').css("display") == "none"){ /*수강문의 밑 div none일 시 작동*/
			$('#bFaq_tap_no2').css("transition","0.5s");
			$('#bFaq_tap_no2').css("background","#fff");
			$('#bFaq_tap_no2').css("color","#000");
		}//if
		
		if($('#bFaq_no3_body').css("display") == "none"){ /*결제문의 밑 div none일 시 작동*/
			$('#bFaq_tap_no3').css("transition","0.5s");
			$('#bFaq_tap_no3').css("background","#fff");
			$('#bFaq_tap_no3').css("color","#000");
		}//if	
}//bFaq_tap_out()

function bFaq_tap_no1_check(){ /*이용문의 탭 버튼 클릭 시*/
	if($('#bFaq_no1_body').css("display") == "none" ){
		$('#bFaq_no1_body').css("display","block");
		$('#bFaq_no2_body').css("display","none");
		$('#bFaq_no3_body').css("display","none");
		$('#bFaq_tap_no1').css("background","#000"); /*이용문의 배경 검정*/
		$('#bFaq_tap_no1').css("color","#fff");		 /*이용문의 글씨 색 흰색*/
		$('#bFaq_tap_no2').css("background","#fff"); /*수강문의 배경 흰색*/
		$('#bFaq_tap_no2').css("color","#000"); /*수강문의 글씨 색 검정*/
		$('#bFaq_tap_no3').css("background","#fff"); /*결제문의 배경 흰색*/
		$('#bFaq_tap_no3').css("color","#000"); /*결제문의 글씨 색 검정*/
	}//if
}//bFaq_tap_no1_check()

function bFaq_tap_no2_check(){ /*수강문의 버튼 클릭 시*/
	if($('#bFaq_no2_body').css("display") == "none" ){
		$('#bFaq_no2_body').css("display","block");
		$('#bFaq_no1_body').css("display","none");
		$('#bFaq_no3_body').css("display","none");
		$('#bFaq_tap_no1').css("background","#fff"); /*이용문의 배경 흰색*/
		$('#bFaq_tap_no1').css("color","#000");		 /*이용문의 글씨 색 검정*/
		$('#bFaq_tap_no2').css("background","#000"); /*수강문의 배경 검정*/
		$('#bFaq_tap_no2').css("color","#fff");      /*수강문의 글씨 색 흰색*/
		$('#bFaq_tap_no3').css("background","#fff"); /*결제문의 배경 흰색*/
		$('#bFaq_tap_no3').css("color","#000");      /*결제문의 글씨 색 검정*/
	}//if
}//bFaq_tap_no2_check()

function bFaq_tap_no3_check(){ /*결제문의 버튼 클릭 시*/
	if($('#bFaq_no3_body').css("display") == "none" ){
		$('#bFaq_no1_body').css("display","none");
		$('#bFaq_no2_body').css("display","none");
		$('#bFaq_no3_body').css("display","block");
		$('#bFaq_tap_no1').css("background","#fff"); /*이용문의 배경 흰색*/
		$('#bFaq_tap_no1').css("color","#000");		 /*이용문의 글씨 색 검정*/
		$('#bFaq_tap_no2').css("background","#fff"); /*수강문의 배경 흰색*/
		$('#bFaq_tap_no2').css("color","#000"); 	 /*수강문의 글씨 색 검정*/
		$('#bFaq_tap_no3').css("background","#000"); /*결제문의 배경 검정*/
		$('#bFaq_tap_no3').css("color","#fff");		 /*결제문의 글씨 색 흰색*/
	}//if
}//bFaq_tap_no3_check()

function bFaq_no1_bt1(){ /*이용문의 첫번째 버튼*/
	if($('.bFaq_no1_panel1').css("display") == "none" ){
   $('.bFaq_no1_panel1').css("display","block");
   $('.bFaq_no1_bt1').css("transition","0.5s"); /*0.5초*/
   $('.bFaq_no1_bt1').css("background","#000"); /*배경 검정*/
   $('.bFaq_no1_bt1').css("color","#fff");      /*글씨 흰색*/
}else if($('.bFaq_no1_panel1').css("display") == "block" ){
	$('.bFaq_no1_panel1').css("display","none");
	$('.bFaq_no1_bt1').css("transition","0.5s");
	$('.bFaq_no1_bt1').css("background","#fff"); /*배경 흰색*/
	$('.bFaq_no1_bt1').css("color","#000"); 	 /*글씩 검정*/
}//display none을 경우 block으로 ,
//display block을 none으로 변경
}//bFaq_no1_bt1() faq에서 div 보이게 하기 위함

function bFaq_no1_bt2(){ /*이용문의 2번째 버튼*/
	if($('.bFaq_no1_panel2').css("display") == "none" ){
		$('.bFaq_no1_panel2').css("display","block");
		   $('.bFaq_no1_bt2').css("transition","0.5s"); /*0.5초*/
		   $('.bFaq_no1_bt2').css("background","#000"); /*배경 검정*/
		   $('.bFaq_no1_bt2').css("color","#fff");      /*글씨 흰색*/
	}else if($('.bFaq_no1_panel2').css("display") == "block"){
		$('.bFaq_no1_panel2').css("display","none");
		$('.bFaq_no1_bt2').css("transition","0.5s");
		$('.bFaq_no1_bt2').css("background","#fff"); /*배경 흰색*/
		$('.bFaq_no1_bt2').css("color","#000"); 	 /*글씩 검정*/
	}//if else if
}//bFaq_no1_bt2()

function bFaq_no1_bt3(){ /*이용문의 3번째 버튼*/
	if($('.bFaq_no1_panel3').css("display") == "none" ){
		$('.bFaq_no1_panel3').css("display","block");
		   $('.bFaq_no1_bt3').css("transition","0.5s"); /*0.5초*/
		   $('.bFaq_no1_bt3').css("background","#000"); /*배경 검정*/
		   $('.bFaq_no1_bt3').css("color","#fff");      /*글씨 흰색*/
	}else if($('.bFaq_no1_panel3').css("display") == "block" ){
		$('.bFaq_no1_panel3').css("display","none");
		$('.bFaq_no1_bt3').css("transition","0.5s");
		$('.bFaq_no1_bt3').css("background","#fff"); /*배경 흰색*/
		$('.bFaq_no1_bt3').css("color","#000"); 	 /*글씩 검정*/
	}//if else if
}//bFaq_no1_bt3()

function bFaq_no1_bt4(){ /*이용문의 4번째 버튼*/
	if($('.bFaq_no1_panel4').css("display") == "none" ){
		$('.bFaq_no1_panel4').css("display","block");
		   $('.bFaq_no1_bt4').css("transition","0.5s"); /*0.5초*/
		   $('.bFaq_no1_bt4').css("background","#000"); /*배경 검정*/
		   $('.bFaq_no1_bt4').css("color","#fff");      /*글씨 흰색*/
	}else if($('.bFaq_no1_panel4').css("display") == "block" ){
		$('.bFaq_no1_panel4').css("display","none");
		$('.bFaq_no1_bt4').css("transition","0.5s"); /*0.5초*/
		$('.bFaq_no1_bt4').css("background","#fff"); /*배경 흰색*/
		$('.bFaq_no1_bt4').css("color","#000"); 	 /*글씩 검정*/
	}//if else if
}//bFaq_no1_bt4()

function bFaq_no2_bt1(){ /*수강문의 첫번째 버튼*/
	if($('.bFaq_no2_panel1').css("display") == "none" ){
		$('.bFaq_no2_panel1').css("display","block");
		$('.bFaq_no2_bt1').css("transition","0.5s"); /*0.5초*/
		$('.bFaq_no2_bt1').css("background","#000"); /*배경 검정*/
		$('.bFaq_no2_bt1').css("color","#fff");      /*글씨 흰색*/
	}else if($('.bFaq_no2_panel1').css("display") == "block"){
		$('.bFaq_no2_panel1').css("display","none");
		$('.bFaq_no2_bt1').css("trasition","0.5s"); /*0.5초*/
		$('.bFaq_no2_bt1').css("background","#fff");/*배경 흰색*/
		$('.bFaq_no2_bt1').css("color","#000");	   /*글씨 검정*/
	}//if else if
}//bFaq_no2_bt1()

function bFaq_no2_bt2(){ /*수강문의 두번째 버튼*/
	if($('.bFaq_no2_panel2').css("display") == "none" ){
		$('.bFaq_no2_panel2').css("display","block" );
		$('.bFaq_no2_bt2').css("transition","0.5s");
		$('.bFaq_no2_bt2').css("background","#000");
		$('.bFaq_no2_bt2').css("color","#fff");
	}else if($('.bFaq_no2_panel2').css("display") == "block" ){
		$('.bFaq_no2_panel2').css("display","none");
		$('.bFaq_no2_bt2').css("transition","0.5s");
		$('.bFaq_no2_bt2').css("background","#fff");
		$('.bFaq_no2_bt2').css("color","#000");
	}//if elsel if
}//bFaq_no2_bt2()

function bFaq_no2_bt3(){
	if($('.bFaq_no2_panel3').css("display") == "none" ){
		$('.bFaq_no2_panel3').css("display","block");
		$('.bFaq_no2_bt3').css("transition","0.5s");
		$('.bFaq_no2_bt3').css("background","#000");
		$('.bFaq_no2_bt3').css("color","#fff");
	}else if($('.bFaq_no2_panel3').css("display") == "block" ){
		$('.bFaq_no2_panel3').css("display","none");
		$('.bFaq_no2_bt3').css("transition","0.5s");
		$('.bFaq_no2_bt3').css("background","#fff");
		$('.bFaq_no2_bt3').css("color","#000");
	}//if else if
}//bFaq_no2_bt3();

function bFaq_no2_bt4(){
	if($('.bFaq_no2_panel4').css("display") == "none" ){
		$('.bFaq_no2_panel4').css("display","block");
		$('.bFaq_no2_bt4').css("transition","0.5s");
		$('.bFaq_no2_bt4').css("background","#000");
		$('.bFaq_no2_bt4').css("color","#fff");
	}else if($('.bFaq_no2_panel4').css("display") == "block" ){
		$('.bFaq_no2_panel4').css("display","none");
		$('.bFaq_no2_bt4').css("transition","0.5s");
		$('.bFaq_no2_bt4').css("background","#fff");
		$('.bFaq_no2_bt4').css("color","#000");
	}//if else if
}//bFaq_no2_bt4()

function bFaq_no3_bt1(){
	if($('.bFaq_no3_panel1').css("display") == "none" ){
		$('.bFaq_no3_panel1').css("display","block");
		$('.bFaq_no3_bt1').css("transition","0.5s");
		$('.bFaq_no3_bt1').css("background","#000");
		$('.bFaq_no3_bt1').css("color","#fff");
	}else if($('.bFaq_no3_panel1').css("display") == "block" ){
		$('.bFaq_no3_panel1').css("display","none");
		$('.bFaq_no3_bt1').css("transition","0.5s");
		$('.bFaq_no3_bt1').css("background","#fff");
		$('.bFaq_no3_bt1').css("color","#000");
	}//if else if
}//bFaq_no3_bt1()

function bFaq_no3_bt2(){
	if($('.bFaq_no3_panel2').css("display") == "none" ){
		$('.bFaq_no3_panel2').css("display","block");
		$('.bFaq_no3_bt2').css("transition","0.5s");
		$('.bFaq_no3_bt2').css("background","#000");
		$('.bFaq_no3_bt2').css("color","#fff");
	}else if($('.bFaq_no3_panel2').css("display") == "block" ){
		$('.bFaq_no3_panel2').css("display","none");
		$('.bFaq_no3_bt2').css("transition","0.5s");
		$('.bFaq_no3_bt2').css("background","#fff");
		$('.bFaq_no3_bt2').css("color","#000");
	}//if else if
}//bFaq_no3_bt2()

function bFaq_no3_bt3(){
	if($('.bFaq_no3_panel3').css("display") == "none" ){
		$('.bFaq_no3_panel3').css("display","block");
		$('.bFaq_no3_bt3').css("transition","0.5s");
		$('.bFaq_no3_bt3').css("background","#000");
		$('.bFaq_no3_bt3').css("color","#fff");
	}else if($('.bFaq_no3_panel3').css("display") == "block" ){
		$('.bFaq_no3_panel3').css("display","none");	
		$('.bFaq_no3_bt3').css("transition","0.5s");
		$('.bFaq_no3_bt3').css("background","#fff");
		$('.bFaq_no3_bt3').css("color","#000");
	}//if else if
}//bFaq_no3_bt3()

function bFaq_no3_bt4(){
	if($('.bFaq_no3_panel4').css("display") == "none" ){
		$('.bFaq_no3_panel4').css("display","block");
		$('.bFaq_no3_bt4').css("transition","0.5s");
		$('.bFaq_no3_bt4').css("background","#000");
		$('.bFaq_no3_bt4').css("color","#fff");
	}else if($('.bFaq_no3_panel4').css("display") == "block" ){
		$('.bFaq_no3_panel4').css("display","none");
		$('.bFaq_no3_bt4').css("transition","0.5s");
		$('.bFaq_no3_bt4').css("background","#fff");
		$('.bFaq_no3_bt4').css("color","#000");
	}//if else if
}//bFaq_no3_bt4()






















