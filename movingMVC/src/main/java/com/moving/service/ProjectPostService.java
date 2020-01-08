package com.moving.service;

import java.util.List;
import java.util.Map;

import com.moving.domain.MCommentVO;
import com.moving.domain.ProjectPostVO;
import com.moving.domain.RewardVO;

public interface ProjectPostService {
	
	//프로젝트 정보 + 댓글 + 작성자 등등 가져오기
	ProjectPostVO selectprojectInfo(int id);
	//프로젝트 댓글 입력
	void insertProjectComment(MCommentVO mCommentVO);
	//게시글 아이디에 해당하는 댓글 리스트 불러오기
	List<MCommentVO> selectCommentList(int id);
	//댓글 번호를 기준으로 댓글 수정
	void updateProjectComment(MCommentVO mCommentVO);
	//댓글 번호를 기준으로 댓글 삭제
	void deleteProjectComment(int id);
	//프로젝트 번호에 해당하는 댓글 리스트 불러오기(비동기식)
	List<Map<String, Object>> selectCommentListMap(int id);
	//게시글에 해당하는 댓글 개수 불러오면서 저장
	ProjectPostVO selectCommentCount(int id);
	int selectListCount(ProjectPostVO projectPostVO);//게시글 리스트 개수 구하기
	List<ProjectPostVO> selectProjectList(ProjectPostVO projectPostVO);//프로젝트 리스트 불러오기
	
	MCommentVO selectCommentCountActors(int id);//Actors 댓글 개수 카운트
	List<Map<String, Object>> selectCommentListMapActors(int id);//Actors 댓글 개수 카운트
	List<Map<String, Object>> selectCommentListMapNormal(int id);//Normal 댓글 개수 카운트
	
	
	int insertSelectProjectPost(ProjectPostVO projectPostVO);//초기 게시글 저장
	void updateProjectPost(ProjectPostVO projectPostVO);//게시글 수정

	void insertProjectReward(RewardVO rewardVO);//프로젝트 리워드 자료 넣기
	void selectProjectReward(int projectPostId);//프로젝트 리워드 불러오기
	void updateProjectReward(RewardVO rewardVO);//리워드 수정
	
	ProjectPostVO selectBestprojectInfo();//추천순 가장 많은 프로젝트 하나 띄우기
	List<ProjectPostVO> selectRandomProjectList(int no);//랜덤으로 프로젝트 리스트 띄우기 
	void deleteprojectPost(int id);//프로젝트 게시글 삭제


}
