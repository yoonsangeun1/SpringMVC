package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.moving.dao.SocialDAO;
import com.moving.domain.AttachedFileVO;
import com.moving.domain.ReportVO;
import com.moving.domain.SocialMessageVO;
import com.moving.domain.SocialPostVO;
import com.moving.domain.SocialProfileVO;

@Service
public class SocialServiceImpl implements SocialService {
	@Autowired
	private SocialDAO socialDAO;

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

//	@Transactional
	@Override
	public void insertPost(SocialPostVO socialPostVO) {
		this.socialDAO.insertPost(socialPostVO);
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

	@Override
	public void insertSocialProfile(SocialProfileVO socialProfileVO) {
		this.socialDAO.insertSocialProfile(socialProfileVO);
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

	@Override
	public void insertSocialReport(ReportVO report) {
		this.socialDAO.insertSocialReport(report);
	}

	@Override
	public List<SocialMessageVO> getTalkBalloon(SocialMessageVO message_listVO) {
		return this.socialDAO.getTalkBalloon(message_listVO);
	}
}
