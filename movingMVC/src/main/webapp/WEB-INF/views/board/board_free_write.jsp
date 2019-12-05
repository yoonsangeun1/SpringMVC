<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 글쓰기</title>
<script src="../resources/js/jquery.js"></script>
<script src="../resources/js/board_free.js"></script>
</head>
<body>
 <form method="post" action="/moving.com/board/free_write_ok"
 onsubmit="return free_check();">
  <table border="1">
   <caption>자유게시판 글쓰기</caption>
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
    <td><textarea name="content" id="content" 
    rows="10" cols="38"></textarea></td>
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










