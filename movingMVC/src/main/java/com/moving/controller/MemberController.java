package com.moving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

	//회원가입
	@RequestMapping(value="member/join")	
	public ModelAndView member_join() {
		return new ModelAndView("member/member_join");
	}//member_join()

	//로그인
	@RequestMapping(value="member/login")	
	public ModelAndView member_login() {
		return new ModelAndView("member/member_login");
	}//member_login()

}
