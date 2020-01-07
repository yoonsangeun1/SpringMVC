package com.moving.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.NormalPostVO;
import com.moving.domain.ReplyPostVO;

@Repository
public class BoardReplyDAOImpl implements BoardReplyDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getTotalCount(ReplyPostVO bq) {
		return this.sqlSession.selectOne("bq_count",bq);
	}//QnA게시판 게시물 총 개수 구하기

	@Override
	public List<NormalPostVO> getBoardQnaList(ReplyPostVO bq) {
		return this.sqlSession.selectList("bq_list",bq);
	}//게시물 목록을 가져옴.
	
}//BoardReplyDAOImpl class
