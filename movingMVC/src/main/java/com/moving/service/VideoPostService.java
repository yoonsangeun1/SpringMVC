package com.moving.service;

import java.util.List;

import com.moving.domain.VideoPostVO;

public interface VideoPostService {

	int getTotalCount(); // 총 게시물 수

	List<VideoPostVO> getVideoPost(VideoPostVO dvdpage); // 목록

	VideoPostVO getContent(int id);

}