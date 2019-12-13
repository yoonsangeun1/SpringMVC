package com.moving.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.AdminVideoDAO;
import com.moving.domain.VideoPostVO;

@Service
public class AdminVideoServiceImpl implements AdminVideoService {

	@Autowired
	private  AdminVideoDAO adminVideoDAO;

	@Override
	public void insertMovie(VideoPostVO vp) {
		this.adminVideoDAO.insertMovie(vp);
	}
}
