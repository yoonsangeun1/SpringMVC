package com.moving.service;

import java.util.List;
import java.util.Map;

import com.moving.domain.MCommentVO;
import com.moving.domain.ProjectPostVO;

public interface ProjectPostService {
	
	//프로젝트 정보 + 댓글 + 작성자 등등 가져오기
	ProjectPostVO selectprojectInfo(int id);
	//프로젝트 댓글 입력
	void insertProjectComment(MCommentVO mCommentVO);
	//게시글 아이디에 해당하는 댓글 리스트 불러오기
	List<MCommentVO> selectCommentList(int id);
	//댓글 번호를 기준으로 댓글 수정
	void updateProjectComment(MCommentVO mCommentVO);
	//댓글 번호를 기준으로 댓글 삭제
	void deleteProjectComment(int id);
	//프로젝트 번호에 해당하는 댓글 리스트 불러오기(비동기식)
	List<Map<String, Object>> selectCommentListMap(int id);
	//게시글에 해당하는 댓글 개수 불러오면서 저장
	ProjectPostVO selectCommentCount(int id);
	


}
