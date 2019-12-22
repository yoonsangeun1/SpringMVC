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
}