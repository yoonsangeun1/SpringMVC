package com.moving.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.ProfilePostVO;

@Repository
public class BoardActorsDAOImpl implements BoardActorsDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getTotalCount(ProfilePostVO ba) {
		return this.sqlSession.selectOne("ba_count",ba);
	}//배우 모집 게시물 총 개수 구하기

	@Override
	public List<ProfilePostVO> getBoardActorsList(ProfilePostVO ba) {
		return this.sqlSession.selectList("ba_list",ba);
	}//게시물 목록을 가져옴.

	@Override
	public void inBoardActors(ProfilePostVO ba) {
		this.sqlSession.insert("ba_in",ba);
	}//게시물 등록

	@Override
	public void actorsupdateHit(int id) {
		this.sqlSession.update("ba_hit",id);
	}//조회수 증가
	
	@Override
	public ProfilePostVO getCont(int id) {
		return this.sqlSession.selectOne("ba_cont",id);
	}//게시물 보기

	@Override
	public ProfilePostVO getCont2(int id) {
		return this.sqlSession.selectOne("ba_cont2",id);
	}//조회수 증가 없이 게시물 내용 담기

	@Override
	public void editBoardActors(ProfilePostVO ba) {
		this.sqlSession.update("ba_edit",ba);
	}//게시물 수정

	
	
	
}//BoardActorsDAOImpl class
