package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.BoardReplyDAO;
import com.moving.domain.NormalPostVO;
import com.moving.domain.ReplyPostVO;

@Service
public class BoardReplyServiceImpl implements BoardReplyService {

	@Autowired
	private BoardReplyDAO boardReplyDao;

	@Override
	public int getTotalCount(ReplyPostVO bq) {
		return this.boardReplyDao.getTotalCount(bq);
	}

	@Override
	public List<NormalPostVO> getBoardQnaList(ReplyPostVO bq) {
		return this.boardReplyDao.getBoardQnaList(bq);
	}
	
}
