<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div id="mPoint_wrap">
	<form id="mPoint_form" method="post" action="member_point_charge_ok">
		<section>
			<div id="mPoint_text">
				<h2>MOVING 포인트 충전</h2>
			</div>
			<div id="mPoint_status">
				<img src="${pageContext.request.contextPath}/images/point_img.png" style="width:40px; height: 30px;">
				<span>MOVING 포인트</span>
				<span style="color:red;">충전하기</span>
				
				<span>${name}님 환영합니다.</span>
				
				<ul>
					<li>
						결제할 이메일 아이디
						<br>
						${userid }
					</li>
					<li>
						현재 보유 포인트	${user_point} 점
					</li>
					<li>
						충전 예정 포인트 :
					</li>
					<li>
						충전 완료 후 포인트 :
					</li>
				</ul>
			</div>
			
			<div id="mPoint_charge">
				<div id="mPoint_charge_text">
					MOVING 포인트 충전 창입니다.
				</div>
				
				<div id="mPoint_charge_price">
					<span> 결제 금액</span>
				</div>
				<div id="mPoint_chage_price_list">
					<div id="mPoint_price1">
						<span>5,500포인트</span>
						<br>
						<span>5,000원</span>
					</div>
					<div id="mPoint_price2">
						<span>11,000포인트</span>
						<br>
						<span>10,000원</span>
					</div>
					<div id="mPoint_price3">
						<span>22,000포인트</span>
						<br>
						<span>20,000원</span>
					</div>
					<div id="mPoint_price4">
						<span>5,500포인트</span>
						<br>
						<span>5,000원</span>
					</div>
				</div>
				<div id="mPoint_charge_how">
					<span> 결제 수단</span>
				</div>
			</div>
		</section>
		<input name="userPoint" type="number" size="30">원
		<button type="submit" id="phone_modify_btn" class="modify_btn">충전</button>
	</form>
</div>