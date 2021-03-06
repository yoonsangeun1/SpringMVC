package com.moving.domain;

import java.util.List;

public class ProjectPostVO {		/* 프로젝트 게시글 */

	private int id;					/* 아이디 */
	private int userId;				/* 회원_아이디 */
	private int codeNo; 			/* 코드_번호 20001 */
	private int statusCode;			/* 완성 미완성 분류 */
	private String title;			/* 제목 */
	private String introduce;		/* 소개글 */
	private String content; 		/* 내용 */
	private String business; 		/* 제작사 */
	private int targetPrice;		/* 목표_금액 */
	private int nowPrice;			/* 현재_금액 */
	private String targetLimit;		/* 목표_기한 */
	private String leftLimit;		/* 남은_기한 */
	private int sponserCount;		/* 후원자_수 */
	private int hit; 				/* 조회수 */
	private int commentCount; 		/* 댓글_개수 */
	private int moveCount; 			/* 무브_개수 */
	private String registerDate; 	/* 등록_일 */
	private String thumbnailImage; 	/* 썸네일 이미지 */

	/* 페이징 관련변수(쪽나누기) */
	private int startRow;			/* 시작행 번호 */
	private int endRow;				/* 끝행 번호 */

	/* 검색기능 */
	private String findName;		/* 검색어 */
	private String findField;		/* 검색 필드 */

	/* resultMap JOIN 검색용 */
	private List<MCommentVO> mCommentVO;			/* 댓글 VO */
	private MUserVO mUserVO;						/* 회원 VO */
	private MoveVO moveVO;							/* 무브 VO */
	private List<AttachedFileVO> attachedFileVO; 	/* 첨부파일 VO */
	private List<TagVO> tagVO;					 	/* 태그 VO */
	private List<RewardVO> rewardVO;				/* 리워드 VO */
	
	
	
	public MoveVO getMoveVO() {
		return moveVO;
	}
	public void setMoveVO(MoveVO moveVO) {
		this.moveVO = moveVO;
	}
	public String getThumbnailImage() {
		return thumbnailImage;
	}
	public void setThumbnailImage(String thumbnailImage) {
		this.thumbnailImage = thumbnailImage;
	}
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
	public int getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
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
	public String getLeftLimit() {
		return leftLimit;
	}
	public void setLeftLimit(String leftLimit) {
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
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
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
	public List<MCommentVO> getmCommentVO() {
		return mCommentVO;
	}
	public void setmCommentVO(List<MCommentVO> mCommentVO) {
		this.mCommentVO = mCommentVO;
	}
	public MUserVO getmUserVO() {
		return mUserVO;
	}
	public void setmUserVO(MUserVO mUserVO) {
		this.mUserVO = mUserVO;
	}
	public List<AttachedFileVO> getAttachedFileVO() {
		return attachedFileVO;
	}
	public void setAttachedFileVO(List<AttachedFileVO> attachedFileVO) {
		this.attachedFileVO = attachedFileVO;
	}
	public List<TagVO> getTagVO() {
		return tagVO;
	}
	public void setTagVO(List<TagVO> tagVO) {
		this.tagVO = tagVO;
	}
	public List<RewardVO> getRewardVO() {
		return rewardVO;
	}
	public void setRewardVO(List<RewardVO> rewardVO) {
		this.rewardVO = rewardVO;
	}
	
}
