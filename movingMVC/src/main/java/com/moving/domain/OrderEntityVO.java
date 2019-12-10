package com.moving.domain;

public class OrderEntityVO {	/* 주문_수량 */
	
	private int id; 			/* 아이디 */
	private int codeNo;			/* 코드_번호 20004 */
	private int ordeSheetId;	/* 주문_문서_아이디 */
	private int rewardId;		/* 리워드_아이디 */
	private int count; 			/* 수량 */
	private int price; 			/* 금액 */
	private int totalPrice; 	/* 총_가격 */
	
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
	public int getRewardId() {
		return rewardId;
	}
	public void setRewardId(int rewardId) {
		this.rewardId = rewardId;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
}
