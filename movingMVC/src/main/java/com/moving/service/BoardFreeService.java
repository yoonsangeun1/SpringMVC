package com.moving.service;

import java.util.List;

import com.moving.domain.NormalPostDTO;
import com.moving.domain.NormalPostVO;

public interface BoardFreeService {

	int getTotalCount();
	List<NormalPostDTO> getBoardFreeList(NormalPostVO bf);
	void inBoardFree(NormalPostVO b);
	NormalPostDTO getCont(int id);
	void editBoardFree(NormalPostVO bf);
	void delBoardFree(int free_id);

}//BoardFreeService
