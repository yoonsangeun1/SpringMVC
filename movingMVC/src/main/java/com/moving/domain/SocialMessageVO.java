package com.moving.domain;

public class SocialMessageVO {
	private int id;			/* 아이디 */
	private int codeNo;	/* 코드번호 80004 */
	private int socialIdFrom; /* 소셜 아이디 보낸이 */
	private int socialIdTo;   /* 소셜 아이디 받는이*/
	private String content;			/* 내용 */
	private String registerDate; /* 전송일 */
	private int mid; /* 멤버 목록 */
	
	
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	private SocialProfileVO socialProfileVO;/*메시지 보낸 사람 정보 */
	
	public SocialProfileVO getSocialProfileVO() {
		return socialProfileVO;
	}
	public void setSocialProfileVO(SocialProfileVO socialProfileVO) {
		this.socialProfileVO = socialProfileVO;
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSocialIdFrom() {
		return socialIdFrom;
	}
	public void setSocialIdFrom(int socialIdFrom) {
		this.socialIdFrom = socialIdFrom;
	}
	public int getSocialIdTo() {
		return socialIdTo;
	}
	public void setSocialIdTo(int socialIdTo) {
		this.socialIdTo = socialIdTo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
