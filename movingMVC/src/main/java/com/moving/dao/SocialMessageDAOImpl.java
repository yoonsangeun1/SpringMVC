package com.moving.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SocialMessageDAOImpl implements SocialMessageDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
		
}
