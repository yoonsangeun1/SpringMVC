package com.moving.domain;

import java.util.List;

public class ReplyPostVO {				/* 계층형 게시판 */
	
	private int id;						/* 아이디 */
	private int code_no; 				/* 코드_번호 10005 */
	private int user_id; 				/* 회원_아이디 */
	private String category; 			/* 분류 */
	private String title; 				/* 제목 */
	private String content; 			/* 내용 */
	private int hit; 					/* 조회수 */
	private String register_date; 		/* 등록_일 */
	private int comment_count;			/* 댓글_개수 */
	private int move_count; 			/* 무브_개수 */
	private int reply_post_id; 			/* 답글_게시글_아이디 */
	private int reply_step; 			/* 답글_계층 */
	private int reply_order; 			/* 답글_정렬순서 */
	private int publish_availability; 	/* 공개_여부 */
	
	/* JOIN 검색, resultMap을 위한 변수 */
	private List<MCommentVO> mCommentVO;			/* 댓글 VO */
	private MUserVO mUserVO;						/* 회원 VO */
	private List<AttachedFileVO> attachedFileVO; 	/* 첨부파일 VO */
	private List<MoveVO> moveVO; 					/* 무브(좋아요) VO */
	
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
	public String getRegister_date() {
		return register_date;
	}
	public void setRegister_date(String register_date) {
		this.register_date = register_date;
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
	public int getReply_post_id() {
		return reply_post_id;
	}
	public void setReply_post_id(int reply_post_id) {
		this.reply_post_id = reply_post_id;
	}
	public int getReply_step() {
		return reply_step;
	}
	public void setReply_step(int reply_step) {
		this.reply_step = reply_step;
	}
	public int getReply_order() {
		return reply_order;
	}
	public void setReply_order(int reply_order) {
		this.reply_order = reply_order;
	}
	public int getPublish_availability() {
		return publish_availability;
	}
	public void setPublish_availability(int publish_availability) {
		this.publish_availability = publish_availability;
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
	
}
