package com.moving.domain;

import java.util.Date;

public class BoardCommentVO { /*댓글 임시로 구현*/

	 private int rno;//댓글번호
	 private int id;//게시물번호
	 private String replyer;//댓글작성자
	 private String replytext;//댓글내용
	 private Date regdate;//댓글등록날짜
	 private Date updatedate;//댓글수정날짜
	 
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public String getReplytext() {
		return replytext;
	}
	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	 

	 
	 
	
	
}//BoardCommentVO class
