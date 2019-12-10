package com.moving.domain;

public class ReportVO {					/* 신고 */

	private int id; 					/* 아이디 */
	private int codeNo; 				/* 코드_번호 */
	private String title;	  			/* 제목 */
	private String content;  			/* 내용 */
	private String registerDate; 		/* 등록_일 */
	private int userIdFrom; 			/* 회원_아이디_보낸이 */
	private int userIdTo; 				/* 회원_아이디_받는이 */
	private int socialProfileIdFrom;	/* 소셜_프로필_아이디_보낸이 */
	private int socialProfileIdTo;		/* 소셜_프로필_아이디_받는이 */
	private int normalPostId; 			/* 일반_게시글_아이디 */
	private int socialMessageId; 		/* 소셜_메시지_아이디 */
	private int videoPostId; 			/* 영상_게시글_아이디 */
	private int projectPostId; 			/* 프로젝트_게시글_아이디 */
	private int socialPostId; 			/* 소셜_게시글_아이디 */
	private int profilePostId; 			/* 프로필_게시글_아이디 */
	
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
	public int getNormalPostId() {
		return normalPostId;
	}
	public void setNormalPostId(int normalPostId) {
		this.normalPostId = normalPostId;
	}
	public int getSocialMessageId() {
		return socialMessageId;
	}
	public void setSocialMessageId(int socialMessageId) {
		this.socialMessageId = socialMessageId;
	}
	public int getVideoPostId() {
		return videoPostId;
	}
	public void setVideoPostId(int videoPostId) {
		this.videoPostId = videoPostId;
	}
	public int getProjectPostId() {
		return projectPostId;
	}
	public void setProjectPostId(int projectPostId) {
		this.projectPostId = projectPostId;
	}
	public int getSocialPostId() {
		return socialPostId;
	}
	public void setSocialPostId(int socialPostId) {
		this.socialPostId = socialPostId;
	}
	public int getProfilePostId() {
		return profilePostId;
	}
	public void setProfilePostId(int profilePostId) {
		this.profilePostId = profilePostId;
	}

}
