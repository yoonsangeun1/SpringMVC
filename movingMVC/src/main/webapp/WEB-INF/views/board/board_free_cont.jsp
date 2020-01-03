<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 내용</title>
<script src="../resources/js/jquery.js"></script>
<script src="../resourecs/js/board_free.js"></script>
<style>
 #modDiv{
   width:300px; height:100px;
   background-color:gray; 
   position:absolute; top:35%; left:30%;
   padding:10px; z-index:1000; /*postion 속성값이 
   absolute,fixed인 경우 사용됨. 이 속성은 요소가 겹쳐
   지는 순서를 제어할 수 있다.값이 큰것이 먼저 앞에 나옴
   */
 }
</style>
<script>
function delconfirm(){
	if(confirm("삭제하시겠습니까?")){
		location.replace('/moving.com/board/free_del?id=${bf.id}&page=${page}'); //yes
	}else{
		location.replace('/moving.com/board/free_cont?id=${bf.id}&page=${page}'); //no
	}
}//confirm()
</script>
</head>
<body>
 <table border="1">
  <caption>자유게시판 내용</caption>
  
  <tr>
   <th>글쓴이</th>
    <td>${bf.mUserVO.nickname}</td>
  </tr>
  
  <tr>
    <th>제목</th> <td>${bf.title}</td>  
  </tr>
  
  <tr>
   <th>내용</th> <td>${bf.content}</td>
  </tr>
  
  <tr>
   <th>조회수</th> <td>${bf.hit}</td>
  </tr>
  
  <tr>
   <th colspan="2">
   <input type="button" value="수정"
onclick="location=
'/moving.com/board/free_edit?id=${bf.id}&page=${page}';" /> 
<%-- board_cont?bno=번호&page=쪽번호 2개의 피라미터값
이 get방식으로 전달 --%>  
<input type="button" value="삭제"
onclick="delconfirm()" />

<c:if test="${(empty findField) && (empty findName)}"> <%--검색 전 --%>
<input type="button" value="목록" 
onclick="location='/moving.com/board/free?page=${page}';" />
</c:if>
<c:if test="${(!empty findField) || (!empty findName)}"> <%-- 검색 후 --%>
<input type="button" value="목록"
onclick="location='/moving.com/board/free?page=${page}&findField=${findField}&findName=${findName}';" />
</c:if>
   </th>  
  </tr>
 </table>
 
 <br/><hr/>
 <%-- [댓글 개수:<b>${bf.reply_cnt}</b> 개]--%>
 <br/> 
 <%-- 댓글기능 추가 --%>
 <%--댓글 수정화면 --%>
<div id="modDiv" style="display:none;">
<%-- display:none;해당영역 안보이게 함. --%>
 <div class="modal-title"></div><%--댓글번호--%>
 <div>
  <textarea rows="3" cols="30" 
  id="replytext"></textarea>
 </div>
 <div>
<button type="button"
 id="replyModBtn">댓글수정</button>
 <button type="button"
 id="replyDelBtn">댓글삭제</button>
 <button type="button" id="closeBtn"
 onclick="modDivClose();">닫기</button>
 </div>
</div>
<%--댓글등록화면 --%>
<H2>아작스 댓글 등록</H2>
<div>
 <div>
 댓글 작성자:<input name="replyer" id="newreplyer"
 size="10" />
 </div>
 <br/>
 <div>
  댓글 내용:<textarea rows="3" cols="30"
  name="replytext" id="newreplytext"></textarea>
 </div>
 <br/>
 <button id="replyAddBtn">댓글 등록</button>
