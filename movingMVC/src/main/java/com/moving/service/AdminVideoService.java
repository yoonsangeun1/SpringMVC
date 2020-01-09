package com.moving.service;

import java.util.List;

import com.moving.domain.NormalPostVO;
import com.moving.domain.VideoPostVO;

public interface AdminVideoService {

	void insertMovie(VideoPostVO vp);

	int videoCount(VideoPostVO vp);

	List<VideoPostVO> videoList(VideoPostVO vp);

	void insertTeaser(VideoPostVO vp);

	VideoPostVO movieCont(int id);

	void movieEdit(VideoPostVO vp);

	void movieDel(int id);

	void teaserEdit(VideoPostVO vp);

}
