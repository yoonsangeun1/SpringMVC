package com.moving.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.MUserVO;
import com.moving.domain.SocialProfileVO;

@Repository
public class MUserDAOImpl implements MUserDAO {

	@Autowired //자동의존성주입
	private SqlSession sqlSession; //mybatis 쿼리문 수행객체

	@Override
	public MUserVO nickCheck(String nickname) {
		return this.sqlSession.selectOne("nickCheck",nickname);
	}//닉네임 중복체크

	@Override
	public void insertUser(MUserVO m) {
		this.sqlSession.insert("insertUser",m);
	}//회원저장

	@Override
	public MUserVO emailCheck(String email) {
		return this.sqlSession.selectOne("emailCheck",email);
	}//이메일 중복체크

	@Override
	public MUserVO pwdFind(MUserVO m) {
		return this.sqlSession.selectOne("pwd_find",m);
	}//비밀번호 찾기

	@Override
	public void updatePwd(MUserVO m) {
		this.sqlSession.update("pwd_edit",m);
	}//암호화 된 임시 비밀번호 수정

	@Override
	public MUserVO emailFind(MUserVO m) {
		return this.sqlSession.selectOne("email_find",m);
	}//이메일아이디 찾기

	@Override
	public MUserVO loginCheck(String mLogin_email) {
		return this.sqlSession.selectOne("login_check",mLogin_email);
	}//로그인인증

	@Override
	public void memberChange(MUserVO m) {
		this.sqlSession.update("member_change",m);
	}//회원전환

	@Override
	public MUserVO check_businessName(String businessName) {
		return this.sqlSession.selectOne("check_businessName",businessName);
	}//사업자명 중복체크

	@Override
	public MUserVO check_businessRegisterNO(String businessRegisterNo) {
		return this.sqlSession.selectOne("check_businessRegisterNo",businessRegisterNo);
	}//사업자번호 중복체크

	@Override
	public void deleteUser(MUserVO dm) {
		this.sqlSession.update("member_delete",dm);
	}//회원탈

	@Override
	public void updatePassword(MUserVO m) {
		this.sqlSession.update("password_change",m);
	}//설정 > 비밀번호 재설정

	@Override
	public MUserVO editEmailCheck(String setting_email) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("edit_emailCheck",setting_email);
	}//설정 > 비밀번호 재설정

	@Override
	public void updatePhone(MUserVO dm) {
		this.sqlSession.update("phone_change",dm);
	}//휴대폰번호 변경

	@Override
	public SocialProfileVO findSocialAcount(int id) {
		return this.sqlSession.selectOne("findSocialAcount",id);
	}


}
