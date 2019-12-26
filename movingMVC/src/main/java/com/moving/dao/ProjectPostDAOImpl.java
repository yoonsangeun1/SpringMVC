package com.moving.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.MCommentVO;
import com.moving.domain.ProjectPostVO;

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
		sqlSession.insert("insertProjectComment", mCommentVO);
	}//insertProjectComment() 댓글 작성

	@Override
	public void updateProjectCommentCountOne(MCommentVO mCommentVO) {
		sqlSession.update("updateProjectCommentCountOne", mCommentVO);
	}//
	
	@Override
	public void updateProjectCommentCount(MCommentVO mCommentVO) {
		sqlSession.update("updateProjectComment", mCommentVO);
	}

	@Override
	public List<MCommentVO> selectCommentList(int id) {
		return sqlSession.selectList("selectProjectComments", id);
	}//프로젝트 댓글 불러오기

	@Override
	public void updateProjectComment(MCommentVO mCommentVO) {
		sqlSession.update("updateProjectComment", mCommentVO);
	}

	@Override
	public void deleteProjectComment(int id) {
		sqlSession.delete("deleteProjectComment", id);		
	}

	@Override
	public List<Map<String, Object>> selectCommentListMap(int id) {
		return sqlSession.selectList("selectCommentListMap", id);
	}

	@Override
	public ProjectPostVO selectCommentCount(int id) {
		return sqlSession.selectOne("selectCommentCount", id);
	}

	@Override
	public void updateCommentCount(int id) {
		sqlSession.update("updateCommentCount", id);
	}

	@Override
	public int selectListCount(ProjectPostVO projectPostVO) {
		return sqlSession.selectOne("projectPost.selectListCount", projectPostVO);
	}

	@Override
	public List<ProjectPostVO> selectProjectList(ProjectPostVO projectPostVO) {
		return sqlSession.selectList("selectProjectList", projectPostVO);
	}
	
	
}
