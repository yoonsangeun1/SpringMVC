<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/admin_header.jsp"%>
<div id="aFunding_wrap">
	<div class="h1">
	<h1>후원 관리</h1>
	
	<div id="aFunding_table">
		<%-- 각 분류별 실적 현황 --%>
		<div id="aFunding_maker">
			<h3><i class="fas fa-asterisk"></i>제작사별 실적</h3>
			<table id="aFunding_makerTable" border="1">
				<tr>
					<th scope="col">제작사</th>
					<th scope="col">개봉 영화</th>
					<th class="fWon" scope="col">펀딩 금액(원)</th>
				</tr>
				<tr>
					<td>Just Movie</td>
					<td class="fMovie">3</td>
					<td class="fPrice">50,000,000</td>
				</tr>
				<tr>
					<td>(주)미래능력개발</td>
					<td class="fMovie">7</td>
					<td class="fPrice">200,000,000</td>
				</tr>
				<tr>
					<td>Published By People</td>
					<td class="fMovie">1</td>
					<td class="fPrice">1,000,000</td>
				</tr>
				<tr>
					<td>Hello Mans</td>
					<td class="fMovie">2</td>
					<td class="fPrice">5,000,000</td>
				</tr>
			</table>
		</div>
		
		<div id="aFunding_genre">
			<h3><i class="fas fa-asterisk"></i>장르별 실적</h3>
			<table id="aFunding_genreTable" border="1">
				<tr>
					<th scope="col">장르</th>
					<th scope="col">개봉 영화</th>
					<th scope="col">펀딩 금액(원)</th>
				</tr>
				<tr>
					<td>범죄/스릴러</td>
					<td class="fMovie">5</td>
					<td class="fPrice">100,000,000</td>
				</tr>
				<tr>
					<td>액션/어드벤쳐</td>
					<td class="fMovie">4</td>
					<td class="fPrice">7,000,000</td>
				</tr>
				<tr>
					<td>다큐/드라마/청춘</td>
					<td class="fMovie">2</td>
					<td class="fPrice">1,000,000</td>
				</tr>
				<tr>
					<td>역사/시대극</td>
					<td class="fMovie">7</td>
					<td class="fPrice">200,000,000</td>
				</tr>
				<tr>
					<td>판타지/SF</td>
					<td class="fMovie">1</td>
					<td class="fPrice">100,000</td>
				</tr>
				<tr>
					<td>로맨스/멜로</td>
					<td class="fMovie">1</td>
					<td class="fPrice">100,000</td>
				</tr>
				<tr>
					<td>코미디</td>
					<td class="fMovie">2</td>
					<td class="fPrice">500,000</td>
				</tr>
				<tr>
					<td>애니메이션</td>
					<td class="fMovie">0</td>
					<td class="fPrice">0</td>
				</tr>
				<tr>
					<td>기타</td>
					<td class="fMovie">2</td>
					<td class="fPrice">100,000</td>
				</tr>
			</table>
		</div>
		
		<div id="aFunding_fund">
			<h3><i class="fas fa-asterisk"></i>펀딩별 실적</h3>
			<table id="aFunding_fundTable" border="1">
				<tr>
					<th scope="col">펀딩분류</th>
					<th scope="col">개봉 영화</th>
					<th scope="col">펀딩 금액(원)</th>
				</tr>
				<tr>
					<td></td>
					<td class="fMovie">3</td>
					<td class="fPrice">100,000,000</td>
				</tr>
				<tr>
					<td></td>
					<td class="fMovie">7</td>
					<td class="fPrice">200,000,000</td>
				</tr>
				<tr>
					<td></td>
					<td class="fMovie">1</td>
					<td class="fPrice">100,000</td>
				</tr>
				<tr>
					<td></td>
					<td class="fMovie">0</td>
					<td class="fPrice">0</td>
				</tr>
				<tr>
					<td></td>
					<td class="fMovie">2</td>
					<td class="fPrice">500,000</td>
				</tr>
				<tr>
					<td></td>
					<td class="fMovie">5</td>
					<td class="fPrice">10,000,000</td>
				</tr>
			</table>
		</div>
	</div>
</div>
<%@ include file="../include/admin_footer.jsp"%>