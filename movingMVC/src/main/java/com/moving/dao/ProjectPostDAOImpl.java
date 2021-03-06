package com.moving.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.MCommentVO;
import com.moving.domain.MUserVO;
import com.moving.domain.MoveVO;
import com.moving.domain.NormalPostVO;
import com.moving.domain.ProjectPostVO;
import com.moving.domain.RewardVO;

@Repository
public class ProjectPostDAOImpl implements ProjectPostDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public ProjectPostVO selectprojectInfo(int id) {
		return sqlSession.selectOne("projectPost.selectProjectInfo", id);
	}//selectprojectInfo() 프로젝트 정보 모두 불러오기

	@Override
	public void updateHit(int id) {
		sqlSession.selectOne("projectPost.updateHit", id);
	}//updateHit() 조회수 증가

	@Override
	public void selectLeftLimit(int id) {
		sqlSession.update("projectPost.test", id);
	}//selectLeftLimit() 남은 기한 업데이트

	@Override
	public void insertProjectComment(MCommentVO mCommentVO) {
		sqlSession.insert("projectPost.insertProjectComment", mCommentVO);
	}//insertProjectComment() 댓글 작성

	@Override
	public void updateProjectCommentCountOne(MCommentVO mCommentVO) {
		sqlSession.update("projectPost.updateProjectCommentCountOne", mCommentVO);
	}//
	
	@Override
	public void updateProjectCommentCount(MCommentVO mCommentVO) {
		sqlSession.update("projectPost.updateProjectComment", mCommentVO);
	}

	@Override
	public List<MCommentVO> selectCommentList(int id) {
		return sqlSession.selectList("projectPost.selectProjectComments", id);
	}//프로젝트 댓글 불러오기

	@Override
	public void updateProjectComment(MCommentVO mCommentVO) {
		sqlSession.update("projectPost.updateProjectComment", mCommentVO);
	}

	@Override
	public void deleteProjectComment(int id) {
		sqlSession.delete("projectPost.deleteProjectComment", id);		
	}

	@Override
	public List<Map<String, Object>> selectCommentListMap(int id) {
		return sqlSession.selectList("projectPost.selectCommentListMap", id);
	}

	@Override
	public ProjectPostVO selectCommentCount(int id) {
		return sqlSession.selectOne("projectPost.selectCommentCount", id);
	}

	@Override
	public void updateCommentCount(int id) {
		sqlSession.update("projectPost.updateCommentCount", id);
	}

	@Override
	public int selectListCount(ProjectPostVO projectPostVO) {
		return sqlSession.selectOne("projectPost.selectListCount", projectPostVO);
	}

	@Override
	public List<ProjectPostVO> selectProjectList(ProjectPostVO projectPostVO) {
		return sqlSession.selectList("selectProjectList", projectPostVO);
	}

	@Override
	public MCommentVO selectCommentCountActors(int id) {
		return sqlSession.selectOne("projectPost.selectCommentCountActors", id);
	}

	@Override
	public List<Map<String, Object>> selectCommentListMapActors(int id) {
		return sqlSession.selectList("projectPost.selectCommentListMapActors", id);
	}

	@Override
	public void updateCommentCountActors(int id) {
		sqlSession.update("projectPost.updateCommentCountActors", id);
	}

	@Override
	public List<Map<String, Object>> selectCommentListMapNormal(int id) {
		return sqlSession.selectList("projectPost.selectCommentListMapNormal", id);
	}
	
	@Override
	public void updateCommentCountNormal(int id) {
		sqlSession.update("projectPost.updateCommentCountNormal", id);
	}
	
	@Override
	public int insertSelectProjectPost(ProjectPostVO projectPostVO) {
		return sqlSession.insert("insertSelectProjectPost", projectPostVO);
	}

	@Override
	public void updateProjectPost(ProjectPostVO projectPostVO) {
		sqlSession.update("updateProjectPost", projectPostVO);
	}

	@Override
	public void insertProjectReward(RewardVO rewardVO) {
		sqlSession.insert("insertProjectReward", rewardVO);
	}

	@Override
	public void selectProjectReward(int projectPostId) {
		sqlSession.insert("selectProjectReward", projectPostId);
	}

	@Override
	public ProjectPostVO selectBestprojectInfo() {
		return sqlSession.selectOne("selectBestprojectInfo");
	}

	@Override
	public List<ProjectPostVO> selectRandomProjectList(int no) {
		return sqlSession.selectList("selectRandomProjectList", no);
	}

	@Override
	public void deleteprojectPost(int id) {
		sqlSession.delete("deleteProject", id);
	}

	@Override
	public void updateProjectReward(RewardVO rewardVO) {
		sqlSession.update("updateProjectReward", rewardVO);
	}

	@Override
	public void updateUserBusinessInfo(MUserVO mUserVO) {
		sqlSession.update("updateUserBusinessInfo", mUserVO);
	}

	@Override
	public void updateProjectBusiness(ProjectPostVO projectPostVO) {
		sqlSession.update("updateProjectBusiness", projectPostVO);
	}

	@Override
	public void updateProjectStatus(int id) {
		sqlSession.update("updateProjectStatus", id);
	}

	@Override
	public void insertMove(MoveVO moveVO) {
		sqlSession.insert("insertMove", moveVO);
	}

	@Override
	public void updateMoveCount(MoveVO moveVO) {
		sqlSession.update("updateMoveCount", moveVO);
	}

	@Override
	public int findMoveOrNot(MoveVO m) {
		return sqlSession.selectOne("findMoveOrNot", m);
	}

	@Override
	public void deleteMove(MoveVO moveVO) {
		sqlSession.delete("deleteMove", moveVO);
	}

	@Override
	public void downMoveCount(MoveVO moveVO) {
		sqlSession.update("downMoveCount", moveVO);
	}

	@Override
	public List<ProjectPostVO> selectLikeList(int mid) {
		return sqlSession.selectList("selectLikeList", mid);
	}

	@Override
	public List<ProjectPostVO> selectMakeList(int mid) {
		return sqlSession.selectList("selectMakeList", mid);
	}

	@Override
	public List<NormalPostVO> selectBoardList(int mid) {
		return sqlSession.selectList("selectBoardList", mid);
	}
	
}
