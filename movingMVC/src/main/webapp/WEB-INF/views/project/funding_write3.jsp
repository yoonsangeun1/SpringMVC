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
				id="mCal" name="mCal" value="정산" onclick="location='funding_write4.jsp';" /> <input type="button"
				id="mPreview" name="mPreview" value="미리보기" onclick="location='funding_cont.jsp';" /> <input type="button"
				id="mRequest" name="mRequest" value="검토 요청하기" />
			<%-- onclick="" 나중에 추가			window.open메서드 미리보기 띄우기 나중에 cont완성되면 추가하기
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

		<!-- 본문 내용 : 제작사-->
		<div id="fWrite3_cont">
			<table border="1">
				<tr>
					<th colspan="2">아래에 입력한 모든 정보는 프로젝트 페이지에 노출되는 정보이니, 서포터와의 소통과
						응대가 가능한 정확한 정보를 입력해주세요.</th>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>제작사 이름(법인명)</dt>
						</dl>
					</th>
					<td><input name="director" id="director" size="20" /></td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>프로필 이미지</dt>
							<dd>메이커 프로필 영역에 노출되는 내용으로 로고나 메이커님의 사진을 넣어주세요.</dd>
						</dl>
					</th>
					<td><input type="file" name="profileImg" id="profileImg" />
						3MB 이하의 사진만 사용할 수 있습니다.</td>
				</tr>
				<tr>
					<td>
						<dl>
							<dt>소셜 네트워크</dt>
							<dd>서포터가 확인할 수 있는 메이커님의 페이스북, 인스타그램 링크 등을 등록해주세요.(최소 1개 등록)
							</dd>
						</dl>
					</td>
					<td>
						<ul>
							<li><img src="../images/test.png" width="20" height="20"
								alt="로고 이미지" />https://www.facebook.com/<input type="text"
								name="link01" id="link01" size="20" /></li>
							<li><img src="../images/test.png" width="20" height="20"
								alt="로고 이미지" />https://twitter.com//<input type="text"
								name="link02" id="link02" size="20" /></li>
							<li><img src="../images/test.png" width="20" height="20"
								alt="로고 이미지" />https://www.instagram.com/<input type="text"
								name="link03" id="link03" size="20" /></li>
						</ul>
					</td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>홈페이지 또는 블로그(선택)</dt>
							<dd>프로젝트 메이커가 운영하는 웹사이트가 있으시다면 http:// 혹은 https://를 붙여 등록 후,
								링크확인 버튼을 클릭하여 연결을 확인해 주세요. http:// 링크확인 http:// 링크확인</dd>
						</dl>
					</th>
					<td><input name="link04" id="link04" size="30" /> <input
						type="button" name="checkLink01" id="checkLink01" value="링크 확인" />
						<input name="link05" id="link05" size="30" /> <input
						type="button" name="checkLink02" id="checkLink02" value="링크 확인" />
					</td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>함께하는 멤버 등록(선택)</dt>
							<dd>프로젝트를 함께 준비하시는 팀원분이 있다면 와디즈에 가입하신 계정을 등록해 주세요. 프로젝트 상세
								페이지 우측에 메이커분과 함께 노출됩니다.</dd>
						</dl>
					</th>
					<td><input name="withMem" id="withMem" size="30" /> <input
						type="button" name="addMem" id="addMem" value="추가" /></td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>문의 이메일</dt>
							<dd>서포터 문의 시 소통이 가능하고, 프로젝트 페이지에 노출가능한 이메일을 입력해주세요.</dd>
						</dl>
					</th>
					<td><input name="email" id="email" size="30" /></td>
				</tr>

				<tr>
					<td>
						<dl>
							<dt>문의 전화번호</dt>
							<dd>서포터 문의 시 실시간 연락이 가능하고, 프로젝트 페이지에 노출가능한 대표번호를 입력해주세요.</dd>
						</dl>
					</td>
					<td><input name="phone" id="phone" size="30" /></td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>카카오 플러스친구(선택)</dt>
							<dd>서포터 문의 시 실시간 연락이 가능한 카카오 플러스친구를 입력해주세요. 프로젝트 페이지에 검색용
								아이디가 노출되며, 홈 URL로 연결됩니다.</dd>
						</dl>
					</th>
					<td>검색용 아이디 <input name="phone" id="phone" size="15" /> 홈 URL
						<input name="phone" id="phone" size="30" /> 플러스친구 관리자센터 - 홍보하기에서
						확인하실 수 있습니다.
					</td>
				</tr>
				<tr height="50">
					<th colspan="2"><input type="submit" value="저장하기" /> <input
						type="button" value="다음 단계로>"
						onclick="location='funding_write4.jsp';" /> <input type="reset"
						value="초기화" /></th>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>