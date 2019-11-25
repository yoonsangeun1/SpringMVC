<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>				<%--글쓰기 페이지 --%>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성</title>
<link rel="stylesheet" type="text/css" href="../css/board_writing.css" />
</head>
<body>
<div id="bWriting_out_body"> <%--바깥 전체 div --%>
 <div id="bWriting_body"> <%--안쪽 전체 div --%>
 
  <div id="bWriting_header"> <%-- 상단 h3 div --%>
   <h3>글 작성</h3>
  </div> <%-- 상단 h3 div --%>
  
  <div id="bWriting_container"> <%--글쓰기 페이지 div --%>
   <form method="post" action="#"><%--글쓰기 테이블  --%>
    <table border="1">
    
     <tr>
      <th>제목</th>
       <td>
        <input name="bWriting_name" id="bWriting_name" placeholder="제목을 입력해주세요." />
       </td>
     </tr>
     
     <tr>
      <td colspan="4">
       <textarea name="bWriting_cont" id="bWriting_cont" rows="10" cols="70"></textarea>
      </td>
     </tr>
     
    </table>
   </form>
  </div> <%--글쓰기 페이지 div --%>
 </div> <%--안쪽 전체 div --%>
</div> <%--바깥 전체 div --%>

<%@ include file="../include/footer.jsp"%>

