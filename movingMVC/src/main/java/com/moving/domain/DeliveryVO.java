package com.moving.domain;

public class DeliveryVO {			/* 배송 */
	
	private int id; 				/* 아이디 */
	private int codeNo;				/* 코드_번호 20006 */
	private int ordeSheetId;		/* 주문_문서_아이디 */
	private String delivery_firm; 	/* 배송_사 */
	private String billing_no; 		/* 운송장번호 */
	private int status; 			/* 상태  1*/
	
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
	public String getDelivery_firm() {
		return delivery_firm;
	}
	public void setDelivery_firm(String delivery_firm) {
		this.delivery_firm = delivery_firm;
	}
	public String getBilling_no() {
		return billing_no;
	}
	public void setBilling_no(String billing_no) {
		this.billing_no = billing_no;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
