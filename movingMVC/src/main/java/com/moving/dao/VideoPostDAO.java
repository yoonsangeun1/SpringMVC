package com.moving.dao;

import java.util.List;

import com.moving.domain.VideoPostVO;

public interface VideoPostDAO {
	
	int getTotalCount(); // 총 게시물

	List<VideoPostVO> getVideoPost(VideoPostVO videoPostVO); // 영상 포스트 목록

	VideoPostVO getContent(int id);
	
	void updateHit(int id); // 조회 수
	
}