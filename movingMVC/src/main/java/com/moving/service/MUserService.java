package com.moving.service;

import com.moving.domain.MUserVO;

public interface MUserService {

	MUserVO nickCheck(String nickname); //닉네임 중복체크
	void insertUser(MUserVO m); //회원 저장
	MUserVO emailCheck(String email); //이메일 중복체크
	MUserVO pwdFind(MUserVO m); //비밀번호 찾기
	void updatePwd(MUserVO m); //임시비밀번호 수정
	MUserVO emailFind(MUserVO m); //이메일아이디 찾기
	MUserVO loginCheck(String mLogin_email); //로그인인증
	void memberChange(MUserVO m); //회원 전환 ( 개인 > 사업자 )
	MUserVO check_businessName(String businessName); //사업자명 중복검색
	MUserVO check_businessRegisterNo(String businessRegisterNo); //사업자 등록번호 중복검색
}
