package com.moving.domain;

public class BoardFreeVO {
	private int free_id;  //게시판 번호
	private String free_name;  //글쓴이
	private String free_title; //제목
	private String free_cont; //내용
	private int free_hit; //조회수
	private String free_date; //등록날짜
	
	//페이징 관련변수(쪽나누기)
	private int startrow;//시작행 번호
	private int endrow;//끝행 번호

	//검색기능
	private String find_name;//검색어
	private String find_field;//검색필드
	
	public int getFree_id() {
		return free_id;
	}
	public void setFree_id(int free_id) {
		this.free_id = free_id;
	}
	public String getFree_name() {
		return free_name;
	}
	public void setFree_name(String free_name) {
		this.free_name = free_name;
	}
	public String getFree_title() {
		return free_title;
	}
	public void setFree_title(String free_title) {
		this.free_title = free_title;
	}
	public String getFree_cont() {
		return free_cont;
	}
	public void setFree_cont(String free_cont) {
		this.free_cont = free_cont;
	}
	public int getFree_hit() {
		return free_hit;
	}
	public void setFree_hit(int free_hit) {
		this.free_hit = free_hit;
	}
	public String getFree_date() {
		return free_date.substring(0,10);
	}
	public void setFree_date(String free_date) {
		this.free_date = free_date;
		//0이상 10미만 사이의 문자 년월일
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
	
	
	
}//BoardFreeVO class
