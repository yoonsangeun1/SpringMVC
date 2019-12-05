package com.moving.service;

import java.util.List;

import com.moving.domain.Normal_PostDTO;
import com.moving.domain.Normal_PostVO;

public interface BoardFreeService {

	int getTotalCount();
	List<Normal_PostDTO> getBoardFreeList(Normal_PostVO bf);
	void inBoardFree(Normal_PostVO b);
	Normal_PostDTO getCont(int id);
	void editBoardFree(Normal_PostVO bf);
	void delBoardFree(int free_id);

}//BoardFreeService
