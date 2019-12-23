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
	
	
}
