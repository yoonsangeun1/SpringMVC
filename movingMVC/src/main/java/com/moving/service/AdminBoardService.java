package com.moving.service;

import java.util.List;

import com.moving.domain.NormalPostVO;

public interface AdminBoardService {

	int boardCount(NormalPostVO np);

	List<NormalPostVO> boardList(NormalPostVO np);

}
