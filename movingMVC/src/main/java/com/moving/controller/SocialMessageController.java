package com.moving.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.moving.domain.SocialMessageVO;
import com.moving.domain.SocialProfileVO;
import com.moving.service.SocialMessageService;

@Controller
public class SocialMessageController {
	
//	@Autowired
//	private SocialMessageService socialMessageService;
//	
//	//프로필 페이지 매핑
//	@RequestMapping(value="/social/messageList")
//	public String social_profile(
//			int id,//social_profile의 id임!!
//			HttpServletRequest request,
//			HttpServletResponse response, 
//			HttpSession session,Model m
//			) throws Exception{
//		response.setContentType("text/html;charset=UTF-8");
//		PrintWriter out= response.getWriter();
//		session=request.getSession();
//		List<SocialMessageVO> socialMessageVO=socialMessageService.getTalkBalloon(id);
//
//		m.addAttribute("m_info", socialMessageVO);
//
//		return "social/social_profile";
//	}//social_profile() 
//	
//	@RequestMapping(value="insertMessage/{socialIdTo}")
//	public String insertMessage(@PathVariable("socialIdTo") int socialIdTo) {
//		return null;
//	}
}
