<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/admin_header.jsp" %>
<div id="aBoard_wrap">

	<div class="h1">
		<h1>게시글 관리</h1>
	</div>
	
	<%-- 게시판 글 목록표 생성 --%>
	<table id="aBoard_table" border="1">
		<tr class="non">
			<td colspan="2">
			<form method="get" action="/moving.com/admin/board?codeNo=${codeNo}" style="float: left;">
				<select class="slt" name="codeNo">
					<option value="0"
						<c:if test="${codeNo==0 }"> ${'selected' }</c:if>>전체</option>
					<option value="10001"
						<c:if test="${codeNo==10001 }"> ${'selected' }</c:if>>공지사항</option>
					<option value="10002"
						<c:if test="${codeNo==10002 }"> ${'selected' }</c:if>>자유게시판</option>
					<option value="10003"
						<c:if test="${codeNo==10003 }"> ${'selected' }</c:if>>FAQ</option>
					<option value="10004"
						<c:if test="${codeNo==10004 }"> ${'selected' }</c:if>>공모전</option>
					<option value="10005"
						<c:if test="${codeNo==10005 }"> ${'selected' }</c:if>>회원 프로필</option>
					<option value="10006"
						<c:if test="${codeNo==10006 }"> ${'selected' }</c:if>>Q&A</option>
				</select>
				
				<button type="submit" >이동</button>
			</form>
			</td>
			
			<td colspan="4" align="right" style="text-align: right">게시물 수  : ${boardCount }개</td>
		</tr>
		<tr>
			<th scope="col" class="aBT_check"><input type="checkbox" name="aBoard_check" id="ckAll" value="checkAll" /></th>
			<th scope="col" class="aBT_no">번호</th>
			<th scope="col" class="aBT_title">제목</th>
			<th scope="col" class="aBT_writer">작성자</th>
			<th scope="col" class="aBT_date">작성일</th>
			<th scope="col" class="aBT_hit">조회수</th>
		</tr>
		<c:if test="${!empty nplist}">
			<c:forEach var="n" items="${nplist }">
			<input type="hidden" name="no_${n.id}" value="${n.id }"/>
			<tr data-value="${n.id }" class="tag" >
				<td class="bCheck" data-value="${n.id }"><input type="checkbox" name="checkBoard" value="${n.id }" data-value="${n.id }" class="chk"/></td>
				<td class="bNo" data-value="${n.id }">${n.id }</td>
				<td class="bTitle" data-value="${n.id }">${n.title }</td>
				<td class="bUserId" data-value="${n.id }">${n.mUserVO.nickname }</td>
				<td class="bRegisterDate" data-value="${n.id }">${n.registerDate }</td>
				<td class="bHit" data-value="${n.id }">${n.hit }</td>
			</tr>
			</c:forEach>
		</c:if>
		
		<c:if test="${empty nplist }">
			<tr>
				<td colspan="6" align="center">등록된 게시글이 없습니다!</td>
			</tr>
		</c:if>
<!-- 		<tr> -->
<!-- 			<td class="aBT_notice">공지<i class="fas fa-exclamation"></i></td> -->
<!-- 			<td class="aBT_left"><a href="#" class="notice"><span>[필독]글 작성시 기본 준수 사항입니다.</a></span></td> -->
<!-- 			<td>바악도옹수우</td> -->
<!-- 			<td>2019.10.15</td> -->
<!-- 			<td>3</td> -->
<!-- 		</tr> -->
		
<!-- 		<tr> -->
<!-- 			<td>9</td> -->
<!-- 			<td class="aBT_left"><a href="#"><span>안녕하세요. 저는 박동수입니다.</span></a></td> -->
<!-- 			<td>바악도옹수우</td> -->
<!-- 			<td>2019.10.15</td> -->
<!-- 			<td>3</td> -->
<!-- 		</tr> -->
		
<!-- 		<tr> -->
<!-- 			<td>8</td> -->
<!-- 			<td class="aBT_left"><a href="#"><span>안녕하세요. 저는 박동수입니다.</span></a></td> -->
<!-- 			<td>바악도옹수우</td> -->
<!-- 			<td>2019.10.15</td> -->
<!-- 			<td>3</td> -->
<!-- 		</tr> -->
		
<!-- 		<tr> -->
<!-- 			<td>7</td> -->
<!-- 			<td class="aBT_left"><a href="#"><span>안녕하세요. 저는 박동수입니다.</span></a></td> -->
<!-- 			<td>바악도옹수우</td> -->
<!-- 			<td>2019.10.15</td> -->
<!-- 			<td>3</td> -->
<!-- 		</tr> -->
		
