package com.moving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SocialController {

	//소셜 메인페이지
	@RequestMapping(value="/social/main",method=RequestMethod.GET)
	public ModelAndView social_main() {
		return new ModelAndView("social/social_main");
	}//social_main()

	//메신저
	@RequestMapping(value="/social/messenger")
	public String social_messenger() {
		return "social/social_messenger";
	}//social_messenger()

	//프로필
	@RequestMapping(value="/social/profile")
	public String social_profile() {
		return "social/social_profile";
	}//social_profile()
}
