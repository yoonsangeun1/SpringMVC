package com.moving.dao;

import java.util.List;

import com.moving.domain.NormalPostVO;

public interface BoardFreeDAO {

	int getTotalCount(NormalPostVO bf);
	List<NormalPostVO> getBoardFreeList(NormalPostVO bf);
	void inBoardFree(NormalPostVO bf);
	void updateHit(int id);
	NormalPostVO getCont(int id);
	void editBoardFree(NormalPostVO bf);
	void delBoardFree(int id);

}//BoardFreeDAO inteface 
