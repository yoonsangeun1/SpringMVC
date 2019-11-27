<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크라우드 펀딩 글 작성 폼</title>
<script src="../js/jquery.js"></script>
<script src="../js/funding_write2.js"></script>
</head>
<body>
	<form method="post" action="" onsubmit="return check();">

		<!-- 상단 메뉴 -->
		<div id="fWrite_menu">
			<input type="button" id="mDefault" name="mdefault" value="기본 정보"
				onclick="location='funding_write.jsp';" /> <input type="button"
				id="mReward" name="mReward" value="리워드"
				onclick="location='funding_write2.jsp';" /> <input type="button"
				id="mDirector" name="mDirector" value="제작사"
				onclick="location='funding_write3.jsp';" /> <input type="button"
				id="mCal" name="mCal" value="정산"
				onclick="location='funding_write4.jsp';" /> <input type="button"
				id="mPreview" name="mPreview" value="미리보기"
				onclick="location='funding_cont.jsp';" /> <input type="button"
				id="mRequest" name="mRequest" value="검토 요청하기" />
			<%-- onclick="" 나중에 추가 			window.open메서드 미리보기 띄우기 나중에 cont완성되면 추가하기
			스토리 부분 추가해야할 것 같음.
			--%>
		</div>

		<div></div>

		<!-- 알림  -->
		<div id="fWrite_Alert">
			<table border="1">
				<tr>
					<td>알림</td>
					<td>30분 동안 입력 또는 작성 단계별 저장이 진행되지 않으면 자동으로 <br />로그아웃 되며, 저장하지
						않은 입력값은 반영 되지 않으니 주의하세요.
					</td>
				</tr>
			</table>
		</div>

		<%---------------------------------------------------------------------------------------------- --%>

		<!-- 본문 내용 : 리워드 -->
		<div id="fWrite2_cont">
			<table border="1">

				<%------첫번째 리워드------------------------------------------------ --%>
				<tr>
					<th rowspan="8">리워드</th>
					<td>금액</td>
					<td><input name="amount" size="12" /> 원 정렬순서 <input
						name="orderno" size="5" /> <input type="button" name="close"
						value="x" /></td>
				</tr>
				<tr>
					<td>리워드 명</td>
					<td><input name="reward" size="50" /></td>

				</tr>
				<tr>
					<td>상세 설명</td>
					<td><textarea rows="10" cols="38"></textarea></td>
				</tr>
				<tr>
					<td>옵션 조건</td>
					<td>
						<!-- 나중에 -->
					</td>
				</tr>
				<tr>
					<td>배송 조건</td>
					<td>배송료 <input name="money" size="12" /> <!-- 나중에 -->
					</td>
				</tr>
				<tr>
					<td>제한 수량</td>
					<td>리워드를 <input name="money" size="12" />개로 제한합니다.
					</td>
				</tr>
				<tr>
					<td>발송 시작일</td>
					<td>
						<!-- 나중에 -->
					</td>
				</tr>
				<tr>
					<th colspan="3"><input type="button" name="save" value="저장하기" />
					</th>
				</tr>
				<%-- 저장하기 누르면 ->유효성 검증 실행 -> 끝나면 -> 새 리워드 추가하기로 멘트 바뀜 -> 분기 줘야 함.--%>

				<%------두번째 리워드------------------------------------------------ --%>
				<tr>
					<th rowspan="8">리워드</th>
					<td>금액</td>
					<td><input name="amount" size="12" /> 원 정렬순서 <input
						name="orderno" size="5" /> <input type="button" name="close"
						value="x" /></td>
				</tr>
				<tr>
					<td>리워드 명</td>
					<td><input name="reward" size="50" /></td>

				</tr>
				<tr>
					<td>상세 설명</td>
					<td><textarea rows="10" cols="38"></textarea></td>
				</tr>
				<tr>
					<td>옵션 조건</td>
					<td>
						<!-- 나중에 -->
					</td>
				</tr>
				<tr>
					<td>배송 조건</td>
					<td>배송료 <input name="money" size="12" /> <!-- 나중에 -->
					</td>
				</tr>
				<tr>
					<td>제한 수량</td>
					<td>리워드를 <input name="money" size="12" />개로 제한합니다.
					</td>
				</tr>
				<tr>
					<td>발송 시작일</td>
					<td>
						<!-- 나중에 -->
					</td>
				</tr>
				<tr>
					<th colspan="3"><input type="button" name="save" value="저장하기" />
					</th>
				</tr>


				<%---------------------------------------------------------------------------------------------- --%>

				<tr height="50">
					<th colspan="3"><input type="submit" value="저장하기" /> <input
						type="button" value="다음 단계로>"
						onclick="location='funding_write3.jsp';" /> <input type="reset"
						value="초기화" /></th>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>