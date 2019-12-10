package com.moving.domain;

public class FollowVO {					/* 팔로우 */
	
	private int id;						/* 아이디 */
	private int codeNo;					/* 코드_번호 80007 */
	private String registerDate; 		/* 등록_날짜 */
	private int userIdFrom;				/* 회원_아이디_보낸이 */
	private int userIdTo; 				/* 회원_아이디_받는이 */
	private int socialProfileIdFrom;	/* 소셜_프로필_아이디_보낸이 */
	private int socialProfileIdTo; 		/* 소셜_프로필_아이디_받는이 */
	
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
	public String getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}
	public int getUserIdFrom() {
		return userIdFrom;
	}
	public void setUserIdFrom(int userIdFrom) {
		this.userIdFrom = userIdFrom;
	}
	public int getUserIdTo() {
		return userIdTo;
	}
	public void setUserIdTo(int userIdTo) {
		this.userIdTo = userIdTo;
	}
	public int getSocialProfileIdFrom() {
		return socialProfileIdFrom;
	}
	public void setSocialProfileIdFrom(int socialProfileIdFrom) {
		this.socialProfileIdFrom = socialProfileIdFrom;
	}
	public int getSocialProfileIdTo() {
		return socialProfileIdTo;
	}
	public void setSocialProfileIdTo(int socialProfileIdTo) {
		this.socialProfileIdTo = socialProfileIdTo;
	}
	
	

}
