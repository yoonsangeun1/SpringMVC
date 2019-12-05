package com.moving.domain;

public class Normal_PostVO {

	private int id; 				/* 아이디 */	  //시퀀스임
	private int code_no; 			/* 코드_번호 */ //게시글 유형별 코드 입력 
	private int user_id; 			/* 회원_아이디 */ //시퀀스 -> m_user의 시퀀스
	private String user_category; 	/* 회원_분류 */ //가입 유저?탈퇴 유저? 등 인듯
	private String title;			/* 제목 */		//게시글 제목
	private String content; 		/* 내용 */       //게시글 내용
	private int hit; 				/* 조회수 */     //게시글 조회한 횟수
	private int comment_count;	    /* 댓글_개수 */  //댓글 개수
	private int move_count;		    /* 무브_개수 */  //무브(좋아요? 같은 것) 개수
	private String register_date;   /* 등록_일 */   //게시글 등록 날짜
	private String limit_date;	    /* 기한_날짜 */ //시나리오 공모
	private String question_content;/* 질문_내용 */ //qna
	private String answer_content;  /* 답변_내용 */ //qna
	private M_userVO m_userVO; //유저 vo resultMap 사용하기 위해 적용
	
	public M_userVO getM_userVO() {
		return m_userVO;
	} //테스트
	
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
	public int getCode_no() {
		return code_no;
	}
	public void setCode_no(int code_no) {
		this.code_no = code_no;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_category() {
		return user_category;
	}
	public void setUser_category(String user_category) {
		this.user_category = user_category;
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
	public int getComment_count() {
		return comment_count;
	}
	public void setComment_count(int comment_count) {
		this.comment_count = comment_count;
	}
	public int getMove_count() {
		return move_count;
	}
	public void setMove_count(int move_count) {
		this.move_count = move_count;
	}
	public String getRegister_date() {
		return register_date.substring(0,10);
	}
	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}
	public String getLimit_date() {
		return limit_date;
	}
	public void setLimit_date(String limit_date) {
		this.limit_date = limit_date;
	}
	public String getQuestion_content() {
		return question_content;
	}
	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}
	public String getAnswer_content() {
		return answer_content;
	}
	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
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
	
	
	
	
	
	
	
}//Nomal_PostVO class
