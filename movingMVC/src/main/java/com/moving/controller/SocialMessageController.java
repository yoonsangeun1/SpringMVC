package com.moving.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.moving.domain.SocialMessageVO;
import com.moving.service.SocialMessageService;

@RestController
@RequestMapping("/socialmessage")
public class SocialMessageController {
	
	@Autowired
	private SocialMessageService socialMessageService;
	
	// 회원 아이디를 기준으로 대화 목록 불러오기
	@RequestMapping(value="all_list/{id}", method=RequestMethod.GET)
	public ResponseEntity<> selectMessageList(@PathVariable("id") int id) {
		/* @PathVariable("id") 애노테이션은 웹주소 경로에서 원하는 자료를 추출하는 용도로 사용.
		 * 여기서는 {id}에 주어진 게시판 번호값을 가져와서 int id에 저장 */
		ResponseEntity<> entity=null;
		try {
			entity=new ResponseEntity<>(this.socialMessageService.selectMessageList(id), HttpStatus.OK);
		}catch(Exception e) { 
			e.printStackTrace(); 
			entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}//selectCommentList()
	
	
//	//VO 타입 : 받는 사람과 보내는 사람의 아이디(번호)에 해당하는 댓글 목록 불러오기
//	@RequestMapping(value="all_msg/", method=RequestMethod.GET)
//	public ResponseEntity<List<SocialMessageVO>> selectMessageList(SocialMessageVO socialMessageVO){
//		/* @PathVariable("id") 애노테이션은 웹주소 경로에서 원하는 자료를 추출하는 용도로 사용.
//		 * 여기서는 {id}에 주어진 게시판 번호값을 가져와서 int id에 저장 */
//		ResponseEntity<List<SocialMessageVO>> entity=null;
//		try {
//			entity=new ResponseEntity<>(""+this.socialCommentService.selectSocialMessage(socialMessageVO), HttpStatus.OK);
//		}catch(Exception e) { 
//			e.printStackTrace(); 
//			entity=new ResponseEntity<List<SocialMessageVO>>(HttpStatus.BAD_REQUEST);
//		}
//		return entity;
//	}//selectCommentList()
}
