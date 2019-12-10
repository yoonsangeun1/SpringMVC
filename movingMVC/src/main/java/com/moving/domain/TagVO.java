package com.moving.domain;

public class TagVO {					/* 태그 */
	
	private int id;						/* 아이디 */
	private int codeNo;					/* 코드_번호 80008 */
	private String tagName; 			/* 태그_명 */
	private String registerDate;		/* 등록_날짜 */
	private int normalPostId; 			/* 일반_게시글_아이디 */
	private int socialPostId; 			/* 소셜_게시글_아이디 */
	private int videoPostId; 			/* 영상_게시글_아이디 */
	private int projectPostId; 			/* 프로젝트_게시글_아이디 */
	private int profilePostId; 			/* 프로필_게시글_아이디 */
	private int replyPostId; 			/* 답글_게시글_아이디 */

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
	public String getTagName() {
		return tagName;
	}
	public void setTagName(String tagName) {
		this.tagName = tagName;
	}
	public String getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}
	public int getNormalPostId() {
		return normalPostId;
	}
	public void setNormalPostId(int normalPostId) {
		this.normalPostId = normalPostId;
	}
	public int getSocialPostId() {
		return socialPostId;
	}
	public void setSocialPostId(int socialPostId) {
		this.socialPostId = socialPostId;
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
	public int getProfilePostId() {
		return profilePostId;
	}
	public void setProfilePostId(int profilePostId) {
		this.profilePostId = profilePostId;
	}
	public int getReplyPostId() {
		return replyPostId;
	}
	public void setReplyPostId(int replyPostId) {
		this.replyPostId = replyPostId;
	}

}
