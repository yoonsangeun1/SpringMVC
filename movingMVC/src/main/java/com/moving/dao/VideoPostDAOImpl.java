package com.moving.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.VideoPostVO;

@Repository
public class VideoPostDAOImpl implements VideoPostDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 영화 서비스 메인 페이지
	@Override
	public List<VideoPostVO> getCategoryAll(VideoPostVO videoPostVO) {
		return this.sqlSession.selectList("videoMainPage", videoPostVO);
	}
	
	// 총 게시물 수
	@Override
	public int getTotalCount(int codeNo) {
		return this.sqlSession.selectOne("dvdCount", codeNo);
	}

	// 영상 포스트 목록
	@Override
	public List<VideoPostVO> getVideoPost(VideoPostVO videoPostVO) {
		return this.sqlSession.selectList("videoPostList", videoPostVO);
	}

	// 내용 보기
	@Override
	public VideoPostVO getContent(int id) {
		return this.sqlSession.selectOne("dvd_content", id);
	}

	// 조회 수 증가
	@Override
	public void updateHit(int id) {
		this.sqlSession.selectOne("videoUpdateHit", id);
	}
	
}