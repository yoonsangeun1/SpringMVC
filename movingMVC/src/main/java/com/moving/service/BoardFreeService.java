package com.moving.service;

import java.util.List;

import com.moving.domain.NormalPostDTO;
import com.moving.domain.NormalPostVO;

public interface BoardFreeService {

	int getTotalCount();
	List<NormalPostVO> getBoardFreeList(NormalPostVO bf);
	void inBoardFree(NormalPostVO b);
	NormalPostVO getCont(int id);
	void editBoardFree(NormalPostVO bf);
	void delBoardFree(int id);

}//BoardFreeService
