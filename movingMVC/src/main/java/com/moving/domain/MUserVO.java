package com.moving.domain;

import java.util.List;

public class MUserVO {							//회원 정보		

	private int id; 							//아이디(고유번호,시퀀스,회원넘버)
	private int codeNo; 						//코드_번호
	private String userid; 						//회원아이디
	private String nickname; 					//닉네임
	private String name; 						//이름
	private String email;		 				//이메일
	private String password; 					//비밀번호
	private String genre01; 					//장르1
	private String genre02; 					//장르2
	private String genre03; 					//장르3
	private String phone; 						//전화번호
	private int publishAvailability;			//공개_여부
	private String profileImageUrl; 			//프로필_사진_url
	private int userStatus; 					//회원_상태
	private int userType; 						//회원_유형
	private int userLv; 						//회원_등급
	private int userPoint; 						//회원_포인트
	private int reportCount; 					//신고횟수
	private String registerDate; 				//등록_일
	private String businessName; 				//사업자 이름
	private String businessRegisterNo; 			//사업자등록번호
	private String businessLicenseImagePath; 	//사업자등록증이미지경로
	private String deactivateDate; 				//탈퇴_날짜
	private String deactivateReason; 			//탈퇴_사유
	private String deactivateReasonList; 			//탈퇴_사유_셀렉트
	
	
	
	/* 페이징 관련 변수 */
	private int startrow; 						// 시작행 번호
	private int endrow;							// 끝 행 번호
	
	/* 검색 필드와 검색어 */
	private String findField;					// 검색 필드
	private String findName;					// 검색어
	
	
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
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGenre01() {
		return genre01;
	}
	public void setGenre01(String genre01) {
		this.genre01 = genre01;
	}
	public String getGenre02() {
		return genre02;
	}
	public void setGenre02(String genre02) {
		this.genre02 = genre02;
	}
	public String getGenre03() {
		return genre03;
	}
	public void setGenre03(String genre03) {
		this.genre03 = genre03;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getPublishAvailability() {
		return publishAvailability;
	}
	public void setPublishAvailability(int publishAvailability) {
		this.publishAvailability = publishAvailability;
	}
	public String getProfileImageUrl() {
		return profileImageUrl;
	}
	public void setProfileImageUrl(String profileImageUrl) {
		this.profileImageUrl = profileImageUrl;
	}
	public int getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(int userStatus) {
		this.userStatus = userStatus;
	}
	public int getUserType() {
		return userType;
	}
	public void setUserType(int userType) {
		this.userType = userType;
	}
	public int getUserLv() {
		return userLv;
	}
	public void setUserLv(int userLv) {
		this.userLv = userLv;
	}
	public int getUserPoint() {
		return userPoint;
	}
	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}
	public String getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate.substring(0,10); // 0~10 사이의 년,월,일만 반환
	}
	public String getBusinessName() {
		return businessName;
	}
	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}
	public String getBusinessRegisterNo() {
		return businessRegisterNo;
	}
	public void setBusinessRegisterNo(String businessRegisterNo) {
		this.businessRegisterNo = businessRegisterNo;
	}
	public String getBusinessLicenseImagePath() {
		return businessLicenseImagePath;
	}
	public void setBusinessLicenseImagePath(String businessLicenseImagePath) {
		this.businessLicenseImagePath = businessLicenseImagePath;
	}
	public String getDeactivateDate() {
		return deactivateDate;
	}
	public void setDeactivateDate(String deactivateDate) {
		this.deactivateDate = deactivateDate;
	}
	public String getDeactivateReason() {
		return deactivateReason;
	}
	public void setDeactivateReason(String deactivateReason) {
		this.deactivateReason = deactivateReason;
	}
	public String getDeactivateReasonList() {
		return deactivateReasonList;
	}
	public void setDeactivateReasonList(String deactivateReasonList) {
		this.deactivateReasonList = deactivateReasonList;
	}
	public int getStartrow() {
		return startrow;
	}
	public void setStartrow(int startrow) {
		this.startrow = startrow;
	}
	public int getEndrow() {
		return endrow;
	}
	public void setEndrow(int endrow) {
		this.endrow = endrow;
	}
	public String getFindName() {
		return findName;
	}
	public void setFindName(String findName) {
		this.findName = findName;
	}
	public String getFindField() {
		return findField;
	}
	public void setFindField(String findField) {
		this.findField = findField;
	}
	public int getReportCount() {
		return reportCount;
	}
	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}
	
	
	
	
}//M_user class
