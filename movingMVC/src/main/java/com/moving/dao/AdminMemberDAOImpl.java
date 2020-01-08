package com.moving.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.MUserVO;

@Repository
public class AdminMemberDAOImpl implements AdminMemberDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int memberCount(MUserVO mu) {
		return this.sqlSession.selectOne("am_count",mu);
	} // 총 회원 수

	@Override
	public List<MUserVO> memberlist(MUserVO mu) {
		return this.sqlSession.selectList("am_list",mu);
	} // 검색전후 회원 목록

	@Override
	public MUserVO memberInfo(String userid) {
		return this.sqlSession.selectOne("am_info",userid);
	} // 회원 정보 팝업창 띄우기

	@Override
	public void memberEdit(MUserVO mu) {
		this.sqlSession.update("am_up",mu);
	} // 회원 정보 수정

	@Override
	public void updateReportCount(int id) {
		this.sqlSession.update("updateReportCount",id);
	}
}
