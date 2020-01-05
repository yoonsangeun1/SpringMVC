package com.moving.dao;

import java.util.List;

import com.moving.domain.ProfilePostVO;

public interface BoardActorsDAO {

	int getTotalCount(ProfilePostVO ba);
	List<ProfilePostVO> getBoardActorsList(ProfilePostVO ba);
	void inBoardActors(ProfilePostVO ba);
	void actorsupdateHit(int id);
	ProfilePostVO getCont(int id);
	ProfilePostVO getCont2(int id);
	void editBoardActors(ProfilePostVO ba);
	void editBoardActors2(ProfilePostVO ba);
	void delBoardActors(int id);
	
}//BoardActorsDAO interface
