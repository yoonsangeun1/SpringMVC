package com.moving.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.SocialPostVO;
import com.moving.domain.SocialProfileVO;

@Repository
public class SocialDAOImpl implements SocialDAO {
	@Autowired
	private SqlSession sqlsession;

	@Override
	public SocialProfileVO selectSocialProfileInfo(int id) {
		return sqlsession.selectOne("selectProfileAndPost",id);//(1)
		//아이디 값을 받아서 아이디를 기준으로 검색하여 프로필 정보를 받아온다.
	}

	@Override
	public void insertPost(SocialPostVO socialPostVO) {
		this.sqlsession.insert("insertSocialPost",socialPostVO);
	}
//	this.sqlsession.insert("insertAttachFiles",socialPostVO);

	@Override
	public void deletePost(int post_id) {
		this.sqlsession.delete("deleteSocialPost",post_id);
	}

	@Override
	public List<SocialPostVO> selectSocialPost() {
		return sqlsession.selectList("selectAllPostAndComment");
	}

	@Override
	public void insertSocialProfile(int id) {
		this.sqlsession.insert("insertSocialProfile",id);
	}

	@Override
	public SocialProfileVO checkId(int id) {
		return this.sqlsession.selectOne("checkId",id);
	}
}
