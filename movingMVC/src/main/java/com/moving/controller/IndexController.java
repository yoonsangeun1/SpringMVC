package com.moving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	
	//무빙 메인화면
		@RequestMapping(value="/moving",method=RequestMethod.GET)
		//GET방식으로 접근하는 매핑주소 처리=>/moving매핑주소등록
		public ModelAndView index() {
			return new ModelAndView("index");
	//뷰리졸브 경로=> /WEB-INF/views/index.jsp		
		}//index()
		
		//aboutMoving페이지 이동
		@RequestMapping(value="/aboutMoivng",method=RequestMethod.GET)
		public ModelAndView aboutMoving() {
			return new ModelAndView("banner/aboutMoving");
			//뷰리졸브 경로=> /WEB-INF/views/banner/aboutMoving.jsp	
		}
}
