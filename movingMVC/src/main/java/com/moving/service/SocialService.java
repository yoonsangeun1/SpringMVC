package com.moving.service;


import java.util.List;

import com.moving.domain.SocialPostVO;
import com.moving.domain.SocialProfileVO;

public interface SocialService {
	SocialProfileVO socialProfileInfo(int id);

	void insertPost(SocialPostVO socialPostVO);

	void deletePost(int post_id);

	List<SocialPostVO> selectSocialPost();

	void insertSocialProfile(int id);

	SocialProfileVO checkId(int id);
}
