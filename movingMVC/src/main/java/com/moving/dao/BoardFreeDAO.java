package com.moving.dao;

import java.util.List;

import com.moving.domain.BoardFreeVO;
import com.moving.domain.Normal_PostDTO;
import com.moving.domain.Normal_PostVO;

public interface BoardFreeDAO {

	int getTotalCount();
	List<Normal_PostDTO> getBoardFreeList(Normal_PostVO bf);
	void inBoardFree(Normal_PostVO bf);
	void updateHit(int id);
	Normal_PostDTO getCont(int id);
	void editBoardFree(Normal_PostVO bf);
	void delBoardFree(int free_id);

}//BoardFreeDAO inteface 
