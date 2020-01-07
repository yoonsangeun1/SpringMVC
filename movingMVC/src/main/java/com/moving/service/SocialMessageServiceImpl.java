package com.moving.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.SocialMessageDAO;

@Service
public class SocialMessageServiceImpl implements SocialMessageService {
	
	@Autowired
	private SocialMessageDAO socialMessageDAO;


}
