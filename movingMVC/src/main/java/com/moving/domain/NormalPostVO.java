package com.moving.domain;

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
	private MUserVO mUserVO; 		//유저 vo resultMap 사용하기 위해 적용
	
	//페이징 관련변수(쪽나누기)
	private int startrow;//시작행 번호
	private int endrow;//끝행 번호

	//검색기능
	private String find_name;//검색어
	private String find_field;//검색필드
	
	
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
		return registerDate;
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
	public String getFind_name() {
		return find_name;
	}
	public void setFind_name(String find_name) {
		this.find_name = find_name;
	}
	public String getFind_field() {
		return find_field;
	}
	public void setFind_field(String find_field) {
		this.find_field = find_field;
	}
	
	
	
}//NomalPostVO class
