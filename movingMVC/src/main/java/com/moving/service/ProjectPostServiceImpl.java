package com.moving.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moving.dao.ProjectPostDAO;
import com.moving.domain.NormalPostDTO;
import com.moving.domain.ProjectPostVO;

@Service
public class ProjectPostServiceImpl implements ProjectPostService {

	@Autowired
	private ProjectPostDAO projectPostDAO;

	@Transactional
	@Override
	public ProjectPostVO selectprojectInfo(int id) {
		projectPostDAO.updateHit(id);					//게시글 조회수 증가
		projectPostDAO.selectLeftLimit(id);
		return projectPostDAO.selectprojectInfo(id);	//게시글 정보 불러오기
	}//selectprojectInfo()

}
