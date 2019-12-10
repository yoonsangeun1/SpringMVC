package com.moving.domain;

public class MoveVO {
	private int id;
	private int codeNo;
	private String registerDate;
	private int userIdFrom;
	private int userIdTo;
	private int socialProfileIdFrom;
	private int socialProfileIdTo;
	private int normalPostId;
	private int videoPostId;
	private int socialPostId;
	private int replyPostId;
	
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
	public int getNormalPostId() {
		return normalPostId;
	}
	public void setNormalPostId(int normalPostId) {
		this.normalPostId = normalPostId;
	}
	public int getVideoPostId() {
		return videoPostId;
	}
	public void setVideoPostId(int videoPostId) {
		this.videoPostId = videoPostId;
	}
	public int getSocialPostId() {
		return socialPostId;
	}
	public void setSocialPostId(int socialPostId) {
		this.socialPostId = socialPostId;
	}
	public int getReplyPostId() {
		return replyPostId;
	}
	public void setReplyPostId(int replyPostId) {
		this.replyPostId = replyPostId;
	}
	public int getProfilePostId() {
		return profilePostId;
	}
	public void setProfilePostId(int profilePostId) {
		this.profilePostId = profilePostId;
	}
	private int profilePostId;
}
