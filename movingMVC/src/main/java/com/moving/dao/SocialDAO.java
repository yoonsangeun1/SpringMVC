package com.moving.dao;

import java.util.List;

import com.moving.domain.AttachedFileVO;
import com.moving.domain.MoveVO;
import com.moving.domain.ProfilePostVO;
import com.moving.domain.ReportVO;
import com.moving.domain.SocialMessageVO;
import com.moving.domain.SocialPostVO;
import com.moving.domain.SocialProfileVO;

public interface SocialDAO {
	SocialProfileVO selectSocialProfileInfo(int id);
	//List<SocialPostVO> socialPostCommentList(int id);

	void insertPost(SocialPostVO socialPostVO);

	void deletePost(int post_id);

	List<SocialPostVO> selectSocialPost();

	void insertSocialProfile(SocialProfileVO socialProfileVO);

	SocialProfileVO checkId(int id);

	SocialProfileVO selectIDFromUserID(int using_id);

	SocialPostVO selectSocialPostOne(int post_id);

	SocialProfileVO socialProfileInfoWithId(int id);

	void insertAttachFiles(AttachedFileVO aFile);
	
	List<SocialMessageVO> getMessageList(int id);

	void updateInfo(SocialProfileVO s_pro);

	void insertSocialReport(ReportVO report);

	List<SocialMessageVO> getTalkBalloon(SocialMessageVO message_listVO);

	SocialMessageVO selectLastMessage(SocialMessageVO message_listVO);

	SocialPostVO selectMoveCount(int post_num);

	void addMoveCount(int post_num);

	MoveVO checkMove(MoveVO moveVO);

	void deMoveCount(int post_num);

	void deleteMoveVO(MoveVO moveVO);

	void insertMoveVO(MoveVO moveVO);

	List<SocialProfileVO> selectRandomSocialProfile(int no);

	List<ProfilePostVO> selectRandomProfilePost(int no);
}
