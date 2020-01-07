<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- 크라우드 펀딩 글 작성 페이지 -->
<div id="fWrite_wrap" style="padding-top:90px">
<!-- <form method="post" action="" onsubmit=""> -->

	
	
		<!-- 상단 메뉴 -->
		<div id="fWrite_title">

			<ul class="menu">
				<li class="option on" id="a" data-tab="fWrite_cont">기본 정보</li>
				<li class="option" id="b" data-tab="fWrite_reward">리워드</li>
				<li class="option" id="c" data-tab="fWrite_director">제작사</li>
				<li class="option" id="d" data-tab="fWrite_calculate">정산</li>
				<li class="option" id="e" data-tab="fWrite_preview">미리보기</li>
				<li><button type="submit" class="btn">검토 요청하기</button></li>
			</ul>
			<!-- 			<but1ton type="submit" class="btn" >검토 요청하기</button> -->
			<!-- 알림  -->
			<div id="fWrite_Alert">
						<p align="center">알림</p>
						<p align="center">30분 동안 입력 또는 작성 단계별 저장이 진행되지 않으면 자동으로 로그아웃 되며, 저장하지 않은
							입력값은 반영 되지 않으니 주의하세요.</p>
			</div>

		
		<!-- 본문 내용 : 기본 정보 -->
		<div id="fWrite_cont" class="menu-option on">
		<form method="post" action="/moving.com/project/write_ok?id=${projectPostVO.id }" onsubmit="">
			<table border="1" style="border: 1px solid gray">
				<tr>
					<th>
						<dl>
							<dt>프로젝트 번호</dt>
							<dd>담당자와 소통은 프로젝트 번호로 진행됩니다.</dd>
						</dl>
					</th>
					<td><textarea rows="7" cols="30" readonly="readonly">프로젝트 번호 : ${projectPostVO.id }
						http://localhost:8084/moving.com/project/content?id=${projectPostVO.id }로 프로젝트 개설 이후 접근 가능합니다. 
					</textarea></td>
				</tr>
				<tr>
					<th rowspan="2">
						<dl>
							<dt>연락처</dt>
							<dd>주요 안내를 받으실 이메일과 휴대폰 번호를 등록해 주세요. 정보 변경은 회원정보설정에서 가능합니다.</dd>
						</dl>
					</th>
					<td><input type="text" id="email" name="email" placeholder="이메일 주소를 입력하세요" value="${email }"/> <input
						type="button" id="checkEmail" name="checkEmail" value="인증하기" /></td>
				</tr>
				<tr>
					<td><input type="text" id="phone" name="phone" placeholder="전화 번호를 입력하세요" value="${phone }"/> <input
						type="button" id="checkPhone" name="checkPhone" value="인증하기" /></td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>프로젝트 제목</dt>
							<dd>프로젝트 성격과 리워드를 짐작할 수 있게 간결하고 직관적으로 작성해주세요.</dd>
						</dl>
					</th>
					<c:if test="${empty projectPostVO.title }">
					<td><input name="title" id="title" size="20"  placeholder="프로젝트 제목을 입력하세요"/></td>
					</c:if>
					<c:if test="${!empty projectPostVO.title }">
					<td><input name="title" id="title" size="20" value="${projectPostVO.title }" /></td>
					</c:if>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>프로젝트 소개글</dt>
							<dd>프로젝트 성격과 리워드를 짐작할 수 있게 간결하고 직관적으로 작성해주세요.</dd>
						</dl>
					</th>
					<c:if test="${empty projectPostVO.introduce }">
					<td><input name="introduce" id="introduce" size="20"  placeholder="프로젝트 한 줄 소개글을 입력하세요"/></td>
					</c:if>
					<c:if test="${!empty projectPostVO.introduce }">
					<td><input name="introduce" id="introduce" size="20" value="${projectPostVO.introduce }" /></td>
					</c:if>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>해쉬 태그</dt>
							<dd>검색, 알림 등에 사용되는 짧은 제목도 함께 작성해주세요. </dd>
						</dl>
					</th>
					<td><input name="hashtag" id="hashtag" size="20" placeholder="태그명은 쉼표로 구분해주세요(ex. 태그1, 태그2 )"/></td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>목표 금액</dt>
							<dd>마감일 자정 기준 목표금액 미달성 시, 펀딩은 취소됩니다. (리워드 평균 목표금액 : 300만원)</dd>
						</dl>
					</th>
					<c:if test="${empty projectPostVO.targetPrice }">
					<td><input name="targetPrice" id="goalMoney" size="20" /> 원</td>
					</c:if>
					<c:if test="${!empty projectPostVO.introduce }">
					<td><input name="targetPrice" id="goalMoney" size="20" value="${projectPostVO.targetPrice }"/> 원</td>
					</c:if>
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
					<th><input type="file" name="thumbnailPath" id="titleImg" />
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
					<td><select name="codeNo">
							<option value="2000101">범죄 &amp; 스릴러</option>
							<option value="2000102">액션 &amp; 어드벤쳐</option>
							<option value="2000103">다큐 &amp; 드라마/청춘</option>
							<option value="2000104">역사 &amp; 시대극</option>
							<option value="2000105">판타지 &amp; SF</option>
							<option value="2000106">멜로 &amp; 로맨스</option>
							<option value="2000107">코미디</option>
							<option value="2000108">애니메이션</option>
							<option value="2000109" selected>기타</option>
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
							<option value="2000201">티켓</option>
							<option value="2000202">영화DVD</option>
							<option value="2000203">기념품</option>
							<option value="2000204">SW(모바일 리워드)</option>
							<option value="2000205">기타</option>
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
					<c:if test="${empty projectPostVO.targetLimit }">
					<td><input type="date" name="targetLimit" /></td>
					</c:if>
					<c:if test="${!empty projectPostVO.targetLimit }">
					<td><input type="date" name="targetLimit" value="${fn:substring(projectPostVO.targetLimit,0,10)  }" /></td>
					</c:if>
				</tr>
				<tr height="50">
					<th colspan="2"><input type="submit" value="저장하기" /> 
					<input type="button" value="다음 단계로>" id="nextButton" 
					data-tab="fWrite_reward" onclick="$('html, body').stop().animate({scrollTop : 0}, 500);" /> 
						<input type="reset" value="초기화" /></th>
				</tr>
			</table>
		</form>
		</div>
		
		<!-- 본문 내용 : 리워드 -->
		<div id="fWrite_reward" class="menu-option">
			<%------첫번째 리워드------------------------------------------------ --%>
			<c:if test="${!empty rewardVO}">
				<c:forEach var="r" items="${rewardVO }">

				</c:forEach>
			</c:if>
			<div id="fWrite_reward1">
				<form method="post" action="/moving.com/rewards/write" onsubmit="">
					<input type="hidden" id="projectPostId" size="40" value="${projectPostVO.id }">
					<table border="1">
						<tr>
							<th rowspan="8">리워드</th>
							<td>금액</td>
							<td><input type="number" name="price" size="12" /> 원 정렬순서 <input
								name="no" size="5" /> <input type="button" name="close" value="x" /></td>
						</tr>
						<tr>
							<td>리워드 명</td>
							<td><input name="reward" size="50" /></td>

						</tr>
						<tr>
							<td>상세 설명</td>
							<td><textarea rows="10" cols="38"></textarea></td>
						</tr>
						<!-- <tr>
					<td>옵션 조건</td>
					<td>
						나중에
					</td>
				</tr> -->
						<tr>
							<td>배송 조건</td>
							<td>배송료 <input type="radio" name="deliveryFeeExistence"
								value="1" />2500원 <input type="radio"
								name="deliveryFeeExistence" value="0" />없음 <!-- 					<input name="money" size="12" /> 나중에 -->
							</td>
						</tr>
						<tr>
							<td>제한 수량</td>
							<td>리워드를 <input type="number" name="limitCount" size="12" />개로
								제한합니다.
							</td>
						</tr>
						<tr>
							<td>발송 시작일</td>
							<td>
								<!-- 나중에 -->
							</td>
						</tr>
						<tr>
							<th colspan="3"><input type="submit" name="save"
								value="저장하기" /></th>
						</tr>
						<%-- 저장하기 누르면 ->유효성 검증 실행 -> 끝나면 -> 새 리워드 추가하기로 멘트 바뀜 -> 분기 줘야 함.--%>
					</table>
				</form>
			</div>
			<%------두번째 리워드------------------------------------------------ 
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
				</tr>--%>


				<%---------------------------------------------------------------------------------------------- --%>
			<table>
				<tr height="50">
					<th colspan="3"><input type="submit" value="저장하기" /> <input
						type="button" value="다음 단계로>" onclick="$('html, body').stop().animate({scrollTop : 0}, 500);" id="nextButton2"
						 data-tab="fWrite_director" /> <input type="reset"
						value="초기화" /></th>
				</tr>
			</table>
		</div>
		
		<!-- 본문 내용 : 제작사-->
		<div id="fWrite_director" class="menu-option">
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
					<td><input name="phone2" id="phone2" size="30" /></td>
				</tr>
				<tr>
					<th>
						<dl>
							<dt>카카오 플러스친구(선택)</dt>
							<dd>서포터 문의 시 실시간 연락이 가능한 카카오 플러스친구를 입력해주세요. 프로젝트 페이지에 검색용
								아이디가 노출되며, 홈 URL로 연결됩니다.</dd>
						</dl>
					</th>
					<td>검색용 아이디 <input name="phone3" id="phone3" size="15" /> 홈 URL
						<input name="phone4" id="phone4" size="30" /> 플러스친구 관리자센터 - 홍보하기에서
						확인하실 수 있습니다.
					</td>
				</tr>
				<tr height="50">
					<th colspan="2"><input type="submit" value="저장하기" /> <input
						type="button" value="다음 단계로>" onclick="$('html, body').stop().animate({scrollTop : 0}, 500);" id="nextButton3"
						 data-tab="fWrite_calculate"/> <input type="reset"
						value="초기화" /></th>
				</tr>
			</table>
		</div>
		
		<!-- 본문 내용 : 정산 -->
		<div id="fWrite_calculate" class="menu-option">
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
						</ul> <input type="checkbox" name="warn" value="yes" />무빙 수수료 정책을
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
						type="button" value="다음 단계로>" onclick="$('html, body').stop().animate({scrollTop : 0}, 500);" id="nextButton4"
						data-tab="fWrite_preview" /> <input type="reset"
						value="초기화" /></th>
				</tr>
			</table>
		</div>

			<div id="fWrite_preview" class="menu-option">	<div id="fCont_title" style="padding-top: 45px;">
				<h3>${projectPostVO.title }</h3>
				<p>${projectPostVO.introduce }</p>
			</div>
		
			<%-- 펀딩 메인 이미지, 모금 정보 --%>
			<div id="fCont_subtitle">
				<%-- 펀딩 메인 이미지 --%>
				<div id="fCont_mainImage">
					<img src="../images/funding05.PNG" width="700" height="400"
						src="펀딩이미지05" />
					<div class="fCont_tags">
						<span class="sumCont_sub fCont_tag"><i
							class="fas fa-tag fa-lg"></i> Project We Love</span> <span
							class="sumCont_sub fCont_tag"><i class="fas fa-tag fa-lg"></i>
							Documentary</span> <span class="sumCont_sub fCont_tag"><i
							class="fas fa-map-marker-alt fa-lg"></i> 독도, 대한민국 </span> <span
							class="sumCont_sub fCont_tag"><i
							class="fas fa-hashtag fa-lg"></i> 감동적인</span>
					</div>
				</div>
		
				<%-- 펀딩 메인 정보 요약 --%>
				<div id="fCont_sumCont">
					<div id="fCont_sumContTS">
						<div class="progress length">
							<!-- 여기에 수정해야 할 것 : 퍼센트 표시 바. -->
							<div class="progress-bar length" role="progressbar"
								aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
								style="width: ${ projectPostVO.nowPrice div projectPostVO.targetPrice * 100}%">
								<span class="sr-only">${ projectPostVO.nowPrice div projectPostVO.targetPrice * 100}%
									Complete</span>
							</div>
						</div>
						<span class="sumCont_title">${ projectPostVO.nowPrice } 원</span> <span
							class="sumCont_sub">목표 금액 ${projectPostVO.targetPrice } 원 중</span> <span
							class="sumCont_title">${projectPostVO.sponserCount } 명</span> <span
							class="sumCont_sub">프로젝트 후원자</span> <span class="sumCont_title">${projectPostVO.leftLimit }</span>
						<span class="sumCont_sub">남은 목표 일수</span>
		
						<button class="fCont_sumContBtn button button_f16 shadow"
							type="button">이 프로젝트 밀어주기</button>
						<div id="fCont_share">
							<button
								class="fCont_shareBtn button button_wce8e8e8 button_f12 shadow"
								type="button">
								<i class="fas fa-heart"></i> Remind Me
							</button>
							<div class="fCont_shareIcon fa-2x">
								<a href="#"><i class="fab fa-facebook"></i></a>
							</div>
							<div class="fCont_shareIcon fa-2x">
								<a href="#"><i class="fab fa-twitter"></i></a>
							</div>
							<div class="fCont_shareIcon fa-2x">
								<a href="#"><i class="fas fa-envelope"></i></a>
							</div>
							<div class="fCont_shareIcon fa-2x">
								<a href="#"><i class="fas fa-link"></i></a>
							</div>
						</div>
						<span class="sumCont_sub"><a href="#">All or Nothing</a>. 이
							프로젝트는 Sat, November 23 2019 1:59 PM UTC +09:00 까지 목표금액 달성시에만 후원금이
							전달됩니다.</span>
					</div>
				</div>
		
		
			</div>
		
			<div class="clear"></div>
		
			<%-- 펀딩 하위 메뉴 --%>
			<div id="fCont_menubar">
				<div id="fCont_row">
					<script>
						function setScrollX(xValue) {
							/* $('#SNS_Profile_Down').scrollLeft($('#SNS_Profile_Down').scrollLeft() + xValue); */
							$('#fCont_cont').animate({
								scrollLeft : xValue
							}, 400);
						}//클릭시 게시글
					</script>
					<button class="fCont_menu" onclick="setScrollX(0)">Campaign</button>
					<button class="fCont_menu" onclick="setScrollX(1250)">FAQ</button>
					<button class="fCont_menu" onclick="setScrollX(2500)">Updates</button>
					<button class="fCont_menu" onclick="setScrollX(3750)">
						Comments
						<%-- 댓글 개수가 0이 아닌 경우 개수 출력 --%>
						<span class="commentCount">
						<c:if test="${projectPostVO.commentCount != 0}">
							<b>${projectPostVO.commentCount }</b>
						</c:if>
						</span>
					</button>
					<button class="fCont_menu" onclick="setScrollX(5000)">Communities</button>
				</div>
			</div>
		
		
			<div id="fCont_cont">
				<div id="fCont_scrollCont">
		
					<%-- 상세 정보 --%>
					<div id="fCont_CampaignCont">
						<h3>About</h3>
						<p>${projectPostVO.content }</p>
						<c:if test="${!empty projectPostVO.attachedFileVO }">
							<c:forEach var="file" items="${projectPostVO.attachedFileVO }">
								<img src="${file.filePath }" width="800" height="1200"
									alt="fundingCont" />
							</c:forEach>
						</c:if>
						<c:if test="${empty projectPostVO.attachedFileVO }">
							<p>첨부 파일이 없습니다!</p>
							<!-- <img src="../images/fundingCont01.png" width="800" height="1200" alt="fundingCont"/>
				 -->
						</c:if>
					</div>
		
		
		
					<div id="fCont_FAQCont"></div>
					<div id="fCont_UpdatesCont"></div>
		
		
					<%------------------------------------------------------------------------------------------------ --%>
					<div id="fCont_CommentsCont">
						<div class="SNS_Comment">
		
							<%------------------------------------------------------------------------------------------------ --%>
							<%-- 댓글 작성 --%>
							<div class="SNS_Comment_Write">
							<script>
								$("input[name^='delete']").on('click', function() {
								alert('제박');
								});
							</script>
								<%-- 본인의 프로필 사진이 있다면,없다면 분기 나누기 나중에 프로필사진--%>
								<%-- 프로필 이미지가 있을 경우 --%>
								<c:if test="${'default' != profile_image_url }">
									<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
										src="${profile_image_url }" width="30" height="30"
										alt="">
								</c:if>
								<%-- 프로필 이미지가 없을 경우 --%>
								<c:if test="${'default' == profile_image_url }">
									<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
										src="../images/member_profile.png" width="30" height="30" alt="">
								</c:if>
								<input type="hidden" id="project_post_id" size="40" value="${projectPostVO.id }">
								<p id="sessionId">${nickname }</p>
								<input id="content" name="content" class="SNS_Comment_Write_Chat">
								<input id="write" name="write" class="SNS_Comment_Write_Button" type="button" 
								value="작성" >
							</div>
							
							<%-- 댓글 목록 출력 --%>
							<%-- 댓글이 있다면 --%>
							<ul id="replies"
								style="margin-top: 7px; list-style: none; align-items: center;">
								<%-- <c:if test="${!empty projectPostVO.mCommentVO }">
									<c:forEach var="comment" items="${projectPostVO.mCommentVO }">
										<li class="replies_li" style="align-items: center;">
											<div class="comment_no"></div>
											프로필 이미지가 있을 경우
											<input type="hidden" class="id" value="${comment.id }">
											<c:if test="${!empty comment.mUserVO.profileImageUrl }">
												<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
													src="${comment.mUserVO.profileImageUrl }" width="30" height="30" alt="">
											</c:if> 
											프로필 이미지가 없을 경우
											<c:if test="${empty comment.mUserVO.profileImageUrl }">
												<img class="SNS_Content_user_img" class="SNS_Profile_Picture"
													src="../images/member_profile.png" width="30" height="30" alt="">
											</c:if>
											<p><a href="/moving.com/member/mypage?id=${comment.id }">
											${comment.mUserVO.nickname }</a></p>
											<input name="modify_content" class="modify_content SNS_Comment_Write_Chat" value="${comment.content }" >
											<c:set var="sessionId" value="${id }"></c:set>
											<c:if test="${comment.id == sessionId }">
											<button type="button" name="modify" class="modify SNS_Comment_Write_Button" >수정</button>
											<button type="button" name="delete" class="delete SNS_Comment_Write_Button" >삭제</button>
											</c:if>
											</li>
									</c:forEach>
								</c:if>
								<c:if test="${empty projectPostVO.mCommentVO }">
									<li><p>작성된 댓글이 아직 없습니다</p></li>
								</c:if> --%>
							</ul>
						</div>
		
					</div>
					<div id="fCont_CommunitiesCont"></div>
				</div>
			</div>
		
		</div>


		</div>
	</form>
</div>

<%@ include file="../include/footer.jsp"%>