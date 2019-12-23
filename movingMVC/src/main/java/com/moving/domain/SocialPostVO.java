package com.moving.domain;

import java.util.List;

public class SocialPostVO {
	private int id;			//게시글 넘버
	private int codeNo;		//게시글 종류
	private int socialId;	//소셜 회원 아이디(넘버)
	private String content;	//게시글 내용
	private int projectId;	//(영화사)프로젝트 아이디(넘버)
	private int socialCount;
	private int moveCount;	//좋아요 개수
	private String registerDate;//등록일자
	private int publishAvailability;//공개 여부
	
	/* resultmap을 위한 변수 */
	private SocialProfileVO socialProfileVO;
	private List<AttachedFileVO> attachedFileVO;
	private List<MCommentVO> mCommentVO;
	
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
	public int getSocialId() {
		return socialId;
	}
	public void setSocialId(int socialId) {
		this.socialId = socialId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public int getSocialCount() {
		return socialCount;
	}
	public void setSocialCount(int socialCount) {
		this.socialCount = socialCount;
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
	public int getPublishAvailability() {
		return publishAvailability;
	}
	public void setPublishAvailability(int publishAvailability) {
		this.publishAvailability = publishAvailability;
	}
	public SocialProfileVO getSocialProfileVO() {
		return socialProfileVO;
	}
	public void setSocialProfileVO(SocialProfileVO socialProfileVO) {
		this.socialProfileVO = socialProfileVO;
	}
	public List<AttachedFileVO> getAttachedFileVO() {
		return attachedFileVO;
	}
	public void setAttachedFileVO(List<AttachedFileVO> attachedFileVO) {
		this.attachedFileVO = attachedFileVO;
	}
	public List<MCommentVO> getmCommentVO() {
		return mCommentVO;
	}
	public void setmCommentVO(List<MCommentVO> mCommentVO) {
		this.mCommentVO = mCommentVO;
	}
	
	
}
