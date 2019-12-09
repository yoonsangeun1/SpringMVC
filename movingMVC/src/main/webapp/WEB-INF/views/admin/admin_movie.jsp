<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/admin_header.jsp"%>
<%-- 영화관리 페이지 구성 --%>
<div id="aMovie_wrap">
	<h1>영화 관리</h1>
	

	<div id="aMovie_list">
		<%-- 업로드 된 리스트 목록표 --%>
		<table id="aMovie_listTable" border="1" ">
		
			<tr>
				<th colspan="8" align="right">
					<a href="movie_upload" class="link"><i class="fas fa-upload"></i>업로드</a>
				</th>
			</tr>
			
			<tr valign="middle">
				<th width="30" scope="col" class="check"><input type="checkbox" name="aMovie_check" value="check" /></th>
				<th scope="col" class="cate1 video">동영상</th>
				<th scope="col" class="cate1 title">제목</th>
				<th scope="col" class="cate1 name">작성자</th>
				<th scope="col" class="cate1 date">날짜</th>
				<th scope="col" class="cate2 views">조회수</th>
				<th scope="col" class="cate2 comment">댓글</th>
				<th scope="col" class="cate2 like">좋아요</th>
			</tr>
			
			<tr class="trFont" valign="middle">
				<td><input type="checkbox" name="aMovie_check" /></td>
				<td class="cate1" rowspan="3"><iframe width="140" height="78" src="https://www.youtube.com/embed/A0gP4id3Gxc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
				<td class="cate1 title"><a href="#" >어반자카파 - 서울 밤(Feat.Beenzino)</a></td>
				<td class="cate1">박동수</td>
				<td class="cate1">2019.06.13</td>
				<td class="cate2">1,050,985</td>
				<td class="cate2">634</td>
				<td class="cate2">11,123</td>
			</tr>
			
			<tr>
			
			</tr>
			
			<tr>
			
			</tr>
			
			<tr class="trFont">
				<td><input type="checkbox" name="aMovie_check" value="check1" /></td>
				<td class="cate1" rowspan="3"><iframe width="140" height="78" src="https://www.youtube.com/embed/b5bHx1nTQ24" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
				<td class="cate1"><a href="#" >다리떨며 듣기 좋은, 내적댄스 유발자들(11songs)</a></td>
				<td class="cate1">송현범</td>
				<td class="cate1">2019.05.31</td>
				<td class="cate2">594,145</td>
				<td class="cate2">263</td>
				<td class="cate2">20,015</td>
			</tr>
			
			<tr>
			
			</tr>
			
			<tr>
			
			</tr>
			
			<tr class="trFont">
				<td><input type="checkbox" name="aMovie_check" value="check1" /></td>
				<td class="cate1" rowspan="3"><iframe width="140" height="78" src="https://www.youtube.com/embed/Rcagb_psrbs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
				<td class="cate1"><a href="#" >어반자카파 - 목요일 밤(Feat.Beenzino)</a></td>
				<td class="cate1">박진우</td>
				<td class="cate1">2019.10.12</td>
				<td class="cate2">10,704,645</td>
				<td class="cate2">828</td>
				<td class="cate2">29,213</td>
			</tr>
			
			<tr>
			
			</tr>
			
			<tr>
			
			</tr>
			
			<tr class="trFont">
				<td><input type="checkbox" name="aMovie_check" value="check1" /></td>
				<td class="cate1" rowspan="3"><iframe width="140" height="78" src="https://www.youtube.com/embed/-dYDrYcqbCs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
				<td class="cate1"><a href="#" >백예린 - 내가 날 모르는 것처럼(Feat.카더가든(Car, the garden))</a></td>
				<td class="cate1">양용준</td>
				<td class="cate1">2019.11.04</td>
				<td class="cate2">0</td>
				<td class="cate2">0</td>
				<td class="cate2">0</td>
			</tr>
			
			<tr>
			
			</tr>
			
			<tr>
			
			</tr>
			
			<tr class="trFont">
				<td><input type="checkbox" name="aMovie_check" value="check1" /></td>
				<td class="cate1" rowspan="3"><iframe width="140" height="78" src="https://www.youtube.com/embed/WgXJb9uNtmM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
				<td class="cate1"><a href="#" >VOS 있어줘요(장덕철) cover</a></td>
				<td class="cate1">윤상은</td>
				<td class="cate1">2019.10.10</td>
				<td class="cate2">352,679</td>
				<td class="cate2">854</td>
				<td class="cate2">6065</td>
			</tr>
			
		</table>
		
		<div id="aMovie_upLoad">
		
		</div>
	
		<div id="aMovie_board">
	
		</div>
	</div>
</div>
<%@ include file="../include/admin_footer.jsp"%>