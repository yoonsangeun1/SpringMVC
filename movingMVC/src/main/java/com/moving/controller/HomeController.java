package com.moving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	//무빙 메인화면 <- 서버 첫 실행시
	@RequestMapping(value="/")
	public String index() {
		return "index";
	}//index()

	//무빙 메인화면 <- 다른 화면에서 index.jsp로 갈 때 사용할 매핑주소 "main"
	@RequestMapping(value="/main")
	public String main() {
		return "index";
	}//main()

	//aboutMoving 설명 페이지 이동
	@RequestMapping(value="aboutMoving")
	public ModelAndView aboutMoving() {
		return new ModelAndView("banner/aboutMoving");
	}//aboutMoving()
}
