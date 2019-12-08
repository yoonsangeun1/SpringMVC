package com.moving.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.NormalPostDTO;
import com.moving.domain.NormalPostVO;

@Repository
public class BoardFreeDAOImpl implements BoardFreeDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getTotalCount() {
		return this.sqlSession.selectOne("bf_count");
	}//자유게시판 게시물 총 개수 구하기

	@Override
	public List<NormalPostDTO> getBoardFreeList(NormalPostVO bf) {
		return this.sqlSession.selectList("bf_list",bf);
	}//게시물 목록을 가져옴.

	@Override
	public void inBoardFree(NormalPostVO bf) {
		this.sqlSession.insert("bf_in",bf);
	}//게시물 등록

	@Override
	public void updateHit(int id) {
		this.sqlSession.update("bf_hit",id);
	}//조회수 증가
	
	@Override
	public NormalPostDTO getCont(int id) {
		return this.sqlSession.selectOne("bf_cont",id);
	}//게시물 보기

	@Override
	public void editBoardFree(NormalPostVO bf) {
		this.sqlSession.update("bf_edit",bf);
	}//게시물 수정

	@Override
	public void delBoardFree(int free_id) {
		this.sqlSession.delete("bf_del",free_id);
	}//게시글 삭제
	
	
	
}//BoardDAOImpl class
