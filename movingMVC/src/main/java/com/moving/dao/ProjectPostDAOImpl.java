package com.moving.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.ProjectPostVO;

@Repository
public class ProjectPostDAOImpl implements ProjectPostDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public ProjectPostVO selectprojectInfo(int id) {
		return sqlSession.selectOne("selectProjectInfo", id);
	}//selectprojectInfo()

	@Override
	public void updateHit(int id) {
		sqlSession.selectOne("updateHit", id);
	}//updateHit()

	@Override
	public void selectLeftLimit(int id) {
		sqlSession.update("test", id);
	}//selectLeftLimit()
	
	
}
