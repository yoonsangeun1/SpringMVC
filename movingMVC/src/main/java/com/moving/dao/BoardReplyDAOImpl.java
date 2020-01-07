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

	@Override
	public void inBoardQna(ReplyPostVO bq) {
		this.sqlSession.insert("bq_in",bq);
	}//질문 게시글 글쓰기

	@Override
	public void qnaupdateHit(int id) {
		this.sqlSession.update("bq_hit",id);
	}//조회수 증가

	@Override
	public ReplyPostVO getCont(int id) {
		return this.sqlSession.selectOne("bq_cont",id);
	}//내용보기 + 조회수 증가 트랜잭션

	@Override
	public ReplyPostVO getCont2(int id) {
		return this.sqlSession.selectOne("bq_cont2",id);
	}//조회수 증가 없이 내용보기

	@Override
	public void editBoardQna(ReplyPostVO bq) {
		this.sqlSession.update("bq_edit",bq);
	}//질문 게시글 수정

	@Override
	public void delBoardQna(int id) {
		this.sqlSession.delete("bq_del",id);
	}//질문 게시글 삭제

	@Override
	public void replyBoardQna(ReplyPostVO bq) {
		this.sqlSession.insert("bq_reply",bq);
	}//답변 글쓰기

	@Override
	public int selectReply(int id) {
		return this.sqlSession.selectOne("bq_reply_select",id);
	}//답변글이 이미 있는지 확인.
	
}//BoardReplyDAOImpl class
