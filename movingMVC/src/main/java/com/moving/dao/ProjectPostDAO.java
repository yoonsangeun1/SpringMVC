package com.moving.dao;

import java.util.List;
import java.util.Map;

import com.moving.domain.MCommentVO;
import com.moving.domain.ProjectPostVO;

public interface ProjectPostDAO {

	ProjectPostVO selectprojectInfo(int id);

	void updateHit(int id);

	void selectLeftLimit(int id);

	void insertProjectComment(MCommentVO mCommentVO);

	void updateProjectCommentCount(MCommentVO mCommentVO);

	List<MCommentVO> selectCommentList(int id);

	void updateProjectComment(MCommentVO mCommentVO);

	void deleteProjectComment(int id);

	List<Map<String, Object>> selectCommentListMap(int id);

	ProjectPostVO selectCommentCount(int id);
	
	void updateCommentCount(int id);

	void updateProjectCommentCountOne(MCommentVO mCommentVO);

	int selectListCount(ProjectPostVO projectPostVO);

	List<ProjectPostVO> selectProjectList(ProjectPostVO projectPostVO);
}
