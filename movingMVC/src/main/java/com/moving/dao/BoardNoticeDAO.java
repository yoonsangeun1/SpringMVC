package com.moving.dao;

import java.util.List;

import com.moving.domain.NormalPostVO;

public interface BoardNoticeDAO {

	int getTotalCount(NormalPostVO bn);
	List<NormalPostVO> getBoardNoticeList(NormalPostVO bn);

}//BoardNoticeDAO
