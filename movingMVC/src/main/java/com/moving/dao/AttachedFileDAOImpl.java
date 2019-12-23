package com.moving.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class AttachedFileDAOImpl implements AttachedFileDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertAttachedFile() {
		
	}
}
