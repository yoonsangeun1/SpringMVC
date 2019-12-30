package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.moving.dao.VideoPostDAO;
import com.moving.domain.VideoPostVO;

@Service
public class VideoPostServiceImpl implements VideoPostService {
	
	@Autowired
	private VideoPostDAO videoPostDao;
	
	// 메인 상위 리스트
	@Override
	public List<VideoPostVO> getTopLs(int codeNo) {
		return this.videoPostDao.getTopLs(codeNo);
	}
	
	// 총 게시물 수 불러오기
	@Override
	public int getTotalCount(int codeNo) {
		return this.videoPostDao.getTotalCount(codeNo);
	} // getTotalCount()

	// 장르별 포스트 목록
	@Override
	public List<VideoPostVO> getVideoPost(VideoPostVO videoPostVO) {
		return this.videoPostDao.getVideoPost(videoPostVO);
	} // getVideoPost()

	// 내용 보기
	@Transactional
	@Override
	public VideoPostVO getContent(int id) {
		this.videoPostDao.updateHit(id);
		return this.videoPostDao.getContent(id);
	}
	
}