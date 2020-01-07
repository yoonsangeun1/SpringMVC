package com.moving.domain;

public class RewardVO {					/* 리워드 */
	
	private int id; 					/* 아이디 */
	private int codeNo; 				/* 코드_번호 20002 */
	private int projectPostId; 			/* 프로젝트_아이디 */
	private String title; 				/* 제목 */
	private String content; 			/* 내용 */
	private int price; 					/* 금액 */
	private int deliveryFeeExistence; 	/* 배송_비_유무 */
	private String deliveryExpectDate; 	/* 전달_예정_일 */
	private int limitCount; 			/* 제한_수 */
	private int selectCount; 			/* 선택한_수 */
	private String registerDate; 		/* 등록_날짜 */
	private int no;						/* 정렬 순서 */
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
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
	public int getProjectPostId() {
		return projectPostId;
	}
	public void setProjectPostId(int projectPostId) {
		this.projectPostId = projectPostId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDeliveryFeeExistence() {
		return deliveryFeeExistence;
	}
	public void setDeliveryFeeExistence(int deliveryFeeExistence) {
		this.deliveryFeeExistence = deliveryFeeExistence;
	}
	public String getDeliveryExpectDate() {
		return deliveryExpectDate;
	}
	public void setDeliveryExpectDate(String deliveryExpectDate) {
		this.deliveryExpectDate = deliveryExpectDate;
	}
	public int getLimitCount() {
		return limitCount;
	}
	public void setLimitCount(int limitCount) {
		this.limitCount = limitCount;
	}
	public int getSelectCount() {
		return selectCount;
	}
	public void setSelectCount(int selectCount) {
		this.selectCount = selectCount;
	}
	public String getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}
	
}
