package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.AdminBoardDAO;
import com.moving.domain.NormalPostVO;

@Service
public class AdminBoardServiceImpl implements AdminBoardService{

	@Autowired
	private AdminBoardDAO adminBoardDao;
	
	@Override
	public int boardCount(NormalPostVO np) {
		return this.adminBoardDao.boardCount(np);
	}

	@Override
	public List<NormalPostVO> boardList(NormalPostVO np) {
		return this.adminBoardDao.boardList(np);
	}

	@Override
	public int findUserIdByNickname(String findName) {
		return this.adminBoardDao.findUserIdByNickname(findName);
	}

	@Override
	public void insertFaq(NormalPostVO np) {
		this.adminBoardDao.insertFaq(np);
	}

	@Override
	public void noticeWrite(NormalPostVO np) {
		this.adminBoardDao.noticeWrite(np);
	}

	@Override
	public NormalPostVO noticeCont(int id) {
		return this.adminBoardDao.noticeCont(id);
	}

	@Override
	public void noticeEdit(NormalPostVO np) {
		this.adminBoardDao.noticeEdit(np);
	}

	@Override
	public void noticeDel(int id) {
		this.adminBoardDao.noticeDel(id);
	}
	
	
}
