package com.moving.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardNoticeDAOImpl implements BoardNoticeDAO {

	@Autowired
	private SqlSession sqlSession;
	
}//BoardDAOImpl class
