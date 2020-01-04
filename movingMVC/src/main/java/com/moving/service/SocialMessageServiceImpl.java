package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.SocialMessageDAO;
import com.moving.domain.SocialMessageVO;

@Service
public class SocialMessageServiceImpl implements SocialMessageService {
	
	@Autowired
	private SocialMessageDAO socialMessageDAO;


}
