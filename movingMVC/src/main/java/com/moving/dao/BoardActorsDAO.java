package com.moving.dao;

import java.util.List;

import com.moving.domain.ProfilePostVO;

public interface BoardActorsDAO {

	int getTotalCount(ProfilePostVO ba);
	List<ProfilePostVO> getBoardActorsList(ProfilePostVO ba);
	void inBoardActors(ProfilePostVO ba);

}//BoardActorsDAO interface
