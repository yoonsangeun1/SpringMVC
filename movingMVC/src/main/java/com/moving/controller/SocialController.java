package com.moving.controller;

import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.moving.domain.AttachedFileVO;
import com.moving.domain.MUserVO;
import com.moving.domain.SocialPostVO;
import com.moving.domain.SocialProfileVO;
import com.moving.service.SocialService;

@Controller
public class SocialController {
	
	@Autowired
	private SocialService socialService;
	
	//소셜 메인페이지
	@RequestMapping(value="/social/main",method=RequestMethod.GET)
	public ModelAndView social_main(
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session
			) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out= response.getWriter();
		
		int id=(int)session.getAttribute("id");
		System.out.println("id="+id);
		
		ModelAndView m=new ModelAndView();
		//SocialProfileVO socialProfileVO=socialService.socialProfileInfo(id);
				
				//int get_id=socialProfileVO.getId();//id값을 받아온다
				SocialProfileVO db_id = socialService.checkId(id);
				//Integer a=(Integer)db_id.getUserId();
				int re=1;
				if(db_id == null ) re=-1;
				if(re == 1) //id값이 있을 경우
				{
					/*System.out.println("성공");
					System.out.println(socialProfileVO.getId()); //id값 출력
					List<SocialPostVO> socialPostVO=socialService.selectSocialPost(); //id로 검색하여 게시글ㄹ
					m.addObject("s_post", socialPostVO);
					m.addObject("s_pro", socialProfileVO);
					m.setViewName("social/social_main");*/
				}
				else {
					//socialService.insertSocialProfile(id);
					out.println("<script>");
					out.println("alert('소셜 계정으로 전환하세요');");
					out.println("location='/moving.com/social/join'");
					out.println("</script>");
				}
				return null;
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
			HttpServletResponse response, int id
			) throws Exception{
		response.setContentType("text/html;charset=UTF-8");

		ModelAndView m=new ModelAndView();
		if((Integer)id==null) {//아이디가 없을 경우
			m.setViewName("main");
		}
		SocialProfileVO socialProfileVO=socialService.socialProfileInfo(id);
		
		m.addObject("s_pro", socialProfileVO);
		m.addObject("id", id);
		m.setViewName("social/social_profile");

		return m;
	}//social_profile() 
	
	@RequestMapping(value="/social/post_write_ok/{id}")
	public String social_profile_write(
			HttpServletRequest request,
			HttpServletResponse response, @PathVariable("id") int id
			,SocialPostVO s_post
			)throws Exception{
		HttpSession session=request.getSession();//세션 값 전체를 가져온다.
		int using_id=(int)session.getAttribute("id");//세션에서 아이디값을 가져온다.
//		String saveFolder=request.getRealPath("/resources/upload");
//		int filesize=200*1024*1024;
//		MultipartRequest multi=null;
//		multi=new MultipartRequest(request,saveFolder,filesize,"UTF-8");
		
		s_post.setSocialId(using_id);
		this.socialService.insertPost(s_post);
		
		if(id==0) {
			return "redirect:/social/main";
		}else {
			return "redirect:/social/profile?id="+id;
		}
	}
	
	@RequestMapping(value="social/post_del_ok")
	public String social_profile_delete(
			HttpServletRequest request,
			HttpServletResponse response, 
			int post_id,
			int user_id,
			HttpSession session,Model m
			)throws Exception{
		session=request.getSession();//세션 값 전체를 가져온다.
		int using_id=(int)session.getAttribute("id");//세션에서 아이디값을 가져온다.
		
		if(using_id==user_id) {
			this.socialService.deletePost(post_id);
		}
		else {
			return "redirect:/social/profile?id="+user_id;
		}
		
		return "redirect:/social/profile?id="+user_id;
	}
	


//	}
}
