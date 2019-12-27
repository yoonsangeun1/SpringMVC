package com.moving.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.moving.domain.MCommentVO;
import com.moving.domain.SocialPostVO;
import com.moving.domain.SocialProfileVO;
import com.moving.service.SocialCommentService;

@RestController
@RequestMapping("/socialcomments")
public class SocialCommentController {

	@Autowired
	private SocialCommentService socialCommentService;

	//게시판 번호에 해당하는 댓글 개수 불러오기
	@RequestMapping(value="count/{id}", method=RequestMethod.GET)
	public ResponseEntity<String> selectCommentCount(@PathVariable("id") int id) {
		/* @PathVariable("id") 애노테이션은 웹주소 경로에서 원하는 자료를 추출하는 용도로 사용.
		 * 여기서는 {id}에 주어진 게시판 번호값을 가져와서 int id에 저장 */
		System.out.println(id);
		ResponseEntity<String> entity=null;
		try {
			SocialPostVO db_count=socialCommentService.selectCommentCount(id);
			int re=1;
			if(db_count == null ) re=-1;
			if(re == 1) //값이 있을 경우
			entity=new ResponseEntity<>(""+this.socialCommentService.selectCommentCount(id).getCommentCount(), HttpStatus.OK);
		}catch(Exception e) { 
			e.printStackTrace(); 
			entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}//selectCommentList()

	//VO 타입 : 게시판 번호에 해당하는 댓글 목록 불러오기
	@RequestMapping(value="all_vo/{id}", method=RequestMethod.GET)
	public ResponseEntity<List<MCommentVO>> selectCommentList(@PathVariable("id") int id) {
		/* @PathVariable("id") 애노테이션은 웹주소 경로에서 원하는 자료를 추출하는 용도로 사용.
		 * 여기서는 {id}에 주어진 게시판 번호값을 가져와서 int id에 저장 */
		ResponseEntity<List<MCommentVO>> entity=null;
		try {
			entity=new ResponseEntity<>(this.socialCommentService.selectCommentList(id), HttpStatus.OK);
		}catch(Exception e) { 
			e.printStackTrace(); 
			entity=new ResponseEntity<List<MCommentVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}//selectCommentList()

	//Map 타입 : 게시판 번호에 해당하는 댓글 목록 불러오기
	@RequestMapping(value="all/{id}", method=RequestMethod.GET)
	public List<Map<String, Object>> selectCommentListMap(@PathVariable("id") int id) {
		 /*@PathVariable("id") 애노테이션은 웹주소 경로에서 원하는 자료를 추출하는 용도로 사용.
		 * 여기서는 {id}에 주어진 게시판 번호값을 가져와서 int id에 저장*/ 
		List<Map<String, Object>> entity=null;
		try {
			entity=this.socialCommentService.selectCommentListMap(id);
			System.out.println(entity.get(0).get("NICKNAME"));
		}catch(Exception e) { 
			e.printStackTrace(); 
			//entity=new ResponseEntity<>();
		}
		return entity;
	}//selectCommentList()
	
	//댓글 작성하기
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public ResponseEntity<String> insertComment(
			@RequestBody MCommentVO mCommentVO, 
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		/* RequestBody는 전송된 JSON 데이터를 MCommentVO 타입의 객체로 변환  */
		response.setContentType("text/html; charset=utf-8");
		HttpSession session=request.getSession();
		ResponseEntity<String> entity=null;

		SocialProfileVO sessionSocial=(SocialProfileVO)session.getAttribute("sessionSocial");
		int user_id=sessionSocial.getId();
		
		if((Integer)user_id==null) {//로그인 상태가 아닌 경우
			response.getWriter().println("<script>alert('댓글 작성 권한이 없습니다!'); history.go(-1);</script>");
		}else {//로그인 상태인 경우
			//mCommentVO.setUserIdFrom(user_id);//회원 id 저장
			//mCommentVO.setProjectPostId(mCommentVO.getProjectPostId());//게시글 id 저장
			try {
				mCommentVO.setSocialProfileIdFrom(user_id);
				System.out.println(mCommentVO.getSocialPostId());
				System.out.println(mCommentVO.getSocialProfileIdFrom());
				System.out.println(mCommentVO.getContent());
				this.socialCommentService.insertProjectComment(mCommentVO);//댓글 저장
				entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
				//댓글 저장 성공시 'SUCCESS' 문자열을 반환하고 정상 상태 코드 200을 반환(HttpStatus.OK)
			}catch(Exception e) {
				e.printStackTrace();
				entity=new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
				//댓글 달기에 실패하면 예외 에러 메시지를 전송하고, 사용자에게는 나쁜 상태 코드가 전송됨.
			}
		}
		return entity;
	}//insertComment()
	
	//댓글 수정하기
	@RequestMapping(value="/update/{id}", method= {RequestMethod.PUT, RequestMethod.PATCH})
	//put은 전체 자료 수정, PATH는 일부 자료 수정, 복수 개의 메서드 방식 지정하는 법
	public ResponseEntity<String> updateComment(
			@PathVariable("id") int id, @RequestBody MCommentVO mCommentVO) {

		ResponseEntity<String> entity=null;
		try {
			mCommentVO.setId(id);//댓글 번호 저장
			this.socialCommentService.updateProjectComment(mCommentVO);//댓글 수정
			entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}//updateComment()
	
	//댓글 삭제하기
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	//DELETE는 삭제시 처리하는 매핑
	public ResponseEntity<String> deleteComment(@PathVariable("id") int id) {
		//ResponseEntity는 Http 상태 코드를 반환해준다. 에러 잡기 쉽게 해줌.
		ResponseEntity<String> entity=null;
		try {
			this.socialCommentService.deleteProjectComment(id);//댓글 삭제
			entity=new ResponseEntity<>("SUCCESS", HttpStatus.OK);
		}catch(Exception e) { 
			e.printStackTrace();
			entity=new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}//deleteComment()
	
}
