package com.moving.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.SocialProfileVO;

@Repository
public class SocialDAOImpl implements SocialDAO {
	@Autowired
	private SqlSession sqlsession;

	@Override
	public SocialProfileVO selectSocialProfileInfo(int id) {
		return sqlsession.selectOne("selectProfileAndPost",id);
		//아이디 값을 받아서 아이디를 기준으로 검색하여 프로필 정보를 받아온다.
	}

}
