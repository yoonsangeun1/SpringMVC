package com.moving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	//무빙 메인화면
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}//index()

	//aboutMoving페이지 이동
	@RequestMapping(value="aboutMoving")
	public ModelAndView aboutMoving() {
		return new ModelAndView("banner/aboutMoving");
	}//aboutMoving()
}
