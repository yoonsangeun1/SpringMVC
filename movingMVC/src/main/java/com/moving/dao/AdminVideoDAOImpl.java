package com.moving.dao;

import java.util.List;

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

	@Override
	public int videoCount(VideoPostVO vp) {
		return this.sqlSession.selectOne("vp_count",vp);
	} // 영화 게시물 수

	@Override
	public List<VideoPostVO> videoList(VideoPostVO vp) {
		return this.sqlSession.selectList("vp_list",vp);
	} // 영화 게시물 목록

	@Override
	public void insertTeaser(VideoPostVO vp) {
		this.sqlSession.insert("insertTeaserVideo",vp);
	} // 티저 게시물 저장
	
	
}
