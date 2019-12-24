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

	@Override
	public void inBoardNotice(NormalPostVO bn) {
		this.sqlSession.insert("bn_in",bn);
	}//게시물 등록

	@Override
	public void noticeupdateHit(int id) {
		this.sqlSession.update("bn_hit",id);
	}//조회수 증가
	
	@Override
	public NormalPostVO getCont(int id) {
		return this.sqlSession.selectOne("bn_cont",id);
	}//게시물 내용 보기

	@Override
	public void editBoardNotice(NormalPostVO bn) {
		this.sqlSession.update("bn_edit",bn);
	}//게시물 수정

	@Override
	public void delBoardNotice(int id) {
		this.sqlSession.delete("bn_del",id);
	}//게시글 삭제

}//BoardDAOImpl class
