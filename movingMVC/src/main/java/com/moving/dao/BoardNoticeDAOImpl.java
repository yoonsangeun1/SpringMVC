package com.moving.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.NormalPostVO;

@Repository
public class BoardNoticeDAOImpl implements BoardNoticeDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getTotalCount(NormalPostVO bn) {
		return this.sqlSession.selectOne("bn_count",bn);
	}//공지사항 게시물 검색 전 , 후 총 개수 구하기

	@Override
	public List<NormalPostVO> getBoardNoticeList(NormalPostVO bn) {
		return this.sqlSession.selectList("bn_list",bn);
	}//게시물 목록을 가져옴.
	
	
	
	
	
	
	
	
}//BoardDAOImpl class
