package com.moving.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.MUserDAO;
import com.moving.domain.MUserVO;

@Service
public class MUserServiceImpl implements MUserService {
	
	@Autowired
	private MUserDAO mUserDAO;

	@Override
	public MUserVO nickCheck(String nickname) {
		return this.mUserDAO.nickCheck(nickname);
	}//닉네임 중복체크

	@Override
	public void insertUser(MUserVO m) {
		this.mUserDAO.insertUser(m);
	}//회원저장

	@Override
	public MUserVO emailCheck(String email) {
		return this.mUserDAO.emailCheck(email);
	}//이메일 중복체크

	@Override
	public MUserVO pwdFind(MUserVO m) {
		return this.mUserDAO.pwdFind(m);
	}//비밀번호 찾기

	@Override
	public void updatePwd(MUserVO m) {
		this.mUserDAO.updatePwd(m);
	}//임시비밀번호 수정

	@Override
	public MUserVO emailFind(MUserVO m) {
		return this.mUserDAO.emailFind(m);
	}//이메일 아이디 찾기

	@Override
	public MUserVO loginCheck(String mLogin_email) {
		return this.mUserDAO.loginCheck(mLogin_email);
	}//로그인 인증

	@Override
	public void memberChange(MUserVO m) {
		this.mUserDAO.memberChange(m);
	}//회원전환 ( 개인 > 사업자 )

	@Override
	public MUserVO check_businessName(String businessName) {
		return this.mUserDAO.check_businessName(businessName);
	}//사업자명 중복검색

	@Override
	public MUserVO check_businessRegisterNo(String businessRegisterNo) {
		return this.mUserDAO.check_businessRegisterNO(businessRegisterNo);
	}//사업자등록번호 중복검색

}
