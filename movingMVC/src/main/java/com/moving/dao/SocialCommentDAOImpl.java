package com.moving.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.MCommentVO;
import com.moving.domain.SocialPostVO;

@Repository
public class SocialCommentDAOImpl implements SocialCommentDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertProjectComment(MCommentVO mCommentVO) {
		sqlSession.insert("socialComment.insertProjectComment", mCommentVO);
	}

	@Override
	public List<MCommentVO> selectCommentList(int id) {
		return sqlSession.selectList("socialComment.selectProjectComments", id);
	}

	@Override
	public void updateProjectComment(MCommentVO mCommentVO) {
		sqlSession.update("socialComment.updateProjectComment", mCommentVO);
	}

	@Override
	public void deleteProjectComment(int id) {
		sqlSession.delete("socialComment.deleteProjectComment", id);		
	}

	@Override
	public List<Map<String, Object>> selectCommentListMap(int id) {
		return sqlSession.selectList("socialComment.selectCommentListMap", id);
	}

	@Override
	public SocialPostVO selectCommentCount(int id) {
		return sqlSession.selectOne("socialComment.selectCommentCount", id);
	}

	@Override
	public void updateProjectCommentCountOne(MCommentVO mCommentVO) {
		sqlSession.update("socialComment.updateProjectCommentCountOne", mCommentVO);
	}

	@Override
	public void updateCommentCount(int id) {
		sqlSession.update("socialComment.updateCommentCount", id);
	}

}
