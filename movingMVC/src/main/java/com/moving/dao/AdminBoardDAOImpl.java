package com.moving.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.NormalPostVO;

@Repository
public class AdminBoardDAOImpl implements AdminBoardDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int boardCount(NormalPostVO np) {
		return this.sqlSession.selectOne("bf_count",np);
	} // 총 게시물 수

	@Override
	public List<NormalPostVO> boardList(NormalPostVO np) {
		return this.sqlSession.selectList("bf_list",np);
	} // 총 게시물 목록
	
}


