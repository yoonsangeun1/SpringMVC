package com.moving.dao;

import java.util.List;

import com.moving.domain.NormalPostVO;

public interface AdminBoardDAO {

	int boardCount(NormalPostVO np);

	List<NormalPostVO> boardList(NormalPostVO np);

	int findUserIdByNickname(String findName);

	void insertFaq(NormalPostVO np);

	void noticeWrite(NormalPostVO np);

	NormalPostVO noticeCont(int id);

	void noticeEdit(NormalPostVO np);

	void noticeDel(int id);

}
