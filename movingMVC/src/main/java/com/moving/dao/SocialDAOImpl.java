package com.moving.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.AttachedFileVO;
import com.moving.domain.ReportVO;
import com.moving.domain.SocialMessageVO;
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
	public SocialProfileVO socialProfileInfoWithId(int id) {
		return sqlsession.selectOne("selectProfileAndPostWithId",id);//(1)
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
	public SocialPostVO selectSocialPostOne(int post_id) {
		return sqlsession.selectOne("selectOnePostAndComment", post_id);
	}

	@Override
	public void insertSocialProfile(SocialProfileVO socialProfileVO) {
		this.sqlsession.insert("insertSocialProfile",socialProfileVO);
	}

	@Override
	public SocialProfileVO checkId(int id) {
		return this.sqlsession.selectOne("checkId",id);
	}

	@Override
	public SocialProfileVO selectIDFromUserID(int using_id) {
		return this.sqlsession.selectOne("selectIDFromUserID",using_id);
	}

	@Override
	public void insertAttachFiles(AttachedFileVO aFile) {
		this.sqlsession.insert("insertAttachFiles",aFile);
	}

	@Override
	public List<SocialMessageVO> getMessageList(int id) {
		return this.sqlsession.selectList("socialMessage.getMessageList",id);
	}

	@Override
	public void updateInfo(SocialProfileVO s_pro) {
		this.sqlsession.update("updateInfo",s_pro);
	}

	@Override
	public void insertSocialReport(ReportVO report) {
		this.sqlsession.insert("insertSocialReport",report);
	}

	@Override
	public List<SocialMessageVO> getTalkBalloon(SocialMessageVO message_listVO) {
		return this.sqlsession.selectList("getTalkBalloon",message_listVO);
	}

	@Override
	public SocialMessageVO selectLastMessage(SocialMessageVO message_listVO) {
		return this.sqlsession.selectOne("selectLastMessage",message_listVO);
	}

	@Override
	public SocialPostVO selectMoveCount(int post_num) {
		return this.sqlsession.selectOne("selectMoveCount",post_num);
	}

	@Override
	public void addMoveCount(int post_num) {
		this.sqlsession.update("addMoveCount",post_num);
	}
}