</div>
<br/>
<hr/>
<br/>

 <%--댓글 목록 출력부분 --%>
 <ul id="replies"></ul>
 <script>
  var bno=${bfdto.normalPostVO.id};//게시물번호
  
  getAllList();//댓글목록함수 호출
  function getAllList(){
   $.getJSON("/controller/replies/all/"+bno,
		   function(data){
//get방식으로 json 데이터를 비동기식으로 가져와서 data
//에 저장
    var str="";
    $(data).each(function(){//each()는 jQuery에서 반복
    	//함수
str += "<li data-rno='"+this.rno+"' class='replyLi'>"
+this.rno+" : <span class='com'"
+"style='color:blue;font-weight:bold;'>"
+this.replytext+"</span> <button>댓글수정</button>"
+"</li><br/>";
    });
    $('#replies').html(str);//태그와 문자를 함게변경적용
   });	  
  }//getAllList()
  
  //댓글 삭제
  $('#replyDelBtn').on('click',function(){
	var rno=$('.modal-title').html();//댓글번호
	
	$.ajax({
		type:'delete',
		url:'/controller/replies/'+rno,
		headers:{
			"Content-Type":"application/json",
			"X-HTTP-Method-Override":"DELETE"
		},
		dataType:'text',
		success:function(data){
			if(data=='SUCCESS'){
				alert('댓글이 삭제되었습니다!');
				$('#modDiv').hide('slow');
				getAllList();
			}
		}
	});
  });
  
  //댓글 수정 완료
  $('#replyModBtn').on('click',function(){
	 var rno=$('.modal-title').html();//댓글번호
 var replytext=$('#replytext').val();//수정댓글내용
 
     $.ajax({
    	 type:'put',
    	 url:'/controller/replies/'+rno,
    	 headers:{
    		 "Content-Type":"application/json",
    		 "X-HTTP-Method-Override":"PUT"
    	 },
    	 data:JSON.stringify({replytext:replytext}),
    	 dataType:"text",
    	 success:function(data){
    		 if(data=='SUCCESS'){
    			 alert('댓글이 수정되었습니다!');
    			 $('#modDiv').hide('slow');
    			 getAllList();
    		 }
    	 }
     });
  });
  
  //댓글 수정화면
$('#replies').on('click','.replyLi button',function(){
	var reply=$(this).parent();
	var rno=reply.attr('data-rno');//댓글번호
	var replytext=reply.children('.com').text();
	//댓글내용
	
	$('.modal-title').html(rno);//댓글번호
	$('#replytext').val(replytext);//댓글내용
	$('#modDiv').show('slow');//해당 영역을 보이게함.
});
  
  //div 닫기
  function modDivClose(){
	  $('#modDiv').hide('slow');//해당영역을 숨김.
  }
  
  //댓글 추가
  $('#replyAddBtn').on('click',function(){
	 var replyer=$('#newreplyer').val();//댓글작성자
 var replytext=$('#newreplytext').val();//댓글내용
 
    $.ajax({//jQuery ajax
    	type:'post',//서버로 자료를 보내는 법
    	url:'/controller/replies',//매핑주소
    	headers:{
    		"Content-Type":"application/json",
"X-HTTP-Method-Override":"POST" //HTTP코드 맨머리 앞에
//추가적인 정보지정
    	},
    	dataType:'text',//문자열
    	data:JSON.stringify({//댓글작성자,내용이 json
    		bno:bno,//게시물번호
    		replyer:replyer,//댓글작성자
    		replytext:replytext //댓글내용
    	}),
    	success:function(data){//댓글저장 성공시 SUCCES
//S문자열 반환    		
    		if(data=='SUCCESS'){
    			alert('댓글이 등록되었습니다!');
    			getAllList();//댓글목록함수 호출
    		}
    	}
    });
  });
 </script>
 
 <script>
	 var msg="${msg}"; //컨트롤러에서 rttr로 설정한 키 이름을 EL로 받아와 저장했음.
	 
	 if(msg == "BOARD/FREE_EDIT"){
		 alert("글수정을 성공 했습니다!");
	 }//if boardFreeController에서 글쓰기 성공 시 출력.
	 
	 if(msg == "BOARD/FREE_CONT_X"){
		 alert("본인 게시글만 삭제 가능합니다!");
	 }//글삭제 시 본인 게시글만 삭제 가능하게 함.
 </script>
 
</body>
</html>












