<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>

<form method="post" action="" onsubmit="return check();">
	<div id="fWrite_wrap">
		<!-- 상단 메뉴 -->
		<div id="fWrite_title">
					<input type="button" class="button group border button_r12 button_f12" value="기본 정보"
						onclick="location='funding_write.jsp';" /> <input type="button"
						class="button group border button_r12 button_f12" value="리워드"
						onclick="location='funding_write2.jsp';" /> <input type="button"
						class="button group border button_r12 button_f12" value="제작사"
						onclick="location='funding_write3.jsp';" /> <input type="button"
						class="button group border button_r12 button_f12" value="정산"
						onclick="location='funding_write4.jsp';" /> <input type="button"
						class="button border button_r12 button_f12" value="미리보기"
						onclick="location='funding_cont.jsp';" /> <input type="button"
						class="button border button_r12 button_f12" value="검토 요청하기" />
					<%-- onclick="" 나중에 추가 			window.open메서드 미리보기 띄우기 나중에 cont완성되면 추가하기
						스토리 부분 추가해야할 것 같음.
			
			 --%>


			<!-- 알림  -->
			<div id="fWrite_Alert">
				<table border="1">
					<tr>
						<td>알림</td>
						<td>30분 동안 입력 또는 작성 단계별 저장이 진행되지 않으면 자동으로 로그아웃 되며, 저장하지 않은
							입력값은 반영 되지 않으니 주의하세요.</td>
					</tr>
				</table>
			</div>

		</div>

		<!-- 본문 내용 : 기본 정보 -->
		<div id="fWrite_cont">
			<table border="1">
				<tr>
					<th>
						<dl>
							<dt>프로젝트 번호</dt>
							<dd>담당자와 소통은 프로젝트 번호로 진행됩니다.</dd>
						</dl>
					</th>
					<td><textarea rows="7" cols="30"></textarea></td>
				</tr>
				<tr>
					<th rowspan="2">
						<dl>
							<dt>연락처</dt>
							<dd>주요 안내를 받으실 이메일과 휴대폰 번호를 등록해 주세요. 정보 변경은 회원정보설정에서 가능합니다.</dd>
						</dl>
					</th>
					<td><input type="text" id="email" name="email" /> <input
						type="button" id="checkEmail" name="checkEmail" value="인증하기" /></td>
				</tr>
				<tr>
					<td><input type="text" id="phone" name="phone" /> <input
						type="button" id="checkPhone" name="checkPhone" value="인증하기" /></td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>프로젝트 제목</dt>
							<dd>프로젝트 성격과 리워드를 짐작할 수 있게 간결하고 직관적으로 작성해주세요.</dd>
						</dl>
					</th>
					<td><input name="title" id="title" size="20" /></td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>해쉬 태그</dt>
							<dd>검색, 알림 등에 사용되는 짧은 제목도 함께 작성해주세요.</dd>
						</dl>
					</th>
					<td><input name="hashtag" id="hashtag" size="20" /></td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>목표 금액</dt>
							<dd>마감일 자정 기준 목표금액 미달성 시, 펀딩은 취소됩니다. (리워드 평균 목표금액 : 300만원)</dd>
						</dl>
					</th>
					<td><input name="goalMoney" id="goalMoney" size="20" /> 원</td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>대표 이미지</dt>
							<dd>
								메이커와 리워드가 함께 있거나, 프로젝트의 성격이 한눈에 드러나는 사진이 좋습니다. <a href="#">가이드</a>를
								확인하세요.
							</dd>
						</dl>
					</th>
					<th><input type="file" name="titleImg" id="titleImg" />
						<ul>
							<li>사이즈: 가로 120px 세로 675px</li>
							<li>용량: 3MB 미만</li>
							<li>텍스트 및 로고 삽입 금지</li>
						</ul></th>
				</tr>

				<tr>
					<th>
						<dl>
							<dt>카테고리</dt>
							<dd>오픈 후, 노출될 카테고리를 선택해 주세요.</dd>
						</dl>
					</th>
					<td><select name="category">
							<option value="thriller">범죄/스릴러</option>
							<option value="action">액션/어드벤쳐</option>
							<option value="dacumentary">다큐/드라마/청춘</option>
							<option value="history">역사/시대극</option>
							<option value="fantasy">환타지/SF</option>
							<option value="romance">멜로/로멘스</option>
							<option value="comedy">코미디</option>
							<option value="animation">애니메이션</option>
							<option value="etc" selected>기타</option>
					</select></td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>리워드 필수 인증 서류</dt>
							<dd>서포터에게 제공할 리워드 (제품/서비스)의 생산 및 유통 시, 필요한 인증 서류를 첨부해주세요.</dd>
						</dl>
					</th>
					<td><b>서포터에게 제공하는 리워드(제품/서비스)의 종류를 선택하세요</b> <select
						name="rewardCategory">
							<option value="1">티켓</option>
							<option value="2">영화DVD</option>
							<option value="3">기념품</option>
							<option value="4">SW(모바일 리워드)</option>
							<option value="5">기타</option>

					</select></td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>리워드 필수 확인사항</dt>
							<dd>답변이 미흡할 경우, 심사 시 재요청 드리며 심사 기간이 늘어날 수 있습니다.</dd>
						</dl>
					</th>
					<td><b>Q1. 리워드가 타 크라우드펀딩사 및 온라인 커머스, 자사 홈페이지 등 다른 판매처에서
							유통된 적이 있거나 현재 유통 중인가요?</b><br /> 선택하신 답변이 사실과 다를 경우 약정서에 근거하여 프로젝트
						취소 및 위약벌이 부과될 수 있습니다. <br /> <input type="radio" name="warn"
						value="no" checked />아니요. 다른 곳에서 유통한 적이 없으며 와디즈를 통해 처음 선보이는
						제품입니다. <br /> <input type="radio" name="warn" value="yes" />예,
						다른 곳에서 유통한 적이 있습니다. 또는 현재 유통 중입니다. <br /> <b>Q2. 현재 진행(제작)된
							리워드의 상태 및 앞으로의 진행(제작)계획을 일정과 함께 구체적으로 설명해주세요.</b><br /> <textarea
							cols="30" rows="2" name="question02"></textarea><br /> <b>Q3.
							리워드의 전달(발송) 계획을 알려주세요.</b><br /> <textarea cols="30" rows="2"
							name="question03"></textarea></td>

				</tr>
				<tr>
					<th>
						<dl>
							<dt>프로젝트 종료일</dt>
							<dd>프로젝트 진행 기간은 평균 30일입니다.</dd>
						</dl>
					</th>
					<td><input type="date" name="date" /></td>
				</tr>
				<tr height="50">
					<th colspan="2"><input type="submit" value="저장하기" /> <input
						type="button" value="다음 단계로>"
						onclick="location='funding_write2.jsp';" /> <input type="reset"
						value="초기화" /></th>
				</tr>
			</table>

		</div>
	</div>
</form>

<%@ include file="../include/footer.jsp"%>