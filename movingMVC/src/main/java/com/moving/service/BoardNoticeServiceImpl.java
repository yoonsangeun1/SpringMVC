package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	public void inBoardNotice(NormalPostVO bn) {
		this.boardNoticeDao.inBoardNotice(bn);
	}
	
	@Transactional
	@Override
	public NormalPostVO getCont(int id) {
		this.boardNoticeDao.noticeupdateHit(id);
		return this.boardNoticeDao.getCont(id);
	}

	@Override
	public void editBoardNotice(NormalPostVO bn) {
		this.boardNoticeDao.editBoardNotice(bn);
	}

	@Override
	public void delBoardNotice(int id) {
		this.boardNoticeDao.delBoardNotice(id);
	}
	
}//BoardNoticeServiceImpl class 공지사항 서비스
