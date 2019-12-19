package com.moving.dao;

import java.util.List;

import com.moving.domain.MUserVO;

public interface AdminMemberDAO {

	int memberCount(MUserVO mu);

	List<MUserVO> memberlist(MUserVO mu);

}
