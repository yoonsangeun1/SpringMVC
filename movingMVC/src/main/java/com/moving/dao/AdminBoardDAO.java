package com.moving.dao;

import java.util.List;

import com.moving.domain.NormalPostVO;

public interface AdminBoardDAO {

	int boardCount(NormalPostVO np);

	List<NormalPostVO> boardList(NormalPostVO np);

}
