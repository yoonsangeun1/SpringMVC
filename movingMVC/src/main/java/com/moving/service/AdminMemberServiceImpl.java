package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.moving.dao.AdminMemberDAO;
import com.moving.domain.MUserVO;

@Service
public class AdminMemberServiceImpl implements AdminMemberService{

	@Autowired
	private AdminMemberDAO adminMemberDao;

	@Override
	public int memberCount(MUserVO mu) {
		return this.adminMemberDao.memberCount(mu);
	}

	@Override
	public List<MUserVO> memberList(MUserVO mu) {
		return this.adminMemberDao.memberlist(mu);
	}
	
	@Transactional
	@Override
	public MUserVO memberInfo(String userid) {
		MUserVO m=this.adminMemberDao.memberInfo(userid);
		this.adminMemberDao.updateReportCount(m.getId());
		return m;
	}

	@Override
	public void memberEdit(MUserVO mu) {
		this.adminMemberDao.memberEdit(mu);
	}
	
}
