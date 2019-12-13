package com.moving.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.MUserVO;

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
	}

	@Override
	public MUserVO loginCheck(String mLogin_email) {
		return this.sqlSession.selectOne("login_check",mLogin_email);
	}


}
