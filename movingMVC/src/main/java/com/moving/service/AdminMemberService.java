package com.moving.service;

import java.util.List;

import com.moving.domain.MUserVO;

public interface AdminMemberService {

	int memberCount(MUserVO mu);

	List<MUserVO> memberList(MUserVO mu);

	MUserVO memberInfo(String userid);

	void memberEdit(MUserVO mu);

}
