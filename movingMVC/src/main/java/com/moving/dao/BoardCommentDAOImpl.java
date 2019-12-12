package com.moving.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moving.domain.BoardCommentVO;

@Repository
public class BoardCommentDAOImpl implements BoardCommentDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BoardCommentVO> listComment(int id) {
		return this.sqlSession.selectList("c_list",id);
	}
	
}//BoardCommentDAOImpl class
