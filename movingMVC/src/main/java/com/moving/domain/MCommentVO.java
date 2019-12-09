package com.moving.domain;

public class MCommentVO {

	private int id; 					/* 아이디 */
	private int codeNo; 				/* 코드_번호 */
	private int userIdFrom; 			/* 회원_아이디_보낸이 */
	private int socialProfileIdFrom;	/* 소셜_프로필_아이디_보낸이 */
	private String content;  			/* 내용 */
	private String registerDate; 		/* 등록_일 */
	private int grade; 					/* 평점 */
	private int moveCount;				/* 무브_개수 */
	private int commentCount;			/* 댓글_개수 */
	private int commentIdReply; 		/* 댓글_아이디_답글 */
	private int replyStep;				/* 답글_계층 */
	private int replyOrder;				/* 답글_정렬순서 */
	private int videoPostId; 			/* 영상_게시글_아이디 */
	private int normalPostId; 			/* 일반_게시글_아이디 */
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
	public int getUserIdFrom() {
		return userIdFrom;
	}
	public void setUserIdFrom(int userIdFrom) {
		this.userIdFrom = userIdFrom;
	}
	public int getSocialProfileIdFrom() {
		return socialProfileIdFrom;
	}
	public void setSocialProfileIdFrom(int socialProfileIdFrom) {
		this.socialProfileIdFrom = socialProfileIdFrom;
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
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getMoveCount() {
		return moveCount;
	}
	public void setMoveCount(int moveCount) {
		this.moveCount = moveCount;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public int getCommentIdReply() {
		return commentIdReply;
	}
	public void setCommentIdReply(int commentIdReply) {
		this.commentIdReply = commentIdReply;
	}
	public int getReplyStep() {
		return replyStep;
	}
	public void setReplyStep(int replyStep) {
		this.replyStep = replyStep;
	}
	public int getReplyOrder() {
		return replyOrder;
	}
	public void setReplyOrder(int replyOrder) {
		this.replyOrder = replyOrder;
	}
	public int getVideoPostId() {
		return videoPostId;
	}
	public void setVideoPostId(int videoPostId) {
		this.videoPostId = videoPostId;
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
	public int getProfilePostId() {
		return profilePostId;
	}
	public void setProfilePostId(int profilePostId) {
		this.profilePostId = profilePostId;
	}
	
	
	
}
