package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.moving.dao.MUserDAO;
import com.moving.dao.SocialDAO;
import com.moving.domain.AttachedFileVO;
import com.moving.domain.MUserVO;
import com.moving.domain.MoveVO;
import com.moving.domain.ProfilePostVO;
import com.moving.domain.ReportVO;
import com.moving.domain.SocialMessageVO;
import com.moving.domain.SocialPostVO;
import com.moving.domain.SocialProfileVO;

@Service
public class SocialServiceImpl implements SocialService {
	@Autowired
	private SocialDAO socialDAO;
	
	@Autowired
	private MUserDAO mUserDAO;

//	@Autowired
//	private AttachedFileDAO attachedFileDAO;
	
	@Override
	public SocialProfileVO socialProfileInfo(int id) {
		return socialDAO.selectSocialProfileInfo(id);
	}

	@Override
	public SocialProfileVO socialProfileInfoWithId(int id) {
		return socialDAO.socialProfileInfoWithId(id);
	}

	@Transactional
	@Override
	public void insertPost(SocialPostVO socialPostVO) {
		this.socialDAO.insertPost(socialPostVO);
		MUserVO m=mUserDAO.findMUserAccount(socialPostVO.getSocialId());	//소셜 아이디를 기준으로 id찾기
		m.setUserPoint(50);						//포인트 저장
		mUserDAO.pointCharge(m);				//포인트 높이기
//		this.attachedFileDAO.insertAttachedFile();
	}
	
	@Override
	public void deletePost(int post_id) {
		this.socialDAO.deletePost(post_id);
	}

	@Override
	public List<SocialPostVO> selectSocialPost() {
		return socialDAO.selectSocialPost();
	}

	@Override
	public SocialPostVO selectSocialPostOne(int post_id) {
		return socialDAO.selectSocialPostOne(post_id);
	}

	@Transactional
	@Override
	public void insertSocialProfile(SocialProfileVO socialProfileVO) {
		this.socialDAO.insertSocialProfile(socialProfileVO);
		MUserVO m=mUserDAO.findMUserAccountById(socialProfileVO.getUserId());	//아이디를 기준으로 id찾기
		m.setUserPoint(500);						//포인트 저장
		mUserDAO.pointCharge(m);				//포인트 높이기
	}

	@Override
	public SocialProfileVO checkId(int id) {
		return this.socialDAO.checkId(id);
	}

	@Override
	public SocialProfileVO selectIDFromUserID(int using_id) {
		return this.socialDAO.selectIDFromUserID(using_id);
	}

	@Override
	public void insertAttachFiles(AttachedFileVO aFile) {
		this.socialDAO.insertAttachFiles(aFile);
	}

	@Override
	public List<SocialMessageVO> getMessageList(int id) {
		return this.socialDAO.getMessageList(id);
	}

	@Override
	public void updateInfo(SocialProfileVO s_pro) {
		this.socialDAO.updateInfo(s_pro);
	}

	@Transactional
	@Override
	public void insertSocialReport(ReportVO report) {
		this.socialDAO.insertSocialReport(report);
		MUserVO m=mUserDAO.findMUserAccount(report.getSocialProfileIdFrom());	//소셜 아이디를 기준으로 id찾기
		m.setUserPoint(50);						//포인트 저장
		mUserDAO.pointCharge(m);				//포인트 높이기
	}

	@Override
	public List<SocialMessageVO> getTalkBalloon(SocialMessageVO message_listVO) {
		return this.socialDAO.getTalkBalloon(message_listVO);
	}

	@Override
	public SocialMessageVO selectLastMessage(SocialMessageVO message_listVO) {
		return this.socialDAO.selectLastMessage(message_listVO);
	}

	@Override
	public SocialPostVO selectMoveCount(int post_num) {
		return this.socialDAO.selectMoveCount(post_num);
	}

	@Override
	public void addMoveCount(int post_num) {
		this.socialDAO.addMoveCount(post_num);
	}

	@Override
	public MoveVO checkMove(MoveVO moveVO) {
		return this.socialDAO.checkMove(moveVO);
	}

	@Override
	public void deMoveCount(int post_num) {
		this.socialDAO.deMoveCount(post_num);
	}

	@Override
	public void deleteMoveVO(MoveVO moveVO) {
		this.socialDAO.deleteMoveVO(moveVO);
	}

	@Override
	public void insertMoveVO(MoveVO moveVO) {
		this.socialDAO.insertMoveVO(moveVO);
	}

	@Override
	public List<SocialProfileVO> selectRandomSocialProfile(int no) {
		return this.socialDAO.selectRandomSocialProfile(no);
	}

	@Override
	public List<ProfilePostVO> selectRandomProfilePost(int no) {
		return this.socialDAO.selectRandomProfilePost(no);
	}
}
