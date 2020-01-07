package com.moving.service;


import java.util.List;

import com.moving.domain.AttachedFileVO;
import com.moving.domain.ReportVO;
import com.moving.domain.SocialMessageVO;
import com.moving.domain.SocialPostVO;
import com.moving.domain.SocialProfileVO;

public interface SocialService {
	SocialProfileVO socialProfileInfo(int id);
	
	SocialProfileVO socialProfileInfoWithId(int id);

	void insertPost(SocialPostVO socialPostVO);

	void deletePost(int post_id);

	List<SocialPostVO> selectSocialPost();

	SocialPostVO selectSocialPostOne(int post_id);
	
	void insertSocialProfile(SocialProfileVO socialProfileVO);

	SocialProfileVO checkId(int id);

	SocialProfileVO selectIDFromUserID(int using_id);

	void insertAttachFiles(AttachedFileVO aFile);

	List<SocialMessageVO> getMessageList(int id);

	void updateInfo(SocialProfileVO s_pro);

	void insertSocialReport(ReportVO report);

	List<SocialMessageVO> getTalkBalloon(SocialMessageVO message_listVO);

}
