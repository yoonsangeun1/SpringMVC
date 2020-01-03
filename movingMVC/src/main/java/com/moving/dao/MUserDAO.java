package com.moving.dao;

import java.util.Map;

import com.moving.domain.MUserVO;
import com.moving.domain.SocialProfileVO;

public interface MUserDAO {

	MUserVO nickCheck(String nickname); //닉네임 중복체크

	void insertUser(MUserVO m); //회원저장

	MUserVO emailCheck(String email); //이메일 중복체크

	MUserVO pwdFind(MUserVO m); //비밀번호 찾기

	void updatePwd(MUserVO m); //임시비밀번호 수정
	
	MUserVO emailFind(MUserVO m); //이메일아이디 찾기

	MUserVO loginCheck(String mLogin_email); //로그인 인증

	void memberChange(MUserVO m); //회원전환

	MUserVO check_businessName(String businessName); //사업자명 중복검색

	MUserVO check_businessRegisterNO(String businessRegisterNo); //사업자 등록번호 중복검색

	void deleteUser(MUserVO dm); //회원탈퇴

	void updatePassword(MUserVO m); // 설정 > 비밀번호 재설정

	MUserVO editEmailCheck(String setting_email); //이메일아이디 변경 중복체크

	void updatePhone(MUserVO dm); //휴대폰번호 변경

	SocialProfileVO findSocialAcount(int id); //id를 기준으로 소셜계정 검색

	void pointCharge(MUserVO m);  //포인트 충전

	Map<String, Object> test(String attribute); //정보창 비동기식 출력

	void memberProfileUpload(MUserVO m); //회원 프로필사진 등록


}
