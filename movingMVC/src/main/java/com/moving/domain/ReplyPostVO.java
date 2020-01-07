package com.moving.domain;

import java.util.List;

public class ReplyPostVO {				/* 계층형 게시판 */
	
	private int id;						/* 아이디 */
	private int code_no; 				/* 코드_번호 10006 */
	private int userId; 				/* 회원_아이디 */
	private String category; 			/* 분류 */
	private String title; 				/* 제목 */
	private String content; 			/* 내용 */
	private int hit; 					/* 조회수 */
	private String registerDate; 		/* 등록_일 */
	private int commentCount;			/* 댓글_개수 */
	private int moveCount; 			/* 무브_개수 */
	private int replyPostId; 			/* 답글_게시글_아이디 */
	private int replyStep; 			/* 답글_계층 */
	private int replyOrder; 			/* 답글_정렬순서 */
	private int publishAvailability; 	/* 공개_여부 */
	
	/* JOIN 검색, resultMap을 위한 변수 */
	private List<MCommentVO> mCommentVO;			/* 댓글 VO */
	private MUserVO mUserVO;						/* 회원 VO */
	private List<AttachedFileVO> attachedFileVO; 	/* 첨부파일 VO */
	private List<MoveVO> moveVO; 					/* 무브(좋아요) VO */
	private SocialProfileVO socialProfileVO;		/*SNS VO*/
	
	//페이징 관련변수(쪽나누기)
	private int startrow; //시작행 번호
	private int endrow; //끝행 번호
	
	//검색기능
	private String findName; //검색어
	private String findField; //검색필드
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCode_no() {
		return code_no;
	}
	public void setCode_no(int code_no) {
		this.code_no = code_no;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
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
	public int getReplyPostId() {
		return replyPostId;
	}
	public void setReplyPostId(int replyPostId) {
		this.replyPostId = replyPostId;
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
	public int getPublishAvailability() {
		return publishAvailability;
	}
	public void setPublishAvailability(int publishAvailability) {
		this.publishAvailability = publishAvailability;
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
	public List<MoveVO> getMoveVO() {
		return moveVO;
	}
	public void setMoveVO(List<MoveVO> moveVO) {
		this.moveVO = moveVO;
	}
	public SocialProfileVO getSocialProfileVO() {
		return socialProfileVO;
	}
	public void setSocialProfileVO(SocialProfileVO socialProfileVO) {
		this.socialProfileVO = socialProfileVO;
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
	
	

	
	
	
}
