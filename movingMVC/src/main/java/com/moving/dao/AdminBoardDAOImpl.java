package com.moving.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.NormalPostVO;

@Repository
public class AdminBoardDAOImpl implements AdminBoardDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int boardCount(NormalPostVO np) {
		return this.sqlSession.selectOne("ab_count",np);
	} // 총 게시물 수

	@Override
	public List<NormalPostVO> boardList(NormalPostVO np) {
		return this.sqlSession.selectList("ab_list",np);
	} // 총 게시물 목록

	@Override
	public int findUserIdByNickname(String findName) {
		return this.sqlSession.selectOne("findUserIdByNickname", findName);
	} //닉네임을 기준으로 회원 아이디 찾기

	@Override
	public void insertFaq(NormalPostVO np) {
		this.sqlSession.insert("faq_in",np);
	} // faq 작성

	@Override
	public void noticeWrite(NormalPostVO np) {
		this.sqlSession.insert("notice_in",np);
	} // 공지사항 작성

	@Override
	public NormalPostVO noticeCont(int id) {
		return this.sqlSession.selectOne("notice_cont",id);
	} // 공지 내용보기

	@Override
	public void noticeEdit(NormalPostVO np) {
		this.sqlSession.update("notice_up",np);
	} // 공지 수정

	@Override
	public void noticeDel(int id) {
		this.sqlSession.delete("notice_del",id);
	} // 공지 삭제
	
}


