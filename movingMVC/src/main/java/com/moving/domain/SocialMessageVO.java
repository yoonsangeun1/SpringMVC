package com.moving.domain;

public class SocialMessageVO {
	private int id;			/* 아이디 */
	private String social_id_from; /* 소셜 아이디 보낸이 */
	private String social_id_to;   /* 소셜 아이디 받는이*/
	private String content;			/* 내용 */
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSocial_id_from() {
		return social_id_from;
	}
	public void setSocial_id_from(String social_id_from) {
		this.social_id_from = social_id_from;
	}
	public String getSocial_id_to() {
		return social_id_to;
	}
	public void setSocial_id_to(String social_id_to) {
		this.social_id_to = social_id_to;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
