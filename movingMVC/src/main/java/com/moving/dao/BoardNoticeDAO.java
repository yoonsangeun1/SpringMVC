package com.moving.dao;

import java.util.List;

import com.moving.domain.NormalPostVO;

public interface BoardNoticeDAO {

	int getTotalCount(NormalPostVO bn);
	List<NormalPostVO> getBoardNoticeList(NormalPostVO bn);
	void inBoardNotice(NormalPostVO bn);
	void noticeupdateHit(int id);
	NormalPostVO getCont(int id);
	void editBoardNotice(NormalPostVO bn);
	void delBoardNotice(int id);

}//BoardNoticeDAO
