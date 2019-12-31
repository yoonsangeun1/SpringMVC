package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.BoardActorsDAO;
import com.moving.domain.ProfilePostVO;

@Service
public class BoardActorsServiceImpl implements BoardActorsService {

	@Autowired
	private BoardActorsDAO boardActorsDao;

	@Override
	public int getTotalCount(ProfilePostVO ba) {
		return this.boardActorsDao.getTotalCount(ba);
	}

	@Override
	public List<ProfilePostVO> getBoardActorsList(ProfilePostVO ba) {
		return this.boardActorsDao.getBoardActorsList(ba);
	}

	@Override
	public void inBoardActors(ProfilePostVO ba) {
		this.boardActorsDao.inBoardActors(ba);
	}
	
}//BoardActorsServiceImpl class
