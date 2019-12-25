package com.moving.service;

import java.util.List;

import com.moving.domain.NormalPostVO;

public interface BoardNoticeService {

	int getTotalCount(NormalPostVO bn);
	List<NormalPostVO> getBoardNoticeList(NormalPostVO bn);
	void inBoardNotice(NormalPostVO bn);
	NormalPostVO getCont(int id);
	void editBoardNotice(NormalPostVO bn);
	void delBoardNotice(int id);

}//BoardNoticeService interface 
