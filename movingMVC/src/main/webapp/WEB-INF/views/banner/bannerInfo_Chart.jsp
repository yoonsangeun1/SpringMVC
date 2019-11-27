<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visualize</title>
<link rel="stylesheet" type="text/css" href="../css/visualize.css" />
<link rel="stylesheet" type="text/css" href="../css/visualize-light.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script type="text/javascript" src="../js/visualize.jQuery.js"></script>
<script type="text/javascript">
	$(function() {
		$('#data').visualize({type:'bar'});
// 		$('#data').visualize({type:'area',width:'400px'});
// 		$('#data').visualize({type:'pie',pieLabelPos:'inside'});
// 		$('#data').visualize({type:'line',lineWeight:2}); 
	});
</script>
</head>
<body>
<style>
.biStatistics_chart {
	float:left;
	width:1200px;
	min-height:400px;
	border : 1px solid red;
}
</style>
					<div class="biStatistics_chart">
					<table id="data" border="1">
						<caption>2019년 MOVING 후원금, 후원자 통계(since.19년1월)</caption>
						<thead>
							<tr>
								<td></td>
								<th>1월</th>
								<th>2월</th>
								<th>3월</th>
								<th>4월</th>
								<th>5월</th>
								<th>6월</th>
								<th>7월</th>
								<th>8월</th>
								<th>9월</th>
								<th>10월</th>
								<th>11월</th>
								<th>12월</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<th>후원금액(단위:만원)</th>
								<td>2213</td>
								<td>2422</td>
								<td>2838</td>
								<td>3221</td>
								<td>2923</td>
								<td>3023</td>
								<td>2794</td>
								<td>2922</td>
								<td>3283</td>
								<td>3544</td>
								<td>4022</td>
								<td>4483</td>
							</tr>

							<tr>
								<th>후원자 수(단위:명)</th>
								<td>327</td>
								<td>338</td>
								<td>422</td>
								<td>494</td>
								<td>454</td>
								<td>468</td>
								<td>402</td>
								<td>433</td>
								<td>479</td>
								<td>512</td>
								<td>565</td>
								<td>602</td>
							</tr>
						</tbody>
					</table>
					</div>
</body>
</html>