<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 내용</title>
</head>
<body>
 <div> <%--공지사항 내용 전체 div --%>
  <div> <%-- 테이블 div --%>
   <table border="1">
   
    <tr>
     <th>번호</th> <td>${bno.notice_no}</td>
     <th>제목</th> <td>${bno.notice_title}</td>
     <th>글쓴이</th> <td>${bno.notice_author}</td>
     <th>날짜</th> <td>${bno.notice_time}</td> <!-- time이던 date이던 수정 할 예정 -->
     <th>조회수</th> <td>${bno.notice_hit}</td>
    </tr>
    
    <tr>
     <th>내용</th>
    </tr>
    
    <tr>
     <td>${bno.notice_cont}</td>
    </tr>
    
    <tr>
     <th colspan="5">
      <input type="button" value="수정" />
      <input type="button" value="삭제" />
      <input type="button" value="목록" />
     </th>
    </tr>
    
   </table>
  </div> <%-- 테이블 div --%>
 </div> <%--공지사항 내용 전체 div --%>

<%@ include file="../include/footer.jsp" %>