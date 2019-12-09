package com.moving.domain;

public class ProjectPostVO {

	private int id;					/* 아이디 */
	private int userId;				/* 회원_아이디 */
	private int codeNo; 			/* 코드_번호 20001 */
	private int code;				/* 분류번호 */
	private String title;			/* 제목 */
	private String content; 		/* 내용 */
	private String business; 		/* 제작사 */
	private int targetPrice;		/* 목표_금액 */
	private int nowPrice;			/* 현재_금액 */
	private String targetLimit;		/* 목표_기한 */
	private int leftLimit;			/* 남은_기한 */
	private int sponserCount;		/* 후원자_수 */
	private int hit; 				/* 조회수 */
	private int commentCount; 		/* 댓글_개수 */
	private int moveCount; 			/* 무브_개수 */
	private String registerDate; 	/* 등록_일 */
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getCodeNo() {
		return codeNo;
	}
	public void setCodeNo(int codeNo) {
		this.codeNo = codeNo;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
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
	public String getBusiness() {
		return business;
	}
	public void setBusiness(String business) {
		this.business = business;
	}
	public int getTargetPrice() {
		return targetPrice;
	}
	public void setTargetPrice(int targetPrice) {
		this.targetPrice = targetPrice;
	}
	public int getNowPrice() {
		return nowPrice;
	}
	public void setNowPrice(int nowPrice) {
		this.nowPrice = nowPrice;
	}
	public String getTargetLimit() {
		return targetLimit;
	}
	public void setTargetLimit(String targetLimit) {
		this.targetLimit = targetLimit;
	}
	public int getLeftLimit() {
		return leftLimit;
	}
	public void setLeftLimit(int leftLimit) {
		this.leftLimit = leftLimit;
	}
	public int getSponserCount() {
		return sponserCount;
	}
	public void setSponserCount(int sponserCount) {
		this.sponserCount = sponserCount;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public int getMoveCount() {
		return moveCount;
	}
	public void setMoveCount(int moveCount) {
		this.moveCount = moveCount;
	}
	public String getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}
	
	
}
