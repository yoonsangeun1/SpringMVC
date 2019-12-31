package com.moving.service;

import java.util.List;

import com.moving.domain.ProfilePostVO;

public interface BoardActorsService {

	int getTotalCount(ProfilePostVO ba);
	List<ProfilePostVO> getBoardActorsList(ProfilePostVO ba);
	void inBoardActors(ProfilePostVO ba);
	
}//BoardActorsService interface 
