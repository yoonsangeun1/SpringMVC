package com.moving.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.SocialCommentDAO;
import com.moving.domain.MCommentVO;
import com.moving.domain.SocialPostVO;

@Service
public class SocialCommentServiceImpl implements SocialCommentService {

	@Autowired
	private SocialCommentDAO socialCommentDAO;
	
	@Override
	public void insertProjectComment(MCommentVO mCommentVO) {
		socialCommentDAO.insertProjectComment(mCommentVO);			//댓글 저장
		socialCommentDAO.updateProjectCommentCountOne(mCommentVO);		//댓글 개수 높이기
	}

	@Override
	public List<MCommentVO> selectCommentList(int id) {
		return socialCommentDAO.selectCommentList(id);
	}

	@Override
	public void updateProjectComment(MCommentVO mCommentVO) {
		socialCommentDAO.updateProjectComment(mCommentVO);
	}

	@Override
	public void deleteProjectComment(int id) {
		socialCommentDAO.deleteProjectComment(id);
	}

	@Override
	public List<Map<String, Object>> selectCommentListMap(int id) {
		return socialCommentDAO.selectCommentListMap(id);
	}

	@Override
	public SocialPostVO selectCommentCount(int id) {
		socialCommentDAO.updateCommentCount(id);				//댓글 개수 세고나서 저장./ 나중에 수정하기
		return socialCommentDAO.selectCommentCount(id);		//댓글 개수 가져오기
	}

}
