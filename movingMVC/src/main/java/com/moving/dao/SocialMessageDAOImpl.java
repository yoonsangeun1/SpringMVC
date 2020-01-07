package com.moving.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.SocialMessageVO;

@Repository
public class SocialMessageDAOImpl implements SocialMessageDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertMessage(SocialMessageVO m_vo) {
		this.sqlSession.insert("insertMessage",m_vo);
	}
}
