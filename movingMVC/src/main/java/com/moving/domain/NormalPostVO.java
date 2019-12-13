package com.moving.domain;

import java.util.List;

public class NormalPostVO {

	private int id; 				/* 아이디 */	  //시퀀스임
	private int codeNo; 			/* 코드_번호 */ //게시글 유형별 코드 입력 
	private int userId; 			/* 회원_아이디 */ //시퀀스 -> m_user의 시퀀스
	private String userCategory; 	/* 회원_분류 */ //가입 유저?탈퇴 유저? 등 인듯
	private String title;			/* 제목 */		//게시글 제목
	private String content; 		/* 내용 */       //게시글 내용
	private int hit; 				/* 조회수 */     //게시글 조회한 횟수
	private int commentCount;	    /* 댓글_개수 */  //댓글 개수
	private int moveCount;		    /* 무브_개수 */  //무브(좋아요? 같은 것) 개수
	private String registerDate;   /* 등록_일 */   //게시글 등록 날짜
	private String limitDate;	    /* 기한_날짜 */ //시나리오 공모
	private String questionContent;/* 질문_내용 */ //qna
	private String answerContent;  /* 답변_내용 */ //qna
	
	/* JOIN 검색, resultMap을 위한 변수 */
	private List<MCommentVO> mCommentVO;			/* 댓글 VO */
	private MUserVO mUserVO;						/* 회원 VO */
	private List<AttachedFileVO> attachedFileVO; 	/* 첨부파일 VO */
	private List<MoveVO> moveVO; 					/* 무브(좋아요) VO */
	
	//페이징 관련변수(쪽나누기)
	private int startrow;//시작행 번호
	private int endrow;//끝행 번호

	//검색기능
	private String findName;//검색어
	private String findField;//검색필드
	
	
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
	public String getUserCategory() {
		return userCategory;
	}
	public void setUserCategory(String userCategory) {
		this.userCategory = userCategory;
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
		return registerDate.substring(0,10);
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}
	public String getLimitDate() {
		return limitDate;
	}
	public void setLimitDate(String limitDate) {
		this.limitDate = limitDate;
	}
	public String getQuestionContent() {
		return questionContent;
	}
	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	public MUserVO getmUserVO() {
		return mUserVO;
	}
	public void setmUserVO(MUserVO mUserVO) {
		this.mUserVO = mUserVO;
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
	public List<MCommentVO> getmCommentVO() {
		return mCommentVO;
	}
	public void setmCommentVO(List<MCommentVO> mCommentVO) {
		this.mCommentVO = mCommentVO;
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
		
}//NomalPostVO class
