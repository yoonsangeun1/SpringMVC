package com.moving.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminVideoDAOImpl implements AdminVideoDAO {

	@Autowired
	private SqlSession sqlSession;
	
	
}
