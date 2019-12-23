package com.moving.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.moving.dao.SocialDAO;
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

	@Transactional
	@Override
	public void insertPost(SocialPostVO socialPostVO) {
		this.socialDAO.insertPost(socialPostVO);
//		this.attachedFileDAO.insertAttachedFile();
	}
	
	@Override
	public void deletePost(int post_id) {
		this.socialDAO.deletePost(post_id);
	}
}
