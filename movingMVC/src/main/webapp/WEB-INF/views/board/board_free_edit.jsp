<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 수정</title>
<script src="../resources/js/jquery.js"></script>
<script src="../resources/js/board_free.js"></script>
</head>
<body>
 <form method="post" action="free_edit_ok"
 onsubmit="return free_check();">
 <%--히든으로 게시물 번호와 페이지번호값을 전달 --%>
 <input type="hidden" name="free_id" value="${bf.free_id}" />
 <input type="hidden" name="page" value="${page}" />
 
  <table border="1">
   <caption>자유게시판 수정</caption>
   <tr>
    <th>글쓴이</th>
    <td><input name="free_name" id="free_name" size="14" 
    value="${bf.free_name}"/>
    </td>   
   </tr> 
   <tr>
    <th>제목</th>
  <td><input name="free_title" id="free_title" size="36" 
  value="${bf.free_title}" /></td>
   </tr>
   <tr>
    <th>글내용</th>
    <td><textarea name="free_cont" id="free_cont" 
    rows="10" cols="38">${bf.free_cont}</textarea></td>
    <%--textarea에는 value 속성이 없다. --%>
   </tr> 
   
   <tr>
    <th colspan="2">
    <input type="submit" value="수정" />
    <input type="reset" value="취소" />
    </th>
   </tr>
   
  </table>
 </form>
</body>
</html>










