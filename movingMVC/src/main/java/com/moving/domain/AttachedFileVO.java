package com.moving.domain;

import org.springframework.web.multipart.MultipartFile;

public class AttachedFileVO {		/* 첨부_파일 */
	private int id; 				/* 아이디 */
	private int codeNo; 			/* 코드_번호 */
	private int fileType;			/* 파일_타입 */
	private String filePath; 		/* 파일_경로 */
	private String thumbnailPath; 	/* 썸네일_경로 */
	private int no; 				/* 순번 */
	private String registerDate;	/* 등록_날짜 */
	private int profilePostId; 		/* 프로필_게시글_아이디 */
	private int normalPostId; 		/* 일반_게시글_아이디 */
	private int videoPostId; 		/* 영상_게시글_아이디 */
	private int projectPostId; 		/* 프로젝트_게시글_아이디 */
	private int socialPostId; 		/* 소셜_게시글_아이디 */
	private int replyPostId; 		/* 답글_게시글_아이디 */
	
	private MultipartFile Filedata; //photo_uploader.html페이지의 form태그내에 존재하는 file 태그의 name명과 일치시켜줌
	private String callback; // callback url
	private String callback_func; //콜백함수??
	
	public int getFileType() {
		return fileType;
	}
	public void setFileType(int fileType) {
		this.fileType = fileType;
	}
	public MultipartFile getFiledata() {
		return Filedata;
	}
	public void setFiledata(MultipartFile filedata) {
		Filedata = filedata;
	}
	public String getCallback() {
		return callback;
	}
	public void setCallback(String callback) {
		this.callback = callback;
	}
	public String getCallback_func() {
		return callback_func;
	}
	public void setCallback_func(String callback_func) {
		this.callback_func = callback_func;
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
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getThumbnailPath() {
		return thumbnailPath;
	}
	public void setThumbnailPath(String thumbnailPath) {
		this.thumbnailPath = thumbnailPath;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}
	public int getProfilePostId() {
		return profilePostId;
	}
	public void setProfilePostId(int profilePostId) {
		this.profilePostId = profilePostId;
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
	public int getReplyPostId() {
		return replyPostId;
	}
	public void setReplyPostId(int replyPostId) {
		this.replyPostId = replyPostId;
	}
	
	
}
