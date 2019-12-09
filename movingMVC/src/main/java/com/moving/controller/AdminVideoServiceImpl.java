package com.moving.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminVideoServiceImpl implements AdminVideoService {

	@Autowired
	private  AdminVideoDAO adminVideoDAO;
}
