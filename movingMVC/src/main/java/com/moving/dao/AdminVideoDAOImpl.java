package com.moving.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.VideoPostVO;

@Repository
public class AdminVideoDAOImpl implements AdminVideoDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertMovie(VideoPostVO vp) {
		this.sqlSession.insert("insertMovieVideo",vp);
	} // 영화 게시물 저장
	
	
}
