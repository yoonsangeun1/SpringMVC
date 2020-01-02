<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 수정</title>
<script src="../resources/js/jquery.js"></script>
<script src="../resources/js/board_free.js"></script>
<script src="../resources/editor/js/HuskyEZCreator.js" charset="UTF-8"></script>
</head>
<body>
 <form method="post" action="free_edit_ok"
 onsubmit="return free_check();">
 <%--히든으로 게시물 번호와 페이지번호값을 전달 --%>
 <input type="hidden" name="id" value="${bf.id}" />
 <input type="hidden" name="page" value="${page}" />
 
  <table border="1" style="width:1024px">
   <caption>자유게시판 수정</caption>
   <tr>
    <th>글쓴이</th>
    <td>${bf.mUserVO.nickname}</td>   
   </tr> 
   <tr>
    <th>제목</th>
  <td><input name="title" id="title" size="36" 
  value="${bf.title}" /></td>
   </tr>
   <tr>
    <th>글내용</th>
    <td><textarea name="content" id="content" 
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
     
   <tr>
    <th colspan="2">
    <input type="submit" value="수정" />
    <input type="reset" value="취소" />
    <input type="button" value="목록" 
    onclick="location='/moving.com/board/free?page=${page}';" />
    </th>
   </tr>
   
  </table>
 </form>
</body>
</html>










