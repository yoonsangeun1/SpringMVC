package com.moving.dao;

import java.util.List;

import com.moving.domain.NormalPostVO;
import com.moving.domain.ReplyPostVO;

public interface BoardReplyDAO {

	int getTotalCount(ReplyPostVO bq);
	List<NormalPostVO> getBoardQnaList(ReplyPostVO bq);
	void inBoardQna(ReplyPostVO bq);
	void qnaupdateHit(int id);
	ReplyPostVO getCont(int id);
	ReplyPostVO getCont2(int id);
	void editBoardQna(ReplyPostVO bq);
	void delBoardQna(int id);

}//BOardReplyDAO interface
