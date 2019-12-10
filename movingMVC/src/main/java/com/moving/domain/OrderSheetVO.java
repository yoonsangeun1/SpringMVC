package com.moving.domain;

import java.util.List;

public class OrderSheetVO {		/* 주문_문서 */
	
	private int id; 			/* 아이디 */
	private int codeNo; 		/* 코드_번호 20003 */
	private int userId; 		/* 회원_아이디 */
	private String address; 	/* 주소 */
	private int totalPrice; 	/* 총_금액 */
	private String orderDate; 	/* 주문_일 */
	private int status; 		/* 상태 */
	
	private List<OrderEntityVO> orderEntityVO;
	private DeliveryVO deliveryVO;
	private PaymentVO paymentVO;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCodeNo() {
		return codeNo;
	}
	public void setCodeNo(int codeNo) {
		this.codeNo = codeNo;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}

}
