package com.moving.domain;

import java.util.List;

public class ProfilePostVO {		/* 배우모집 게시판 */

	private int id;					/* 아이디 */
	private int codeNo;				/* 코드_번호 10005 */
	private int userId; 			/* 회원_아이디 */
	private String title; 			/* 제목 */
	private String category;		/* 카테고리 */
	private String content; 		/* 내용 */
	private int hit; 				/* 조회수 */
	private String registerDate; 	/* 등록_일 */
	private int commentCount; 		/* 댓글_개수 */
	private int moveCount; 			/* 무브_개수 */
	private String name; 			/* 이름 */
	private String sex;				/* 성별 */
	private String birthDate; 		/* 생년월일_일 */
	private int age; 				/* 나이 */
	private String email; 			/* 이메일 */
	private int height; 			/* 신장 */
	private int weight; 			/* 몸무게 */
	private String job; 			/* 직업 */
	private String school; 			/* 학력 */
	private String specification; 	/* 경력 */
	private String websiteUrl; 		/* 홈페이지_url */
	
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getSpecification() {
		return specification;
	}
	public void setSpecification(String specification) {
		this.specification = specification;
	}
	public String getWebsiteUrl() {
		return websiteUrl;
	}
	public void setWebsiteUrl(String websiteUrl) {
		this.websiteUrl = websiteUrl;
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
