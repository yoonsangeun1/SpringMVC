package com.moving.dao;

import java.util.List;
import java.util.Map;

import com.moving.domain.MCommentVO;
import com.moving.domain.SocialPostVO;

public interface SocialCommentDAO {

	void insertProjectComment(MCommentVO mCommentVO);

	List<MCommentVO> selectCommentList(int id);

	void updateProjectComment(MCommentVO mCommentVO);

	void deleteProjectComment(int id);

	List<Map<String, Object>> selectCommentListMap(int id);

	SocialPostVO selectCommentCount(int id);

	void updateProjectCommentCountOne(MCommentVO mCommentVO);

	void updateCommentCount(int id);

}
