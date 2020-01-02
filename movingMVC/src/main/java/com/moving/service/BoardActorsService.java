package com.moving.service;

import java.util.List;

import com.moving.domain.ProfilePostVO;

public interface BoardActorsService {

	int getTotalCount(ProfilePostVO ba);
	List<ProfilePostVO> getBoardActorsList(ProfilePostVO ba);
	void inBoardActors(ProfilePostVO ba);
	ProfilePostVO getCont(int id);
	ProfilePostVO getCont2(int id);
	void editBoardActors(ProfilePostVO ba);
	
}//BoardActorsService interface 
