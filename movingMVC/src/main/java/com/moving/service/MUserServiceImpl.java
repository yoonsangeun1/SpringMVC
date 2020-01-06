package com.moving.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.MUserDAO;
import com.moving.domain.MUserVO;
import com.moving.domain.SocialProfileVO;

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

	@Override
	public void deleteUser(MUserVO dm) {
		this.mUserDAO.deleteUser(dm);
	}//회원탈퇴

	@Override
	public void updatePassword(MUserVO m) {
		this.mUserDAO.updatePassword(m);
	}//설정 > 비밀번호 재설정

	@Override
	public MUserVO editEmailCheck(String setting_email) {
		return this.mUserDAO.editEmailCheck(setting_email);
	}//이메일아이디 변경 중복체크


	@Override
	public void updatephone(MUserVO dm) {
		this.mUserDAO.updatePhone(dm);
	}//휴대폰번호 변경

	@Override
	public SocialProfileVO findSocialAcount(int id) {
		return this.mUserDAO.findSocialAcount(id);
	}

	@Override
	public void pointCharge(MUserVO m) {
		this.mUserDAO.pointCharge(m);
	}

	@Override
	public Map<String, Object> test(String attribute) {
		return this.mUserDAO.test(attribute);
	}

	@Override
	public void memberProfileUpload(MUserVO m) {
		this.mUserDAO.memberProfileUpload(m);
	}

	@Override
	public MUserVO selectUserInfo(int mid) {
		return this.mUserDAO.selectUserInfo(mid);
	}

}
