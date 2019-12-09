package com.moving.domain;

public class VideoPostVO {
	
	private int id; // 아이디
	private int codeNo; // 영화 코드 번호
	private String userId; // 회원 아이디
	private String genre; // 영화 장르
	private String titleEnglish; // 영화 영문 제목
	private String titleKorean; // 영화 한글 제목
	private String director; // 영화 감독
	private String actor; // 영화 배우
	private String releaseDate; // 영화 개봉일
	private String content; // 영상 내용
	private int grade; // 영상 평점
	private String eraBackground; // 영화 시대 배경
	private String videoFilePath; // 영상 파일 경로
	private int videoLength; // 영상 길이
	private String rate; // 영상 관람 등급
	private int hit; // 영상 조회 수
	private int commentCount; // 영상 댓글 개수
	private int moveCount; // 무브 개수
	private String registerDate; // 영상 등록일
	
	
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getTitleEnglish() {
		return titleEnglish;
	}
	public void setTitleEnglish(String titleEnglish) {
		this.titleEnglish = titleEnglish;
	}
	public String getTitleKorean() {
		return titleKorean;
	}
	public void setTitleKorean(String titleKorean) {
		this.titleKorean = titleKorean;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getEraBackground() {
		return eraBackground;
	}
	public void setEraBackground(String eraBackground) {
		this.eraBackground = eraBackground;
	}
	public String getVideoFilePath() {
		return videoFilePath;
	}
	public void setVideoFilePath(String videoFilePath) {
		this.videoFilePath = videoFilePath;
	}
	public int getVideoLength() {
		return videoLength;
	}
	public void setVideoLength(int videoLength) {
		this.videoLength = videoLength;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
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