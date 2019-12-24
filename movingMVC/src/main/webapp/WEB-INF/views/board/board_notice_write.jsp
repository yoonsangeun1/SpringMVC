<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 글쓰기</title>
<script src="../resources/js/jquery.js"></script>
<script src="../resources/js/board_notice.js"></script>
<script src="../resources/editor/js/HuskyEZCreator.js" charset="UTF-8"></script>
</head>
<body>
 <form method="post" action="/moving.com/board/notice_write_ok"
 onsubmit="return notice_check();">
  <table border="1" style="width:1024px"> <!-- width 임시로 넣어둠. -->
   <caption>공지사항 글쓰기</caption>
   <tr>
    <th>글쓴이</th>
    <td><div class="nickname">${nickname}</div> <%--input? --%>
    </td>   
   </tr> 
   <tr>
    <th>제목</th>
  <td><input name="title" id="title" size="36" /></td>
   </tr>
   <tr>
    <th>글내용</th>
    <td><textarea name="content" id="content" onkeyUp="checkByte(this.form);"
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
   
   <tr>
    <th colspan="2">
    <input type="submit" value="저장" />
    <input type="reset" value="취소" />
    </th>
   </tr>
  </table>
 </form> 
</body>
</html>










