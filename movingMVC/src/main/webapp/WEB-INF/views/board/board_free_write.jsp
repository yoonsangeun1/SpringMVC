<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 글쓰기</title>
<script src="../resources/js/board_free.js"></script>
<script src="../resources/editor/js/HuskyEZCreator.js" charset="UTF-8"></script>
</head>
<body>
 <form method="post" action="/moving.com/board/free_write_ok"
 onsubmit="return free_check();">
 
 <div id="bFree_write_body"> <%--body 전체 div --%>
 
 <div id="bFree_community">
		<%-- 커뮤니티 배우모집,시나리오 공모 등  div --%>
		<div class="bFree_community_tit">
			<%--커뮤니티--%>
			<h1>커뮤니티</h1>
		</div>
		<%--커뮤니티 --%>

		<div class="bFree_community_list">
			<%--커뮤니티 밑에 리스트들 div --%>
			<ul>

				<li><a href="actors">배우 프로필</a></li>

				<li><a href="contest">시나리오 공모</a></li>

				<li class="bFree_community_list_free"><a href="free">자유게시판</a></li>

				<li><a href="qna">QnA</a> <%--QnA 작업해야 됨 --%></li>

			</ul>
		</div>
		<%--커뮤니티 밑에 리스트들 div --%>

	</div>
	<%--커뮤니티 배우모집,시나리오 공모 등 div --%>
 
 
  <table border="1" id="bFree_write_table" cellspacing="0">
  
   <tr>
    <th id="bFree_write_nickname">닉네임 : </th>
    <th id="bFree_write_nickname_2">${nickname}</th>   
   </tr> 
   
   <tr>
    <th id="bFree_write_title">&nbsp;&nbsp;&nbsp;제목 : </th>
  <td id="bFree_write_title_2">
  <input name="title" id="title" size="56" maxlength="35" oninput="maxLengthCheck(this)" />
  </td>
   </tr>
   
   <tr>
    <td colspan="2" id="bFree_write_content"><textarea name="content" id="content"
    rows="10" cols="100"></textarea>
    
<script type="text/javascript">
	var oEditors = []; //전역변수
	
	nhn.husky.EZCreator.createInIFrame({ //스마트 에디터 프레임 생성
    	oAppRef: oEditors,
    	elPlaceHolder:"content",
    	sSkinURI: "../resources/editor/SmartEditor2Skin.html",
    	bUseToolbar : true,		//툴 바 사용 여부
    	bUseVerticalResizer : true,  //입력창 크기 조절 사용 여부
    	bUseVerticalResizer : true, //모드 탭(Editor | HTML | TEXT ) 사용 여부
	});
</script>

    </td>
   </tr> 
   
  </table>
  
  <div id="bFree_write_button"> <%--버튼 div --%>
  
    <input type="submit" value="저장" class="bFree_write_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"/>
    <input type="reset" value="취소" class="bFree_write_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4" />
    <input type="button" value="목록" class="bFree_write_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
    onclick="location='/moving.com/board/free?page=${page}';" />
  
  </div> <%--버튼 div --%>
  
  </div> <%--body 전체 div --%>
  
 </form> 
 
 <script>  
 	function maxLengthCheck(object){ //input number는 maxlength가 안됨. 스크립트로 maxlength 지정
	  if (object.value.length > object.maxLength){
	   	object.value = object.value.slice(0, object.maxLength);
	    }//if
	  }//function()
 </script>

<%@ include file="../include/footer.jsp"%>










