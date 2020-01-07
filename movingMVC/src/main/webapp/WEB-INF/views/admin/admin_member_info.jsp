<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 클릭했을 때 회원 목록 페이지 --%>
<div id="aMember_statusWrap">
	<div class="h2">
		<h2>회원 정보</h2>
	</div>
	
	<%-- 회원정보 표 --%>
	<form method="post" action="/moving.com/admin/member_edit_ok">
	<input type="hidden" name="page" value="${page}" />
	<table id="aMember_statusTable" border="1">
		<tr>
			<th rowspan="7">
				<a href="#">
					<img src="/moving.com/resources/images/member_profile.png" width="110" height="120"
					 alt="사진을 등록해 주세요.">
				</a>
			</th>
			<th> 
				회원번호 &nbsp;<input id="memberNumber" name="codeNo" value="${mu.id }" />
			</th>
			<th>
				ID &nbsp;<input id="memberID" name="userid" value="${mu.userid }" />
			</th>
		</tr>
		<tr>
			<th>
				이름 &nbsp;<input id="memberName" name="name" value="${mu.name }" />
			</th>
			<th>
				닉네임 &nbsp;<input id="memberNickname" name="nickname" value="${mu.nickname }" />
			</th>
		</tr>
		<tr>
			<th>
				선호 장르 1 &nbsp;
				<c:choose>
					<c:when test="${mu.genre01 == 'NULL'}">
						<input id="memberGenre01" name="genre01" />
					</c:when>
					<c:otherwise>
						<input id="memberGenre01" name="genre01" value=${mu.genre01 } />
					</c:otherwise>
				</c:choose>
				
			</th>
			<th>
				선호 장르 2 &nbsp;
				<c:choose>
					<c:when test="${mu.genre02 == 'NULL'}">
						<input id="memberGenre02" name="genre02" />
					</c:when>
					<c:otherwise>
						<input id="memberGenre02" name="genre02" value=${mu.genre02 } />
					</c:otherwise>
				</c:choose>
			</th>
		</tr>
		<tr>
			<th>
				선호 장르 3 &nbsp;
				<c:choose>
					<c:when test="${mu.genre03 == 'NULL'}">
						<input id="memberGenre03" name="genre03" />
					</c:when>
					<c:otherwise>
						<input id="memberGenre03" name="genre03" value=${mu.genre03 } />
					</c:otherwise>
				</c:choose>
			</th>
			<th>
				E-mail &nbsp;<input id="memberEMail" name="email" value="${mu.email }" />
			</th>
		</tr>
		<tr>
			<th>
				번호 &nbsp;<input id="memberPhone" name="phone" value="${mu.phone }" />
			</th>
			<th>
				공개여부 &nbsp;
				<select class="select" name="publishAvailability">
					<option value="0" <c:if test="${mu.publishAvailability == 0}">selected</c:if>>비공개</option>
					<option value="1" <c:if test="${mu.publishAvailability == 1}">selected</c:if>>공개</option>
				</select>
			</th>
		</tr>
		<tr>
			<th>
				회원 상태 &nbsp;
				<select class="select" name="userStatus">
					<option value="1" <c:if test="${mu.userStatus == 1}">selected</c:if>>활성회원</option>
					<option value="2" <c:if test="${mu.userStatus == 2}">selected</c:if>>휴면회원</option>
					<option value="0" <c:if test="${mu.userStatus == 0}">selected</c:if>>탈퇴회원</option>
				</select>
			</th>
			<th>
				회원 등급 &nbsp;
				<select class="select" name="userLv">
					<option value="1" <c:if test="${mu.userLv == 1}">selected</c:if>>일반회원</option>
					<option value="2" <c:if test="${mu.userLv == 2}">selected</c:if>>우수회원</option>
					<option value="3" <c:if test="${mu.userLv == 3}">selected</c:if>>제작사</option>
					<option value=4 <c:if test="${mu.userLv == 4}">selected</c:if>>관리자</option>
				</select>
			</th>
		</tr>
		<tr>
			<th>
				탈퇴 사유 &nbsp;
				<input name="delete" value="" /> 
			</th>
			<th>
				신고 누적횟수 &nbsp;
			</th>
		</tr>
		<tr>
			<th>
				<button type="button" class="btn" >사진 변경</button>
			</th>
			<th>
				사업자 이름 &nbsp;<input id="memberBusinessName" name="businessName" value="${mu.businessName }" />
			</th>
			<th>
				사업자 번호 &nbsp;<input id="memberBusinessRegisterNo" name="businessRegisterNo" value="${mu.businessRegisterNo }" />
			</th>
		</tr>
		<tr>
			<td colspan="3" align="center">
				<button type="submit">수정</button>
				<button type="reset">취소</button>
			</td>
		</tr>
	</table>
	</form>
</div>
