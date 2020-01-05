<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 수정</title>
<script src="../resources/js/board_free.js"></script>
<script src="../resources/editor/js/HuskyEZCreator.js" charset="UTF-8"></script>
</head>
<body>
 <form method="post" action="free_edit_ok"
 onsubmit="return free_check();">
 <%--히든으로 게시물 번호와 페이지번호값을 전달 --%>
 <input type="hidden" name="id" value="${bf.id}" />
 <input type="hidden" name="page" value="${page}" />
 
  <div id="bFree_edit_body"> <%-- 전체 div --%>
  
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
  
  <table border="1" id="bFree_edit_table" cellspacing="0">

   <tr>
    <th id="bFree_edit_nickname">닉네임 : </th>
    <th id="bFree_edit_nickname_2">${bf.mUserVO.nickname}</th>      
   </tr> 
   
   <tr>
    <th id="bFree_edit_title">&nbsp;&nbsp;&nbsp;제목 : </th>
 <td id="bFree_edit_title_2">
 <input name="title" id="title" size="56" maxlength="35" oninput="maxLengthCheck(this)" 
 value="${bf.title}" />
  </td>
   </tr>
   
   <tr>
    <td colspan="2" id="bFree_edit_content"><textarea name="content" id="content" 
    rows="10" cols="100">${bf.content}</textarea>
    
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
    <%--textarea에는 value 속성이 없다. --%>
   </tr> 
     
  </table>
  
  <div id="bFree_edit_button"> <%-- 버튼 div --%>
  
    <input type="submit" value="수정" class="bFree_edit_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4" />
    <input type="reset" value="취소" class="bFree_edit_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4" />
    <input type="button" value="목록" class="bFree_edit_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
    onclick="location='/moving.com/board/free?page=${page}';" />
    
  </div> <%-- 버튼 div --%>
  
  </div> <%-- 전체 div --%>
  
 </form>

<%@ include file="../include/footer.jsp"%>










