package com.moving.domain;

public class PaymentVO {		/* 결제 */
	
	private int id; 			/* 아이디 */
	private int codeNo;			/* 코드_번호 20005 */
	private int ordeSheetId;	/* 주문_문서_아이디 */
	private int paymentMethod;	/* 결제_방법 */
	private int status;			/* 상태 1 */
	
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
	public int getOrdeSheetId() {
		return ordeSheetId;
	}
	public void setOrdeSheetId(int ordeSheetId) {
		this.ordeSheetId = ordeSheetId;
	}
	public int getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(int paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
