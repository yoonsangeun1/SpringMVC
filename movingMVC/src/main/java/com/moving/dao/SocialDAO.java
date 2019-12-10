package com.moving.dao;

import com.moving.domain.SocialPostVO;
import com.moving.domain.SocialProfileVO;

public interface SocialDAO {
	SocialProfileVO selectSocialProfileInfo(int id);
}
