package com.moving.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.BoardNoticeDAO;

@Service
public class BoardNoticeServiceImpl implements BoardNoticeService {

	@Autowired
	private BoardNoticeDAO boardNoticeDao;
	
	
	
}//BoardNoticeServiceImpl class 공지사항 서비스
