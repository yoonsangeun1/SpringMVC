<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ</title>
</head>
<body>

<div id="bFaq_body"> <%--FAQ 전체 div --%>
 
 <div id="bFaq_update"> <%--왼쪽 업데이트 사항. 공지,이벤트 등 div --%>
       <div class="bFaq_update_tit"> <%--업데이트--%>
           <h1>업데이트</h1>
       </div> <%--업데이트 --%>
       
        <div class="bFaq_update_list"> <%--업데이트 밑에 리스트들 div --%>
         <ul>
         
          <li>
           <a href="board_notice">공지사항</a>
          </li>
          
          <li>
           <a href="board_event">이벤트</a>
          </li>
          
          <li  class="bFaq_update_list_faq">
           <a href="board_faq">FAQ</a>
          </li>
          
         </ul>
        </div> <%--업데이트 밑에 리스트들 div --%>
      
      </div> <%--왼쪽 업데이트 사항. 공지,이벤트 등 div --%>
 
   <div id="bFaq_cont"> <%--상단 업데이트 제외 전체 div --%>
   
    <div id="bFaq_tap"> <%-- 문의 내용 탭 3개 버튼 div --%>
    
     <button id="bFaq_tap_no1" onclick="bFaq_tap_no1_check();"
     onmouseover="bFaq_tap_over(this);" onmouseout="bFaq_tap_out();">이용 문의</button>
     <button id="bFaq_tap_no2" onclick="bFaq_tap_no2_check();"
     onmouseover="bFaq_tap_over(this);" onmouseout="bFaq_tap_out();">후원 문의</button>
     <button id="bFaq_tap_no3" onclick="bFaq_tap_no3_check();"
     onmouseover="bFaq_tap_over(this);" onmouseout="bFaq_tap_out();">결제 문의</button>
     
    </div><%-- 문의 내용 3개 버튼 div --%>
 
   <div id="bFaq_no1_body" style="display:block;"> <%--이용 문의 div --%>
    <h3>홈페이지 이용문의</h3>
     <p>회원가입 및 사이트 이용에 관련된 안내입니다.</p>
    
   <button class="bFaq_no1_bt1" onclick="bFaq_no1_bt1();">펀딩 전 무엇을 준비해야하나요?
   </button>
    <div class="bFaq_no1_panel1" style="display:none"><%--이용문의 첫번째 버튼 답변 --%>
     <p>일단 [프로젝트 시작하기]를 통해 펀딩 작성을 시작해보세요.
     </p>
    </div><%--이용문의 첫번째 버튼 답변 --%>
    
    <button class="bFaq_no1_bt2" onclick="bFaq_no1_bt2();" style="display:block">
    심사 기준은 어떻게 되나요?</button> 
     <div class="bFaq_no1_panel2" style="display:none"> <%--이용문의 2번째 답변 div --%>
      <p>MOVING은 다음의 내용을 검토 후 오픈을 승인합니다.<br>
      	심사 가이드 라인<br>
          - 프로젝트의 목적 및 범위: 공공 가치를 훼손하지 않는 실제 구현 가능한 프로젝트인가<br>
          - 명확한 자금 사용 계획: 크라우드펀딩으로 자금을 보금하는 목적을 분명하게 밝혔는가<br>
          - 프로젝트 및 메이커의 신뢰성: 프로젝트 스토리가 사실인 정보만 작성했는가, 메이커 본인이 누구인지 밝혔는가<br>
          - 보상품(리워드) 제공 가능성: 프로젝트 메이커는 서포터에게 펀딩 금액에 합당하는 보상품(리워드)를 제공할 수 있는가
      </p>
     </div> <%-- 이용문의 2번째 답변 div --%>
     
     <button class="bFaq_no1_bt3" onclick="bFaq_no1_bt3();" style="display:block">
     수수료는 어떻게 되나요?
     </button>
      <div class="bFaq_no1_panel3" style="display:none"> <%--이용문의 3답변 질문 div --%>
       <p>
        MOVING에서 오픈하는 리워드 프로젝트는 기본 수수료 5%가 기본으로 발생합니다. (VAT 별도)
       </p>
      </div> <%--이용문의 3번째 답변 div --%>
      
      <button class="bFaq_no1_bt4" onclick="bFaq_no1_bt4();" style="display:block">
	자유 게시판에는 어떤 글을 쓸 수 있나요?
      </button>
       <div class="bFaq_no1_panel4" style="display:none"> <%--이용문의 4답변 질문 div --%>
        <p>
	     본인의 하고 싶은 이야기, 영화 이야기 등을 자유롭게 남겨주시면 됩니다.
	     <br>
	   단, 게시판 형식에 맞지 않는 글이 게시된 경우 운영자가 임의로 삭제 조치 및 성격에 맞는
	    게시판으로 이동할 수 있습니다(욕설 또는 비방글 포함)
	   <br>
	    펀딩,후원 관련 질문들은 홈페이지에 로그인 후 QnA 게시판의 글을 남겨주시길 바랍니다~    
        </p>
       </div> <%--이용문의 4답변 질문 div --%>
      </div> <%--이용 문의 div --%>
      
      <div id="bFaq_no2_body" style="display:none"> <%--후원문의 div --%>
       <h3>후원문의</h3>
        <p>MOVING에서 펀딩중인 영화와 관련된 안내입니다.</p>
       <button class="bFaq_no2_bt1" onclick="bFaq_no2_bt1();" style="display:block">
          후원은 어디에서 하나요?
       </button>
        <div class="bFaq_no2_panel1" style="display:none"> <%--후원문의 첫 질문 답변 div --%>
         <p>
         후원 하기를 원하는 페이지에서 후원하기 버튼 클릭 후 안내에 따라 절차를 이행해 주세요.
         </p>
        </div> <%--후원문의 첫 질문 답변 div --%>
        
       <button class="bFaq_no2_bt2" onclick="bFaq_no2_bt2();" style="display:block">
        후원 금액은 어디서 보나요?
       </button>
        <div class="bFaq_no2_panel2" style="display:none"> <%--후원문의 두번째 답변 div --%>
         <p>
         후원하는 페이지에서 후원금액을 확인 하실 수 있습니다.
         </p>
        </div> <%--후원문의 두번째 답변 div --%>
        
        <button class="bFaq_no2_bt3" onclick="bFaq_no2_bt3();" style="display:block">
         기간이 지났는데 후원을 못하나요?
        </button>
         <div class="bFaq_no2_panel3" style="display:none"> <%--후원문의 세번째 답변 div --%>
          <p>
          안타깝게도 후원 기간이 지난 펀딩은 이용이 불가합니다.
          </p>
         </div>
         
         <button class="bFaq_no2_bt4" onclick="bFaq_no2_bt4();" style="display:block">
          후원은 어떤 방식으로 이루어 지나요?
         </button>
          <div class="bFaq_no2_panel4" style="display:none"> <%--후원문의 네번째 답변 div --%>
           <p>
           고객님께서 원하시는 펀딩을 후원을 하시고, 목표 금액이 달성된 펀딩은 단계에 따라 작품 제작 진행이 이루어 집니다.
           </p>
          </div> <%--후원문의 네번째 답변 div --%>

      </div> <%--후원문의 div --%>
      
      <div id="bFaq_no3_body" style="display:none"> <%--결제문의 div --%>
       <h3>결제문의</h3>
        <p>
        	후원 결제와 결제 정보 관련 안내입니다.
        </p>
        
       <button class="bFaq_no3_bt1" onclick="bFaq_no3_bt1();" style="display:blcok">
       후원을 하려는데 혹시 MOVING만의 혜택이 있나요?
       </button>
        <div class="bFaq_no3_panel1" style="display:none"> <%--결제문의 첫 질문 답변 div --%>
         <p>
         공지사항의 제휴 할인 목록을 확인해주시면 혜택 받으실 수 있습니다.
         </p>
        </div> <%--결제문의 첫 질문 답변 div --%>
        
       <button class="bFaq_no3_bt2" onclick="bFaq_no3_bt2();" style="display:block">
       제휴 할인을 맺고 싶은데, 어떻게 해야 하나요?
       </button>
        <div class="bFaq_no3_panel2" style="display:none"> <%--결제문의 두번째 답변 div --%>
         <p>
          홈페이지 하단의 '제휴문의'를 클릭하시면 이메일로 문의 가능합니다.
         </p>
        </div> <%--결제문의 두번째 답변 div --%>
        
       <button class="bFaq_no3_bt3" onclick="bFaq_no3_bt3();" style="display:block">
       회원정보는 어떻게 수정하나요?
       </button>
        <div class="bFaq_no3_panel3" style="display:none"> <%--결제문의 세번째 답변 div --%>
         <p>
         1)홈페이지에서 로그인 후 오른쪽 상단 "내 정보"을 클릭합니다.
         <br>
         2)상단의 "마이페이지" 메뉴를 클릭하여 마이페이지로 이동 후, "내 정보 수정" 버튼을 클릭합니다.
         <br>
         3)정보보호를 위해 비밀번호를 입력합니다.
         <br>
         4)원하는 정보를 선택하여 수정 후 "확인"을 클릭합니다.
         </p>
        </div> <%--결제문의 세번째 답변 div --%>
        
       <button class="bFaq_no3_bt4" onclick="bFaq_no3_bt4();" style="display:block">
       회원탈퇴는 어떻게 하죠?
       </button>
        <div class="bFaq_no3_panel4" style="display:none" > <%-- 결제문의 네번째 답변 div --%>
         <p>
          로그인 → 내 정보 → 마이페이지 → 내 정보 수정에서 탈퇴 요청을 하실 수 있습니다.
         <br>
          *회원 탈퇴 시 등록한 모든 자료는 폐기되며 재가입 시 복구가 되지 않습니다. *
         <br>
         회원 탈퇴 요청 후 처리 기간이 일주일 정도 소요됩니다. 이 기간 중 이메일로 발송될 수 있으니 양해 부탁드립니다.
         <br>
         *회원 탈퇴하신 후,30일 내 재가입이 불가능합니다.
         </p>
        </div> <%-- 결제문의 네번째 답변 div --%>
        
      </div> <%--결제문의 div --%>
      
      
 </div> <%--상단 업데이트 제외 전체 div --%>
</div> <%--FAQ 전체 div --%>


<%@ include file="../include/footer.jsp"%>
