package com.moving.dao;

import java.util.List;

import com.moving.domain.VideoPostVO;

public interface AdminVideoDAO {

	void insertMovie(VideoPostVO vp);

	int videoCount(VideoPostVO vp);

	List<VideoPostVO> videoList(VideoPostVO vp);

}
