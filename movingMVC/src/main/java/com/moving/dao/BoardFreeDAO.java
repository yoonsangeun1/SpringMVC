package com.moving.dao;

import java.util.List;

import com.moving.domain.NormalPostDTO;
import com.moving.domain.NormalPostVO;

public interface BoardFreeDAO {

	int getTotalCount();
	List<NormalPostDTO> getBoardFreeList(NormalPostVO bf);
	void inBoardFree(NormalPostVO bf);
	void updateHit(int id);
	NormalPostDTO getCont(int id);
	void editBoardFree(NormalPostVO bf);
	void delBoardFree(int free_id);

}//BoardFreeDAO inteface 
