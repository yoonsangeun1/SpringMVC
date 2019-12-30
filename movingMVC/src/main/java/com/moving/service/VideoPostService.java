package com.moving.service;

import java.util.List;

import com.moving.domain.VideoPostVO;

public interface VideoPostService {
	
	List<VideoPostVO> getTopLs(int codeNo); // 메인 상위 포스터 불러오기
	
	int getTotalCount(int codeNo); // 총 게시물 수

	List<VideoPostVO> getVideoPost(VideoPostVO videoPostVO); // 장르별 목록
	
	VideoPostVO getContent(int id); // 내용 보기

}