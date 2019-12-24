package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.BoardNoticeDAO;
import com.moving.domain.NormalPostVO;

@Service
public class BoardNoticeServiceImpl implements BoardNoticeService {

	@Autowired
	private BoardNoticeDAO boardNoticeDao;

	@Override
	public int getTotalCount(NormalPostVO bn) {
		return this.boardNoticeDao.getTotalCount(bn);
	}

	@Override
	public List<NormalPostVO> getBoardNoticeList(NormalPostVO bn) {
		return this.boardNoticeDao.getBoardNoticeList(bn);
	}
	
	
	
}//BoardNoticeServiceImpl class 공지사항 서비스
