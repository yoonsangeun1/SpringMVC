package com.moving.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.MCommentVO;
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
	
}
