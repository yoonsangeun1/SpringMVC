package com.moving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moving.dao.AdminVideoDAO;
import com.moving.domain.NormalPostVO;
import com.moving.domain.VideoPostVO;

@Service
public class AdminVideoServiceImpl implements AdminVideoService {

	@Autowired
	private  AdminVideoDAO adminVideoDao;

	@Override
	public void insertMovie(VideoPostVO vp) {
		this.adminVideoDao.insertMovie(vp);
	}

	@Override
	public int videoCount(VideoPostVO vp) {
		return this.adminVideoDao.videoCount(vp);
	}

	@Override
	public List<VideoPostVO> videoList(VideoPostVO vp) {
		return this.adminVideoDao.videoList(vp);
	}

	@Override
	public void insertTeaser(VideoPostVO vp) {
		this.adminVideoDao.insertTeaser(vp);
	}

	@Override
	public VideoPostVO movieCont(int id) {
		return this.adminVideoDao.movieCont(id);
	}

	@Override
	public void movieEdit(VideoPostVO vp) {
		this.adminVideoDao.movieEdit(vp);
	}

	@Override
	public void teaserEdit(VideoPostVO vp) {
		this.adminVideoDao.teaserEdit(vp);
	}
	
	@Override
	public void movieDel(int id) {
		this.adminVideoDao.movieDel(id);
	}

}
