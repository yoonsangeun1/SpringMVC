package com.moving.service;


import com.moving.domain.SocialPostVO;
import com.moving.domain.SocialProfileVO;

public interface SocialService {
	SocialProfileVO socialProfileInfo(int id);

	void insertPost(SocialPostVO socialPostVO);

	void deletePost(int post_id);
}
