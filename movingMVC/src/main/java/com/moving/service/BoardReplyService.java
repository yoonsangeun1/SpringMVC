package com.moving.service;

import java.util.List;

import com.moving.domain.NormalPostVO;
import com.moving.domain.ReplyPostVO;

public interface BoardReplyService {

	int getTotalCount(ReplyPostVO bq);
	List<NormalPostVO> getBoardQnaList(ReplyPostVO bq);
	void inBoardQna(ReplyPostVO bq);
	ReplyPostVO getCont(int id);
	ReplyPostVO getCont2(int id);
	void editBoardQna(ReplyPostVO bq);
	void delBoardQna(int id);

}
