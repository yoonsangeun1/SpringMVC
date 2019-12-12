package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.BoardCommentDAO;
import com.moving.dao.BoardFreeDAO;
import com.moving.domain.BoardCommentVO;

@Service
public class BoardCommentServiceImpl implements BoardCommentService {

	@Autowired
	private BoardCommentDAO boardCommentDao;
	
	@Autowired
	private BoardFreeDAO boardfreeDao;

	@Override
	public List<BoardCommentVO> listComment(int id) {
		return this.boardCommentDao.listComment(id);
	}

	
	
}
