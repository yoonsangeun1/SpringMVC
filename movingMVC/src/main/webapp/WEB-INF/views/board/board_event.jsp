<%@ page contentType="text/html; charset=UTF-8"%>		<%--이벤트 페이지 --%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>			
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<script src="../js/board_event.js"></script> <%--임시로 넣어둠. 나중에 헤더에 넣고 삭제 --%>
</head>
<body>
 <div id=bEvent_body> <%--전체를 둘러쌀 div --%>
 
<div id="bEvent_update"> <%--왼쪽 업데이트 사항. 공지,이벤트 등 div --%>
		 <div class="bEvent_update_tit"> <%--업데이트--%>
		  	<h1>업데이트</h1>
		 </div> <%--업데이트 --%>
		 
		  <div class="bEvent_update_list"> <%--업데이트 밑에 리스트들 div --%>
		   <ul>
		   
		    <li>
		     <a href="notice">공지사항</a>
		    </li>
		    
		    <li class="bEvent_update_list_event">
		     <a href="event">이벤트</a>
		    </li>
		    
		    <li>
		     <a href="faq">FAQ</a>
		    </li>
		    
		   </ul>
		  </div> <%--업데이트 밑에 리스트들 div --%>
		
		</div> <%--왼쪽 업데이트 사항. 공지,이벤트 등 div --%>
		
 <div id="bEvent_header"> <%--이벤트 h3 넣는 div --%>
  <div class="bEvent">이벤트</div>
 </div>
 
  
  <div id="bEvent_list"> <%-- 이벤트 목록 list div --%>
  <div class="events" <%--onmouseover="bEvent_events_over(this);" --%>> <%--나중에 js적용해야함 --%>
   <a href="#" target="_blank"> <%--이벤트 클릭 시 이동, 임시로 네이버 지정함 --%>
    <span class="bEvent_image"> <%--이미지 span태그 --%>
     <img src="../images/bEvent01.png" />
    </span> <%--이미지 span태그 --%>
    
     <span class="bEvent_cont"> <%--이미지 옆 span태그 --%>
    <span class="bEvent_wrap"> <%--오른쪽 글씨 전체 span --%>
     <span class="bEvent_wrap_title"> <%--전체 안에 글씨 span --%>
     영화 후원 시 보상타임~
     </span>
    </span> 
    
    <span class="bEvent_wrap"> <%--날짜 넣을 전체 span --%>
     <span class="bEvent_date"> <%--오른쪽 날짜 전체 --%>
      2019-10-02 ~ 2019-10-28
     </span>
    </span> <%--날짜 넣을 span --%>
    </span> <%--이미지 옆 span태그 --%>
    
    <span class="bEvent_type"> <%-- 진행,종료 넣음 --%>
          진행
    </span> <%-- 진행,종료 넣음 --%>
   </a>
  </div>
  
  <div class="events">
   <a href="#" target="_blank"> <%--이벤트 클릭 시 이동, 임시로 네이버 지정함 --%>
    <span class="bEvent_image"> <%--이미지 span태그 --%>
     <img src="../images/bEvent02.png" />
    </span> <%--이미지 span태그 --%>
    
    <span class="bEvent_cont"> <%--이미지 옆 span태그 --%>
    <span class="bEvent_wrap">
     <span class="bEvent_wrap_title">
     접속하시고 보상 받아가세요~
     </span>
    </span>
    
    <span class="bEvent_wrap"> <%--날짜 넣을 span --%>
     <span class="bEvent_date">
      2019-11-02 ~ 2019-11-28
     </span>
    </span> <%--날짜 넣을 span --%>
    </span> <%--이미지 옆 span태그 --%>
    
    <span class="bEvent_type"> <%-- 진행,종료 넣음 --%>
          진행
    </span> <%-- 진행,종료 넣음 --%>
   </a>
  </div>
  
  <div class="events">
   <a href="#" target="_blank"> <%--이벤트 클릭 시 이동, 임시로 네이버 지정함 --%>
    <span class="bEvent_image"> <%--이미지 span태그 --%>
     <img src="../images/bEvent03.png" />
    </span> <%--이미지 span태그 --%>
    
    <span class="bEvent_cont"> <%--이미지 옆 span태그 --%>
    <span class="bEvent_wrap">
     <span class="bEvent_wrap_title">
     스포츠 영화 후원 이벤트
     </span>
    </span>
    
    <span class="bEvent_wrap"> <%--날짜 넣을 span --%>
     <span class="bEvent_date">
      2019-11-02 ~ 2019-11-28
     </span>
    </span> <%--날짜 넣을 span --%>
    </span> <%--이미지 옆 span태그 --%>
    
    <span class="bEvent_type"> <%-- 진행,종료 넣음 --%>
          진행
    </span> <%-- 진행,종료 넣음 --%>
   </a>
  </div>
  
  <div class="events">
   <a href="#" target="_blank"> <%--이벤트 클릭 시 이동, 임시로 네이버 지정함 --%>
    <span class="bEvent_image"> <%--이미지 span태그 --%>
     <img src="../images/bEvent04.png" />
    </span> <%--이미지 span태그 --%>
    
    <span class="bEvent_cont"> <%--이미지 옆 span태그 --%>
    <span class="bEvent_wrap">
     <span class="bEvent_wrap_title">
     APP 이벤트
     </span>
    </span>
    
    <span class="bEvent_wrap"> <%--날짜 넣을 span --%>
     <span class="bEvent_date">
      2019-11-02 ~ 2019-11-28
     </span>
    </span> <%--날짜 넣을 span --%>
    </span> <%--이미지 옆 span태그 --%>
    
    <span class="bEvent_type"> <%-- 진행,종료 넣음 --%>
          진행
    </span> <%-- 진행,종료 넣음 --%>
   </a>
  </div>
  
  <div class="events">
   <a href="#" target="_blank"> <%--이벤트 클릭 시 이동, 임시로 네이버 지정함 --%>
    <span class="bEvent_image"> <%--이미지 span태그 --%>
     <img src="../images/bEvent05.png" />
    </span> <%--이미지 span태그 --%>
    
    <span class="bEvent_cont"> <%--이미지 옆 span태그 --%>
    <span class="bEvent_wrap">
     <span class="bEvent_wrap_title">
     신규 회원 가입 시 수수료 면제
     </span>
    </span>
    
    <span class="bEvent_wrap"> <%--날짜 넣을 span --%>
     <span class="bEvent_date">
      2019-11-02 ~ 2019-11-10
     </span>
    </span> <%--날짜 넣을 span --%>
    </span> <%--이미지 옆 span태그 --%>
    
    <span class="bEvent_type"> <%-- 진행,종료 넣음 --%>
          진행
    </span> <%-- 진행,종료 넣음 --%>
   </a>
  </div>
  
  <div class="events">
   <a href="#" target="_blank"> <%--이벤트 클릭 시 이동, 임시로 네이버 지정함 --%>
    <span class="bEvent_image"> <%--이미지 span태그 --%>
     <img src="../images/bEvent06.png" />
    </span> <%--이미지 span태그 --%>
    
    <span class="bEvent_cont"> <%--이미지 옆 span태그 --%>
    <span class="bEvent_wrap">
     <span class="bEvent_wrap_title">
     미션완료 하시고 보상 받아가세요~
     </span>
    </span>
    
    <span class="bEvent_wrap"> <%--날짜 넣을 span --%>
     <span class="bEvent_date">
      2019-10-25 ~ 2019-11-10
     </span>
    </span> <%--날짜 넣을 span --%>
    </span> <%--이미지 옆 span태그 --%>
    
    <span class="bEvent_type"> <%-- 진행,종료 넣음 --%>
          진행
    </span> <%-- 진행,종료 넣음 --%>
   </a>
  </div>
  
  <div class="events">
   <a href="#" target="_blank"> <%--이벤트 클릭 시 이동, 임시로 네이버 지정함 --%>
    <span class="bEvent_image"> <%--이미지 span태그 --%>
     <img src="../images/bEvent07.png" />
    </span> <%--이미지 span태그 --%>
    
    <span class="bEvent_cont"> <%--이미지 옆 span태그 --%>
    <span class="bEvent_wrap">
     <span class="bEvent_wrap_title">
     포인트 더블!
     </span>
    </span>
    
    <span class="bEvent_wrap"> <%--날짜 넣을 span --%>
     <span class="bEvent_date">
      2019-10-25 ~ 2019-11-10
     </span>
    </span> <%--날짜 넣을 span --%>
    </span> <%--이미지 옆 span태그 --%>
    
    <span class="bEvent_type"> <%-- 진행,종료 넣음 --%>
          진행
    </span> <%-- 진행,종료 넣음 --%>
   </a>
  </div>
  
  <div class="events">
   <a href="#" target="_blank"> <%--이벤트 클릭 시 이동, 임시로 네이버 지정함 --%>
    <span class="bEvent_image"> <%--이미지 span태그 --%>
     <img src="../images/bEvent08.png" />
    </span> <%--이미지 span태그 --%>
    
    <span class="bEvent_cont2"> <%--이미지 옆 span태그 --%>
    <span class="bEvent_wrap">
     <span class="bEvent_wrap_title">
     하반기 업데이트 소식 이벤트
     </span>
    </span>
    
    <span class="bEvent_wrap"> <%--날짜 넣을 span --%>
     <span class="bEvent_date">
      2019-10-25 ~ 2019-11-02
     </span>
    </span> <%--날짜 넣을 span --%>
    </span> <%--이미지 옆 span태그 --%>
    
    <span class="bEvent_type2"> <%-- 진행,종료 넣음 --%>
      종료
    </span> <%-- 진행,종료 넣음 --%>
   </a>
  </div>
  
  <div class="events">
   <a href="#" target="_blank"> <%--이벤트 클릭 시 이동, 임시로 네이버 지정함 --%>
    <span class="bEvent_image"> <%--이미지 span태그 --%>
     <img src="../images/bEvent09.png" />
    </span> <%--이미지 span태그 --%>
    
    <span class="bEvent_cont2"> <%--이미지 옆 span태그 --%>
    <span class="bEvent_wrap">
     <span class="bEvent_wrap_title">
     후원하시고 선물도 받아가세요~
     </span>
    </span>
    
    <span class="bEvent_wrap"> <%--날짜 넣을 span --%>
     <span class="bEvent_date">
      2019-10-25 ~ 2019-11-02
     </span>
    </span> <%--날짜 넣을 span --%>
    </span> <%--이미지 옆 span태그 --%>
    
    <span class="bEvent_type2"> <%-- 진행,종료 넣음 --%>
          종료
    </span> <%-- 진행,종료 넣음 --%>
   </a>
  </div>
  
  <div class="events">
   <a href="#" target="_blank"> <%--이벤트 클릭 시 이동, 임시로 네이버 지정함 --%>
    <span class="bEvent_image"> <%--이미지 span태그 --%>
     <img src="../images/bEvent10.png" />
    </span> <%--이미지 span태그 --%>
    
    <span class="bEvent_cont2"> <%--이미지 옆 span태그 --%>
    <span class="bEvent_wrap">
     <span class="bEvent_wrap_title">
     국가대표의 열정을 응원해주세요!
     </span>
    </span>
    
    <span class="bEvent_wrap"> <%--날짜 넣을 span --%>
     <span class="bEvent_date">
      2019-10-10 ~ 2019-10-23
     </span>
    </span> <%--날짜 넣을 span --%>
    </span> <%--이미지 옆 span태그 --%>
    
    <span class="bEvent_type2"> <%-- 진행,종료 넣음 --%>
          종료
    </span> <%-- 진행,종료 넣음 --%>
   </a>
  </div> 
  </div> <%-- 이벤트 목록 list div --%>
  
    <div id="bEvent_writing"> <%-- 글 쓰기 폼 div --%>
      <input type="button" class="bEvent_writing_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4" 
      value="글 쓰기" />
    </div> <%-- 글 쓰기 폼 div --%>
  
  <div style="clear:both"></div>
  
  <div id="bEvent_pagination"> <%--페이지 순번 --%>
		 <a href="board_event">첫페이지</a>
		 <a href="board_event">&lt;&lt;</a>
		 <a href="board_event">1</a>
		 <a href="board_event">2</a>
		 <a href="board_event">3</a>
		 <a href="board_event">4</a>
		 <a href="board_event">5</a>
		 <a href="board_event">6</a>
		 <a href="board_event">7</a>
		 <a href="board_event">8</a>
		 <a href="board_event">9</a>
		 <a href="board_event">10</a>
		 <a href="board_event">&gt;&gt;</a>
		 <a href="board_event">끝페이지</a>
		</div> <%--페이지 순번 --%>
  
  <div id="bEvent_search"> <%--검색 구간 전체 div --%>
   <select name="bEvent_combo" id="bEvent_combo">
    <option value="title_content">제목+내용</option>
    <option value="title">제목</option>
    <option value="content">내용</option>
    <option value="user_name">이름</option>
    <option value="tag">태그</option>
   </select>
   
   <div id="bEvent_input"> <%--텍필,버튼 --%>
    <input id="search_text" name="search_text" size="20" />
    <input type="submit" class="search_btn button_wce8e8e8" value="검색" />
   </div> <%--텍필,버튼 --%>
   
  </div> <%--검색 구간 전체 div --%>
 </div> <%--전체 div --%>

<%@ include file="../include/footer.jsp"%>