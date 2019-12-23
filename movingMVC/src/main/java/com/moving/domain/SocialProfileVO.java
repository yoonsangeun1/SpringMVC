package com.moving.domain;

import java.util.List;

public class SocialProfileVO {
	private int id;			//SNS이용 회원 아이디(넘버)
	private int codeNo;		//SNS이용 회원 종류 코드번호
	private int userId;		//유저 아이디?
	private String nickname;//회원 별칭
	private String userType;//회원 종류
	private String introduce;//프로필 상 자기소개
	private String backgroundImagePath;//배경화면 이미지 경로
	private String profileImagePath;//프로필 이미지 경로
	private int followerCount;//팔로워 수
	private int followCount;//팔로우 수
	private int postCount;//게시글
	private String myListName;//??
	
	private List<SocialPostVO> socialPostVO;
	
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
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getBackgroundImagePath() {
		return backgroundImagePath;
	}
	public void setBackgroundImagePath(String backgroundImagePath) {
		this.backgroundImagePath = backgroundImagePath;
	}
	public String getProfileImagePath() {
		return profileImagePath;
	}
	public void setProfileImagePath(String profileImagePath) {
		this.profileImagePath = profileImagePath;
	}
	public int getFollowerCount() {
		return followerCount;
	}
	public void setFollowerCount(int followerCount) {
		this.followerCount = followerCount;
	}
	public int getFollowCount() {
		return followCount;
	}
	public void setFollowCount(int followCount) {
		this.followCount = followCount;
	}
	public int getPostCount() {
		return postCount;
	}
	public void setPostCount(int postCount) {
		this.postCount = postCount;
	}
	public String getMyListName() {
		return myListName;
	}
	public void setMyListName(String myListName) {
		this.myListName = myListName;
	}
	public List<SocialPostVO> getSocialPostVO() {
		return socialPostVO;
	}
	public void setSocialPostVO(List<SocialPostVO> socialPostVO) {
		this.socialPostVO = socialPostVO;
	}
}
