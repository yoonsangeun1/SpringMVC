package com.moving.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.moving.dao.ProjectPostDAO;
import com.moving.domain.MCommentVO;
import com.moving.domain.ProjectPostVO;
import com.moving.domain.RewardVO;

@Service
public class ProjectPostServiceImpl implements ProjectPostService {

	@Autowired
	private ProjectPostDAO projectPostDAO;

	@Transactional
	@Override
	public ProjectPostVO selectprojectInfo(int id) {
		projectPostDAO.updateHit(id);					//게시글 조회수 증가
		projectPostDAO.selectLeftLimit(id);				//프로젝트 남은 일수 DB 저장
		//이거는 근데 저장할 필요가 없다. 나중에 수정하자.
		return projectPostDAO.selectprojectInfo(id);	//게시글 정보 불러오기
	}//selectprojectInfo()

	@Transactional
	@Override
	public void insertProjectComment(MCommentVO mCommentVO) {
		projectPostDAO.insertProjectComment(mCommentVO);			//댓글 저장
		projectPostDAO.updateProjectCommentCountOne(mCommentVO);		//댓글 개수 높이기
	}//insertProjectComment

	@Override
	public List<MCommentVO> selectCommentList(int id) {
		return projectPostDAO.selectCommentList(id);
	}

	@Override
	public void updateProjectComment(MCommentVO mCommentVO) {
		projectPostDAO.updateProjectComment(mCommentVO);
	}

	@Override
	public void deleteProjectComment(int id) {
		projectPostDAO.deleteProjectComment(id);	
	}

	@Override
	public List<Map<String, Object>> selectCommentListMap(int id) {
		return projectPostDAO.selectCommentListMap(id);
	}
	
	@Transactional
	@Override
	public ProjectPostVO selectCommentCount(int id) {
		projectPostDAO.updateCommentCount(id);				//댓글 개수 세고나서 저장./ 나중에 수정하기
		return projectPostDAO.selectCommentCount(id);		//댓글 개수 가져오기
	}

	@Override
	public int selectListCount(ProjectPostVO projectPostVO) {
		return projectPostDAO.selectListCount(projectPostVO);
	}

	@Override
	public List<ProjectPostVO> selectProjectList(ProjectPostVO projectPostVO) {
		return projectPostDAO.selectProjectList(projectPostVO);
	}

	@Transactional
	@Override
	public MCommentVO selectCommentCountActors(int id) {
		projectPostDAO.updateCommentCountActors(id);
		return projectPostDAO.selectCommentCountActors(id);
	}

	@Override
	public List<Map<String, Object>> selectCommentListMapActors(int id) {
		return projectPostDAO.selectCommentListMapActors(id);
	}

	@Transactional
	@Override
	public List<Map<String, Object>> selectCommentListMapNormal(int id) {
		projectPostDAO.updateCommentCountNormal(id);
		return projectPostDAO.selectCommentListMapNormal(id);
	}

	@Override
	public int insertSelectProjectPost(ProjectPostVO projectPostVO) {
		return projectPostDAO.insertSelectProjectPost(projectPostVO);
	}

	@Override
	public void updateProjectPost(ProjectPostVO projectPostVO) {
		projectPostDAO.updateProjectPost(projectPostVO);
	}

	@Override
	public void insertProjectReward(RewardVO rewardVO) {
		projectPostDAO.insertProjectReward(rewardVO);
	}

	@Override
	public void selectProjectReward(int projectPostId) {
		projectPostDAO.selectProjectReward(projectPostId);
	}
}
