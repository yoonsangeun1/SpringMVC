package com.moving.dao;

import java.util.List;

import com.moving.domain.NormalPostVO;
import com.moving.domain.ReplyPostVO;

public interface BoardReplyDAO {

	int getTotalCount(ReplyPostVO bq);
	List<NormalPostVO> getBoardQnaList(ReplyPostVO bq);

}//BOardReplyDAO interface
