package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.moving.dao.BoardReplyDAO;
import com.moving.dao.MUserDAO;
import com.moving.domain.MUserVO;
import com.moving.domain.NormalPostVO;
import com.moving.domain.ReplyPostVO;

@Service
public class BoardReplyServiceImpl implements BoardReplyService {

	@Autowired
	private BoardReplyDAO boardReplyDao;

	@Autowired
	private MUserDAO mUserDAO;
	
	@Override
	public int getTotalCount(ReplyPostVO bq) {
		return this.boardReplyDao.getTotalCount(bq);
	}

	@Override
	public List<NormalPostVO> getBoardQnaList(ReplyPostVO bq) {
		return this.boardReplyDao.getBoardQnaList(bq);
	}

	@Transactional
	@Override
	public void inBoardQna(ReplyPostVO bq) {
		this.boardReplyDao.inBoardQna(bq);
		MUserVO m=this.mUserDAO.findMUserAccountById(bq.getUserId());//유저 정보 가져오기
		m.setUserPoint(50);	//포인트 저장
		this.mUserDAO.pointCharge(m);	//포인트 up
	}

	@Transactional
	@Override
	public ReplyPostVO getCont(int id) {
		this.boardReplyDao.qnaupdateHit(id);
		return this.boardReplyDao.getCont(id);
	}

	@Override
	public ReplyPostVO getCont2(int id) {
		return this.boardReplyDao.getCont2(id);
	}

	@Override
	public void editBoardQna(ReplyPostVO bq) {
		this.boardReplyDao.editBoardQna(bq);
	}

	@Override
	public void delBoardQna(int id) {	
		this.boardReplyDao.delBoardQna(id);
	}

	@Transactional
	@Override
	public void replyBoardQna(ReplyPostVO bq) {
		this.boardReplyDao.replyOrderUpdate(bq);
		this.boardReplyDao.replyBoardQna(bq);
	}

	@Override
	public int selectReply(int id) {
		return this.boardReplyDao.selectReply(id);
	}
	
}
