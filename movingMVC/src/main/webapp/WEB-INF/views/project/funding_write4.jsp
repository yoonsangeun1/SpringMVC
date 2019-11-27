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
				id="mPreview" name="mPreview" value="미리보기" onclick="location='funding_cont.jsp';" /> <input type="button"
				id="mRequest" name="mRequest" value="검토 요청하기" />
			<%-- onclick="" 나중에 추가 
			window.open메서드 미리보기 띄우기 나중에 cont완성되면 추가하기
						스토리 부분 추가해야할 것 같음.
			
			--%>
		</div>

		<div></div>

		<!-- 알림  -->
		<div id="fWrite_Alert">
			<table border="1">
				<tr>
					<td>알림</td>
					<td>30분 동안 입력 또는 작성 단계별 저장이 진행되지 않으면 자동으로 로그아웃 되며, 저장하지
						않은 입력값은 반영 되지 않으니 주의하세요.
					</td>
				</tr>
			</table>
		</div>

		<%---------------------------------------------------------------------------------------------- --%>

		<!-- 본문 내용 : 정산 -->
		<div id="fWrite4_cont">
			<table border="1">
				<tr>
					<th>
						<dl>
							<dt>수수료</dt>
						</dl>
					</th>
					<td>리워드 오픈 수수료는 10%(VAT별도)입니다.
						<ul>
							<li>부가 서비스 이용 시, 추가 수수료가 발생될 수 있습니다.</li>
							<li>리워드가 없는 기부후원 프로젝트의 경우, 수수료가 다르게 적용됩니다.</li>
							<li>자세한 내용은 와디즈 수수료 정책을 확인해주세요.</li>
						</ul> <input type="checkbox" name="warn" value="yes" />무딩 수수료 정책을
						확인하였습니다.
					</td>

				</tr>
				<tr>
					<th><dl>
							<dt>계약정보 - 1) 사업자 여부 및 정보</dt>
						</dl></th>
					<td><input type="radio" name="company" value="personal">개인
						사업자 <input type="radio" name="company" value="company">법인
						사업자 <br />
						<table>
							<tr>
								<td>사업자 번호</td>
								<td><input name="companyNo" id="companyNo" size="20" /></td>
							</tr>
							<tr>
								<td>사업자등록증 업로드</td>
								<td><input type="file" id="companyVarif" /></td>
							</tr>
							<tr>
								<td>통장 사본 업로드</td>
								<td><input type="file" id="checkVarif" /></td>
							</tr>
						</table> <!-- 나중에 --></td>
				</tr>
				<tr>
					<th><dl>
							<dt>계약정보 - 2) 대표자 정보</dt>
							<dd>전자 약정서는 대표자가 직접 확인하고, 서명을 진행해야함으로, 대표자의 이메일로 약정서가 발송됩니다.
								공동 대표의 경우는 모든 대표자의 메일로 발송되며, 모든 대표자가 확인하고 서명하여야 약정이 체결됩니다.</dd>
						</dl></th>
					<td><input name="ceo" id="ceo" size="10" /> <input
						name="ceoEmail" id="ceoEmail" size="20" /></td>
				</tr>

				<%---------------------------------------------------------------------------------------------- --%>

				<tr height="50">
					<th colspan="3"><input type="submit" value="저장하기" /> <input
						type="button" value="다음 단계로>"
						onclick="location='funding_write.jsp';" /> <input type="reset"
						value="초기화" /></th>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>