package com.moving.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.SocialDAO;
import com.moving.domain.SocialProfileVO;

@Service
public class SocialServiceImpl implements SocialService {
	@Autowired
	private SocialDAO socialDAO;

	@Override
	public SocialProfileVO selectSocialProfileInfo(int id) {
		return socialDAO.selectSocialProfileInfo(id);
	}
	
}
