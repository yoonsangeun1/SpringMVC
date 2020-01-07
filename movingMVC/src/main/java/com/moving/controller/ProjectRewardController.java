package com.moving.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.RewardVO;
import com.moving.service.ProjectPostService;

@Controller
public class ProjectRewardController {

	@Autowired
	private ProjectPostService projectPostService;

	//댓글 작성하기
		@RequestMapping(value="/rewards/write{id}")
		public ModelAndView insertReward(
				@RequestBody RewardVO rewardVO, 
				int id,
				HttpServletRequest request, 
				HttpServletResponse response) throws Exception {
			/* RequestBody는 전송된 JSON 데이터를 RewardVO 타입의 객체로 변환  */
			response.setContentType("text/html; charset=utf-8");
			HttpSession session=request.getSession();
			ModelAndView m=new ModelAndView();

			int user_id=(int)session.getAttribute("id");//세션에서 id 가져와 저장
			if((Integer)user_id==null) {//로그인 상태가 아닌 경우
				response.getWriter().println("<script>alert('다시 로그인하세요!'); location='/moving.com/member/login';</script>");
			}else {//로그인 상태인 경우
				this.projectPostService.insertProjectReward(rewardVO);//리워드 저장
				this.projectPostService.selectProjectReward(rewardVO.getProjectPostId());//게시글 번호를 기준으로 리워드 불러오기(order by 순번 asc)
			}
			return m;
		}//insertComment()
}
