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
		System.out.println("content"+mCommentVO.getContent());
		System.out.println("userIdFrom"+mCommentVO.getUserIdFrom());
		System.out.println("projectPostId"+mCommentVO.getProjectPostId());
	}//insertProjectComment() 댓글 작성

	@Override
	public void updateProjectCommentCount(MCommentVO mCommentVO) {
		sqlSession.update("updateProjectComment", mCommentVO);
	}//댓글 개수 카운트 높여서 저장

	@Override
	public List<MCommentVO> selectCommentList(int id) {
		return sqlSession.selectList("selectProjectComments", id);
	}

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
	
	
}
