package com.moving.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.SocialProfileVO;
import com.moving.service.SocialService;

@Controller
public class SocialController {
	
	@Autowired
	private SocialService socialService;
	
	//소셜 메인페이지
	@RequestMapping(value="/social/main",method=RequestMethod.GET)
	public ModelAndView social_main() throws Exception{
		return new ModelAndView("social/social_main");
	}//social_main()

	//메신저
	@RequestMapping(value="/social/messenger")
	public String social_messenger() {
		return "social/social_messenger";
	}//social_messenger()

	//프로필 페이지 매핑
	@RequestMapping(value="/social/profile")
	public ModelAndView social_profile(
			HttpServletRequest request,
			HttpServletResponse response
			) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		
		ModelAndView m=new ModelAndView();
		int id=(int)session.getAttribute("id");//관리자 세션 아이디를 구함
		if((Integer)id==null) {
			//나주엥 처리
			m.setViewName("main");
		}
		else {
			SocialProfileVO socialProfileVO=socialService.selectSocialProfileInfo(id);
			m.addObject("s_pro",socialProfileVO);
			m.setViewName("social/social_profile");
		}
			
		
		return m;
	}//social_profile() 
}
