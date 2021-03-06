package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.moving.dao.BoardFreeDAO;
import com.moving.dao.MUserDAO;
import com.moving.domain.MUserVO;
import com.moving.domain.NormalPostVO;

@Service
public class BoardFreeServiceImpl implements BoardFreeService {

	@Autowired
	private BoardFreeDAO boardFreeDao;
	
	@Autowired
	private MUserDAO mUserDAO;

	@Override
	public int getTotalCount(NormalPostVO bf) {
		return this.boardFreeDao.getTotalCount(bf);
	}//게시물 개수 

	@Override
	public List<NormalPostVO> getBoardFreeList(NormalPostVO bf) {
		return this.boardFreeDao.getBoardFreeList(bf);
	}//게시물 목록들을 가져옴

	@Transactional
	@Override
	public void inBoardFree(NormalPostVO bf) {
		this.boardFreeDao.inBoardFree(bf);
		MUserVO m=this.mUserDAO.findMUserAccountById(bf.getUserId());//유저 정보 가져오기
		m.setUserPoint(50);	//포인트 저장
		this.mUserDAO.pointCharge(m);	//포인트 up
	}//게시물 등록

	@Transactional(isolation=Isolation.READ_COMMITTED)
	//트랜잭션 격리(트랜잭션이 처리되는 중간에 외부간섭 배제)
	@Override
	public NormalPostVO getCont(int id) {
		this.boardFreeDao.updateHit(id);
		return this.boardFreeDao.getCont(id);
	}//게시물 보기 + 조회수 증가->트랜잭션 적용

	@Override
	public void editBoardFree(NormalPostVO bf) {
		this.boardFreeDao.editBoardFree(bf);
	}//게시글 수정

	@Override
	public void delBoardFree(int id) {
		this.boardFreeDao.delBoardFree(id);
	}//게시글 삭제

	@Override
	public NormalPostVO getCont2(int id) {
		return this.boardFreeDao.getCont2(id);
	}

}//BoardFreeServiceImpl class
