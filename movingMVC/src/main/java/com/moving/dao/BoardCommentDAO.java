package com.moving.dao;

import java.util.List;

import com.moving.domain.BoardCommentVO;

public interface BoardCommentDAO {

	List<BoardCommentVO> listComment(int id);

}//BoardCommentDAO interface
