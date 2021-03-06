package com.moving.dao;

import java.util.List;

import com.moving.domain.VideoPostVO;

public interface VideoPostDAO {
	
	List<VideoPostVO> getCategoryAll(VideoPostVO videoPostVO); // 메인 페이지
	
	int getTotalCount(int codeNo); // 총 게시물
	
	List<VideoPostVO> getVideoPost(VideoPostVO videoPostVO); // 장르별 목록
	
	VideoPostVO getContent(int id); // 내용 보기

	void updateHit(int id); // 조회 수

}