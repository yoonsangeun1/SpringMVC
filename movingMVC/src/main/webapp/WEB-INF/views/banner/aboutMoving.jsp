<%@ page contentType="text/html; charset=UTF-8"%>
<%-- HEADER 호출 --%>
<%@ include file="../include/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화를 움직이다! MOVING</title>
<link rel="stylesheet" type="text/css" href="../resources/css/init.css" />
<link rel="stylesheet" type="text/css" href="../resources/css/aboutMoving.css" />
<script src="../resources/js/jquery.js"></script>
</head>
<body>

	<div id="aboutMoving_wrap">

		<div class="clear"></div>

		<div id="amMain_wrap">
			<div class="amMoving_img">
				<img src="../resources/images/header_logo.png">
			</div>
			<div class="amMoving_text">
				<span
					style="font-weight: bold; font-size: 80px; float:left; margin-left: 30px;">당신의</span>
				<br />
				<br />
				<br />
			
				<br />
				<br /> <span
					style="font-weight: bold; font-size: 100px; float:left; color: #8785d8; margin-left: 30px;">MOVING</span>
				<br />
				<br />
				<br />
			
				<br />
				<br /> <span
					style="font-weight: bold; font-size: 80px; float: right; margin-right: 80px; margin-bottm:30px;">은
					어떤 곳일까요?</span>
			</div>
		</div>

		<div class="clear"></div>

		<%--바꿔나갑니다. 바로 여기서 --%>
		<div id="amChange_wrap">

			<div id="amChange_text">
				<div class="amChange_title">
					<span style="font-weight: bold; color: #8785d8">바꿔 나갑니다. 바로
						여기서.</span>
				</div>
				<br />

				<p class="amChange_cont">
					<br />
					<span style="font-weight: bold; font-size: 40px;">"불합리한 시장을
						바꿔 나갑니다."</span><br /> <br /> ' 신작 영화들은 다 재미가 없는데,내 취향의 영화를 볼 순 없을까? '<br />
					<br /> 영화를 좋아하는 우리는 항상<br /> 새로 개봉되는 영화가 재미있고, 평점 또는 리뷰가 좋기를
					기대했습니다.<br /> 그래야 몸을 움직여 영화를 보러 가니까요.<br /> 개봉된 신작 영화들이 보고 싶지 않다는
					생각이 들면<br /> 재미있어 보이는 영화가 개봉되기를 기다리기만 했죠.<br /> <br /> 이런 문제를 겪는
					사람이 우리 뿐만이 아니라는 것을 알게 되었고,<br />
					<br /> <span style="font-weight: bold; font-size: 35px;">우리는
						<span style="color: #8785d8">MOVING</span>을 만들었습니다.
					</span><br /> <br /> <br /> 자신만의 취향이 있는 영화인들이 고통받는 불합리한 영화시장,<br /> <br />
					우리가 직접 바꿔 보려 합니다.<br />
				</p>
			</div>
		</div>

		<div class="clear"></div>

		<%--후원이 필요한 이유 --%>
		<div id="amWhySupport_wrap">
			<div id="amWhySupport_text">
				<div class="amWhySupport_title">후원이 필요한 이유</div>
				<br />
				<p align="justify" class="amWhySupport_cont">
					<br /> <span style="font-weight: bold; font-size: 40px;">당신도
						사회적 공헌을 할 수 있습니다.</span><br /> <br />- 후원을 통해 예술, 문화 분야인 영화산업의진흥에 기여 할
					수 있는 개인제작자가<br />&nbsp;&nbsp;&nbsp; 될 수 있습니다.<br /> <br /> <span
						style="font-weight: bold; font-size: 40px;"> 영화는 우리들의 대변인
						역할을 합니다.</span> <br /> <br /> - 영화는 사람들의 관점과인식을 바꿀 수 있습니다.<br />
					&nbsp;&nbsp;&nbsp;과거의 교훈과 현재의 목소리도 들을 수 있는 앞으로의 방향을 제시해줍니다.<br />
					<br /> <span style="font-weight: bold; font-size: 40px;">당신의
						관심사를 타인과 소통할 수 있습니다.</span> <br /> <br />- 사람들 각자는 저마다의 관심분야가 있습니다. <br />
					&nbsp;&nbsp;&nbsp;누군가에게 의견과 생각을 표현하는 것은 관계 형성에 많은 도움을 줄 수 있습니다.

				</p>
				<button class="Project_look button_cb3a9eb button_f24 button_r4 border"
					onclick="location='../funding/funding_list.jsp';">프로젝트 둘러보기
				</button> 
			</div>
		</div>

		<div class="clear"></div>

		<%--주의 사항 --%>
		<div id="amPrecautions_wrap">
			<div id="amPrecautions_text">
				<div class="amPrecautions_title">※ 주의 사항 ※</div>
				<br />

				<p align="justify" class="amPrecautions_cont">

					<span style="font-weight: bold; font-size: 40px; color:brown;">○ 당신이 후원한
						프로젝트가 무산 될 수 있습니다. <br /> &nbsp;&nbsp;&nbsp; 하지만 후원금액은 되돌아 갑니다.
					</span><br /> <br /> 
					<span style="font-weight: bold; font-size: 40px; color:brown;">
					○당신이 후원한 프로젝트의 내용과 제작자에 대하여 <br />
					 &nbsp;&nbsp;&nbsp; 검색해보세요.
					</span><br /> &nbsp;&nbsp;&nbsp;- 제작자나 프로젝트 관련자가 이전에 어떠한 문제를 일으킨 적이 있는지 <br />
					&nbsp;&nbsp;&nbsp;&nbsp;확인해보고 평판을조회해보세요 (자유게시판 및 후원자리뷰 활용)
					<br /> <br />
					 <span style="font-weight: bold; font-size: 40px; color:brown;">○ 해당 프로젝트의 다른
						후원자들을 살펴보세요.</span>
						<br /> 
					&nbsp;&nbsp;- 다른 후원자들이 프로젝트에 어떻게 이야기하고 있는지 확인해보세요.<br />
					&nbsp;&nbsp;&nbsp; (자유게시판 활용)<br /> <br />
				</p>
			</div>
		</div>
		<div class="clear"></div>

		<%--정기 후원 --%>
		<div id="amRegularSupport_wrap">
			<div id="amRegularSupport_text">
				<div class="amRegularSupport_title">정기후원</div>
				<br />

				<p class="amPrecautions_cont">
					<span style="font-weight: bold; font-size: 40px;">당신의 도움이
						필요한 곳을 잊지마세요.</span> <br /> <br /> 후원자 여러분에게 
						<span style="text-decoration : underline;">매달 1일,15일,30일 중</span> <br />
					후원독려 문자를 발송해드립니다.
				</p>
			</div>
		</div>
		<div class="clear"></div>

		<%--자주하는질문 FAQ --%>
		<div id="amFAQ_wrap">
			<div id="amFAQ_text">
				<div class="amFAQ_title">자주하는 질문 FAQ</div>
				<br />

				<div class="amFAQ_cont">
					   <div id="bFaq_cont"> <%--상단 업데이트 제외 전체 div --%>
   
    <div id="bFaq_tap"> <%-- 문의 내용 탭 3개 버튼 div --%>
    
     <button id="bFaq_tap_no1" onclick="bFaq_tap_no1_check();"
     onmouseover="bFaq_tap_over(this);" onmouseout="bFaq_tap_out();">이용 문의</button>
     <button id="bFaq_tap_no2" onclick="bFaq_tap_no2_check();"
     onmouseover="bFaq_tap_over(this);" onmouseout="bFaq_tap_out();">수강 문의</button>
     <button id="bFaq_tap_no3" onclick="bFaq_tap_no3_check();"
     onmouseover="bFaq_tap_over(this);" onmouseout="bFaq_tap_out();">결제 문의</button>
     
    </div><%-- 문의 내용 3개 버튼 div --%>
 
   <div id="bFaq_no1_body" style="display:block;"> <%--이용 문의 div --%>
    <h3>홈페이지 이용문의</h3>
     <p>회원가입 및 사이트 이용에 관련된 안내입니다.</p>
    
   <button class="bFaq_no1_bt1" onclick="bFaq_no1_bt1();">수강인증 코드가 무었인가요?
   </button>
    <div class="bFaq_no1_panel1" style="display:none"><%--이용문의 첫번째 버튼 답변 --%>
     <p>회원가입 시 입력해야 하는 코드로, 이 코드를 입력하고 가입하셔야만 홈페이지에 있는 자료를 열람하실 수 있습니다!
     <br/>이미 회원가입을 하셨다면 "내 강의실-개인 정보 수정"에서 입력 가능합니다.
     </p>
    </div><%--이용문의 첫번째 버튼 답변 --%>
    
    <button class="bFaq_no1_bt2" onclick="bFaq_no1_bt2();" style="display:block">
    LC 수업 및 숙제 자료는 어떻게 다운로드할 수 있나요?</button> 
     <div class="bFaq_no1_panel2" style="display:none"> <%--이용문의 2번째 답변 div --%>
      <p>LC수업의 경우 웹하드에서 다운로드할 수 있습니다. 웹하드 이용에 관련된 자세한 공지사항의 '★LC 음원 및 
     부가자료를 위한 웹<br/>하드 안내★' 게시글을 참고해주세요.
      </p>
     </div> <%-- 이용문의 2번째 답변 div --%>
     
     <button class="bFaq_no1_bt3" onclick="bFaq_no1_bt3();" style="display:block">
     특강을 듣고 싶은데 어떻게 신청을 하나요?
     </button>
      <div class="bFaq_no1_panel3" style="display:none"> <%--이용문의 3답변 질문 div --%>
       <p>
        특강의 경우, 매 특강 전날 16:30에 해당 특강 게시글에 댓글로 신청하시면 됩니다!
       </p>
      </div> <%--이용문의 3번째 답변 div --%>
      
      <button class="bFaq_no1_bt4" onclick="bFaq_no1_bt4();">
	자유 게시판에는 어떤 글을 쓸 수 있나요?
      </button>
       <div class="bFaq_no1_panel4" style="display:none"> <%--이용문의 4답변 질문 div --%>
        <p>
	     오늘 느낀점,오늘 공부할 때의 나의 각오 등을 자유롭게 남겨주시면 됩니다.
	     <br>
	   다른 수강생들에게도 힘들 실어줄 수 있는 내용이면 더 좋습니다! 게시판 형식에 맞지 않는 글이 게시된 경우
	   운영자가 임의로 삭제 조치 및 성격에 맞는 게시판으로 이동할 수 있습니다(욕설 또는 비방글 포함)
	   <br>
	    수업,공부 관련 질문들은 홈페이지에 로그인 후 문의 게시판의 글을 남겨주시길 바랍니다~    
        </p>
       </div> <%--이용문의 4답변 질문 div --%>
       
      </div> <%--이용 문의 div --%>
      
      <div id="bFaq_no2_body" style="display:none"> <%--수강문의 div --%>
       <h3>수강문의</h3>
        <p>전국 YBM 3년 연속 1위 초초강추팀의 수업과 관련된 안내입니다.</p>
       <button class="bFaq_no2_bt1" onclick="bFaq_no2_bt1();">
          교재구입은 어디에서 하나요? 개강일에 준비해가야할 것이 있나요?
       </button>
        <div class="bFaq_no2_panel1" style="display:none"> <%--수강문의 첫 질문 답변 div --%>
         <p>
         -수강증,필기구 및 연습장만 지참해주시면 됩니다!- 실전반은 교재 없이 기출 문제 핸드아웃으로 매일 나갑니다.
         <br/>
                기본반의 경우 개강일에 강의실 앞 조교 데스크에서 교재 구입이 가능합니다.
         </p>
        </div> <%--수강문의 첫 질문 답변 div --%>
        
        

      </div> <%--수강문의 div --%>
      
      <div id="bFaq_no3_body" style="display:none"> <%--결제문의 div --%>
       <h3>결제문의</h3>
        <p>
        
        </p>
       <button class="bFaq_no3_bt1" onclick="bFaq_no3_bt1();">
       
       </button>
        <div class="bFaq_no3_panel1" style="display:none"> <%--결제문의 첫 질문 답변 div --%>
         <p>
         
         </p>
        </div> <%--결제문의 첫 질문 답변 div --%>
        
        
        
        
        
      </div> <%--결제문의 div --%>
      
      
 </div> <%--상단 업데이트 제외 전체 div --%>
				</div>
			</div>
		</div>
		<div class="clear"></div>

		<%--MOVING's STORY --%>
<!-- 		<div id="amMovingsStory_wrap"> -->
<!-- 			<div id="amMovingsStory_text"> -->
<!-- 				<div class="amMovingsStory_title">Moving's Story</div> -->
<!-- 				<br /> -->

<!-- 				<p class="amMovingsStory_cont">Moving's Story 내용</p> -->
<!-- 			</div> -->
<!-- 		</div> -->


		<div class="clear"></div>

		<%--MOVING BRAND NEWS --%>
<!-- 		<div id="amBrandNews_wrap"> -->

<!-- 			<div id="amBrandNews_text"> -->
<!-- 				<div class="amBrandNews_title">MOVING BRAND NEWS !</div> -->
<!-- 				<br /> -->

<!-- 				<p class="amBrandNews_cont">MOVING BRAND NEWS 내용</p> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</div>



	<%-- FOOTER 호출 --%>
	<%@ include file="../include/footer.jsp"%>