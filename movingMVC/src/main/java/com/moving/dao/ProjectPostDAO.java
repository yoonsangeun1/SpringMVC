package com.moving.dao;

import java.util.List;
import java.util.Map;

import com.moving.domain.MCommentVO;
import com.moving.domain.MUserVO;
import com.moving.domain.MoveVO;
import com.moving.domain.NormalPostVO;
import com.moving.domain.ProjectPostVO;
import com.moving.domain.RewardVO;

public interface ProjectPostDAO {

	ProjectPostVO selectprojectInfo(int id);

	void updateHit(int id);

	void selectLeftLimit(int id);

	void insertProjectComment(MCommentVO mCommentVO);

	void updateProjectCommentCount(MCommentVO mCommentVO);

	List<MCommentVO> selectCommentList(int id);

	void updateProjectComment(MCommentVO mCommentVO);

	void deleteProjectComment(int id);

	List<Map<String, Object>> selectCommentListMap(int id);

	ProjectPostVO selectCommentCount(int id);
	
	void updateCommentCount(int id);

	void updateProjectCommentCountOne(MCommentVO mCommentVO);

	int selectListCount(ProjectPostVO projectPostVO);

	List<ProjectPostVO> selectProjectList(ProjectPostVO projectPostVO);

	MCommentVO selectCommentCountActors(int id);

	List<Map<String, Object>> selectCommentListMapActors(int id);

	void updateCommentCountActors(int id);

	List<Map<String, Object>> selectCommentListMapNormal(int id);
	
	void updateCommentCountNormal(int id);
	
	public int insertSelectProjectPost(ProjectPostVO projectPostVO);

	public void updateProjectPost(ProjectPostVO projectPostVO);

	public void insertProjectReward(RewardVO rewardVO);

	public void selectProjectReward(int projectPostId);

	ProjectPostVO selectBestprojectInfo();

	List<ProjectPostVO> selectRandomProjectList(int no);

	void deleteprojectPost(int id);

	void updateProjectReward(RewardVO rewardVO);

	void updateUserBusinessInfo(MUserVO mUserVO);

	void updateProjectBusiness(ProjectPostVO projectPostVO);

	void updateProjectStatus(int id);

	void insertMove(MoveVO moveVO);

	void updateMoveCount(MoveVO moveVO);

	int findMoveOrNot(MoveVO m);

	void deleteMove(MoveVO moveVO);

	void downMoveCount(MoveVO moveVO);

	List<ProjectPostVO> selectLikeList(int mid);

	List<ProjectPostVO> selectMakeList(int mid);

	List<NormalPostVO> selectBoardList(int mid);

	
}
