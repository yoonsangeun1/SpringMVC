package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.moving.dao.BoardActorsDAO;
import com.moving.dao.MUserDAO;
import com.moving.domain.MUserVO;
import com.moving.domain.ProfilePostVO;

@Service
public class BoardActorsServiceImpl implements BoardActorsService {

	@Autowired
	private BoardActorsDAO boardActorsDao;

	@Autowired
	private MUserDAO mUserDAO;
	
	@Override
	public int getTotalCount(ProfilePostVO ba) {
		return this.boardActorsDao.getTotalCount(ba);
	}

	@Override
	public List<ProfilePostVO> getBoardActorsList(ProfilePostVO ba) {
		return this.boardActorsDao.getBoardActorsList(ba);
	}

	@Transactional
	@Override
	public void inBoardActors(ProfilePostVO ba) {
		this.boardActorsDao.inBoardActors(ba);
		MUserVO m=this.mUserDAO.findMUserAccountById(ba.getUserId());//유저 정보 가져오기
		m.setUserPoint(50);	//포인트 저장
		this.mUserDAO.pointCharge(m);	//포인트 up
	}

	@Transactional(isolation=Isolation.READ_COMMITTED)
	//트랜잭션 격리(트랜잭션이 처리되는 중간에 외부간섭 배제)
	@Override
	public ProfilePostVO getCont(int id) {
		this.boardActorsDao.actorsupdateHit(id);
		return boardActorsDao.getCont(id);
	}

	@Override
	public ProfilePostVO getCont2(int id) {
		return this.boardActorsDao.getCont2(id);
	}

	@Override
	public void editBoardActors(ProfilePostVO ba) {
		this.boardActorsDao.editBoardActors(ba);
	}

	@Override
	public void editBoardActors2(ProfilePostVO ba) {
		this.boardActorsDao.editBoardActors2(ba);
	}

	@Override
	public void delBoardActors(int id) {
		this.boardActorsDao.delBoardActors(id);
	}

	
}//BoardActorsServiceImpl class
