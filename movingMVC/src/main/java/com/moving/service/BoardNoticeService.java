package com.moving.service;

import java.util.List;

import com.moving.domain.NormalPostVO;

public interface BoardNoticeService {

	int getTotalCount(NormalPostVO bn);
	List<NormalPostVO> getBoardNoticeList(NormalPostVO bn);

}//BoardNoticeService interface 