<!-- 		<tr> -->
<!-- 			<td>6</td> -->
<!-- 			<td class="aBT_left"><a href="#"><span>당신이 원하는 바로 그것! 지금 당장 클릭해서 확인하세요!</span></a></td> -->
<!-- 			<td>바악지인우우</td> -->
<!-- 			<td>2019.10.14</td> -->
<!-- 			<td>1</td> -->
<!-- 		</tr> -->
		
<!-- 		<tr> -->
<!-- 			<td>5</td> -->
<!-- 			<td class="aBT_left"><a href="#"><span>무엇이든 물어보세요. 인터넷 지식백과사전입니다.</span></a></td> -->
<!-- 			<td>유운사앙으은</td> -->
<!-- 			<td>2019.10.14</td> -->
<!-- 			<td>0</td> -->
<!-- 		</tr> -->
		
<!-- 		<tr> -->
<!-- 			<td>4</td> -->
<!-- 			<td class="aBT_left"><a href="#"><span>(공모전 수상)시간을 되돌릴수만 있다면.. 과거로 돌아간 한 남자의 감동실화 [타임머신]</span></a></td> -->
<!-- 			<td>소옹혀언버엄</td> -->
<!-- 			<td>2019.10.14</td> -->
<!-- 			<td>12</td> -->
<!-- 		</tr> -->
		
<!-- 		<tr> -->
<!-- 			<td>3</td> -->
<!-- 			<td class="aBT_left"><a href="#"><span>(영화 포스팅)넌 내게 모욕감을 줬어.. 김지운 감독의 느와르 액션! [달콤한 인생]</span></a></td> -->
<!-- 			<td>야앙요옹주운</td> -->
<!-- 			<td>2019.10.14</td> -->
<!-- 			<td>7</td> -->
<!-- 		</tr> -->
		
<!-- 		<tr> -->
<!-- 			<td>2</td> -->
<!-- 			<td class="aBT_left"><a href="#"><span>님들 여기 영화 등록하고싶은데 어떻게 하나여?</span></a></td> -->
<!-- 			<td>하아이이매앤</td> -->
<!-- 			<td>2019.10.14</td> -->
<!-- 			<td>19</td> -->
<!-- 		</tr> -->
		
<!-- 		<tr> -->
<!-- 			<td>1</td> -->
<!-- 			<td class="aBT_left"><a href="#"><span>행님덜 내일 훈련소가는데 꿀팁 공유점해주세여ㅠㅠ 하..</span></a></td> -->
<!-- 			<td>호옹채애후운</td> -->
<!-- 			<td>2019.10.14</td> -->
<!-- 			<td>67</td> -->
<!-- 		</tr> -->
		
	</table>
	<div class="editBtn">
			<button type="button" onclick="location.href='board/notice_write'" class="but">글쓰기</button>
			<button type="button" id="delBtn" class="but" >삭제</button>
	</div>
	
	<%-- 페이징 목록 --%>
	<div id="aBoard_pageCtrl">
		<%-- 검색전 페이징 --%>
		<c:if test="${(empty findField) && (empty findName)}">
			<c:if test="${page<=1 }">[이전]&nbsp;</c:if>
			<c:if test="${page>1 }"><a href="board?codeNo=${codeNo }&page=${page-1 }">[이전]</a>&nbsp;</c:if>
			
			<%-- 현재 쪽번호 --%>
			<c:forEach var="a" begin="${startpage }" end="${endpage }" step="1">
							
				<%-- 현재 쪽번호가 선택된 경우 --%>
				<c:if test="${a==page }"><${a }></c:if>
				
				<%-- 현재 쪽번호가 선택되지 않은 경우 --%>
				<c:if test="${a != page }"><a href="board?codeNo=${codeNo }&page=${a}">[${a }]</a>&nbsp;</c:if>
			</c:forEach>
							
			<c:if test="${page >= maxpage }">[다음]</c:if>
			<c:if test="${page < maxpage }"><a href="board?codeNo=${codeNo }&page=${page+1 }">[다음]</a></c:if>
		</c:if>
						
		<%-- 검색후 페이징 --%>
		<c:if test="${(!empty findField) || (!empty findName) }">
			<c:if test="${page<=1 }">[이전]&nbsp;</c:if>
			<c:if test="${page>1 }">
				<a href="board?codeNo=${codeNo }&age=${page-1 }&findField=${findField}&findName=${findName}">[이전]</a>&nbsp;
			</c:if>
							
		<%-- 현재 쪽번호 --%>
		<c:forEach var="a" begin="${startpage }" end="${endpage }" step="1">
								
			<%-- 현재 쪽번호가 선택된 경우 --%>
			<c:if test="${a==page }"><${a}></c:if>
								
			<%-- 현재 쪽번호가 아닌 경우 --%>
			<c:if test="${a!=page }">
				<a href="board?codeNo=${codeNo }&page=${a}&findField=${findField}&findName=${findName}">[${a}]</a>&nbsp;
			</c:if>
								
		</c:forEach>
							
		<c:if test="${page >= maxpage }">[다음]</c:if>
		<c:if test="${page < maxpage}">
			<a href="board?codeNo=${codeNo }&page=${page+1}&findField=${findField}&findName=${findName}">[다음]</a>
		</c:if>
		</c:if>
		<%-- 검색후 페이징 --%>
	</div>
	
	<%-- 검색창, 검색조건 콤보박스 --%>
	<div id="aBoard_search">
		<form action="/moving.com/admin/board?codeNo=${codeNo}&findField=${findField}&findName=${findName}">
			<input type="hidden" name="codeNo" value="${codeNo }" />
			<select class="select" name="findField">
				<option value="title+content"
					<c:if test="${findField=='title+content' }">${'selected' }</c:if>>제목+내용</option>
				<option value="title"
					<c:if test="${findField=='title' }">${'selected' }</c:if>>제목</option>
				<option value="content"
					<c:if test="${findField=='content' }">${'selected' }</c:if>>내용</option>
				<option value="nickname"
					<c:if test="${findField=='nickname' }">${'selected' }</c:if>>작성자</option>
			</select>
		
			<%-- 검색 텍스트필드, 버튼 --%>
			<input type="text" name="findName" class="input_box" placeholder="검색어를 입력하세요." value="${findName }" />
			<button type="submit" class="btn">검색</button>
		</form>
	
		
	</div>
