package com.moving.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.moving.domain.SocialMessageVO;
import com.moving.domain.SocialProfileVO;
import com.moving.service.SocialMessageService;

@Controller
public class SocialMessageController {
	
	@Autowired
	private SocialMessageService socialMessageService;
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
	@RequestMapping(value="/social/insertMessage")//메세지 전송
	public String insertMessage(
			int socialIdTo,
			int socialIdFrom,
			String content,
			HttpServletRequest request,
			HttpServletResponse response, 
			HttpSession session
			) {
		response.setContentType("text/html;charset=UTF-8");
		session=request.getSession();
		
		SocialMessageVO	m_vo=new SocialMessageVO();
		
//		String content=request.getParameter("getSocialMessage");
		
		m_vo.setSocialIdTo(socialIdTo);
		m_vo.setSocialIdFrom(socialIdFrom);
		m_vo.setContent(content);
		
		System.out.println(m_vo.getSocialIdTo());
		System.out.println(m_vo.getSocialIdFrom());
		System.out.println(m_vo.getContent());
		
		this.socialMessageService.insertMessage(m_vo);
		
		return "redirect:/social/messenger?socialIdFrom="+socialIdFrom+"&socialIdTo="+socialIdTo;
	}
}