</div>
<script>
	$(function(){
		// 체크박스 전체 선택&해제
		$('#ckAll').click(function(){
			if($('#ckAll').prop("checked")){
				$("input[type=checkbox]").prop("checked",true);
			}else{
				$("input[type=checkbox]").prop("checked",false);
			}
		}); //click()
		
		// 체크박스 개별선택시 전체선택 해제
		$(".chk").click(function(){
			$('#ckAll').prop("checked",false);
		}); // click()
		
// 		// 삭제버튼 기능 추가
// 		$('#delBtn').click(function(){
// 			if(confirm('삭제하시겠습니까?')){
// 				$("input[name=checkBoard:checked]").each(function(){
// 					var tr_value = $(checkBoard).val();
// 					var tr=$("tr[data-value='"+tr_value+"']");
// 				});
// 			}else{
// 				return false;
// 			}
// 		});
	
		// 삭제버튼 삭제기능 추가
		$("#delBtn").click(function() {
			var confirmOk = confirm('삭제하시겠습니까?');
			
			
				var checkArr = new Array();
				
				$("input[name=checkBoard]:checked").each(function() {
					checkArr.push($(this).attr('data-value'));
					var n_id = $(this).attr('data-value');
					
					$.ajax({
						url : "/moving.com/admin/board/board_del?codeNo=${codeNo}&id="+n_id+"&page=${page}",
						type : "get",
						data : { checkBoard : checkArr},
						success : function(){
							//alert('삭제');
// 							location.href = "/moving.com/admin/board?codeNo=0"
						}
						
					});
				});
			//if(confirmOk){
				alert('삭제 완료되었습니다!');
				
				location.href = "/moving.com/admin/board?codeNo=0"
			//}
			
		}); // click()
		
		$(".tag :not(:first-child)").click(function(){
			var n_id = $(this).attr('data-value');
			location.href="board/board_cont?codeNo=${codeNo}&id="+n_id+"&page=${page}&findField=${findField}&findName=${findName}";
		}) // click()
	});
	
	var msg = "${msg}"; // 자바스크립트에서 스프링컨트롤러에서 설정한 키이름을 EL(표현언어)로 참조 가능하다.
	if (msg == 'WRITE') {
		alert("게시물 저장에 성공했습니다!");
	}
	if (msg == "EDIT") {
		alert("게시물 수정에 성공했습니다!");
	}
	if (msg == 'DEL') {
		alert('게시물 삭제에 성공했습니다!');
	}
	
</script>
<%@ include file="../include/admin_footer.jsp" %>