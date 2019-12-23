package com.moving.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.AttachedFileVO;
import com.moving.domain.SocialPostVO;
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
//		String saveFolder=request.getRealPath("/resources/upload");
//		int filesize=200*1024*1024;
//		MultipartRequest multi=null;
//		multi=new MultipartRequest(request,saveFolder,filesize,"UTF-8");
//		SocialPostVO socialPostVO=new SocialPostVO();
//		socialPostVO.setSocialId(id);
//		socialPostVO.setContent(SNS_Main_Text_Value);
//		this.socialService.insertPost(socialPostVO);
//		m.addAttribute("id", id);
		System.out.println(s_post.getContent());
		return "redirect:/social/main";
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
	
//	@RequestMapping(value="social/attach_insert_ok", method=RequestMethod.POST)
//	public String social_attach_insert(@ModelAttribute("product") Product product, MultipartHttpServletRequest request,
//            @RequestParam("file") MultipartFile[] file ) throws Exception{
//	String uploadPath=request.getRealPath("/resources/upload");
//	String fileOriginName="";
//	String fileMultiName="";
//	for(int i=0;i<file.length;i++) {
//		 fileOriginName = file[i].getOriginalFilename();
//	        System.out.println("기존 파일명 : "+fileOriginName);
//	        SimpleDateFormat formatter = new SimpleDateFormat("YYYYMMDD_HHMMSS_"+i);
//	        Calendar now = Calendar.getInstance();
//	        
//	        //확장자명
//	        String extension = fileOriginName.split("\\.")[1];
//	        
//	        //fileOriginName에 날짜+.+확장자명으로 저장시킴.
//	        fileOriginName = formatter.format(now.getTime())+"."+extension;
//	        System.out.println("변경된 파일명 : "+fileOriginName);
//	        
//	        File f = new File(uploadPath+"\\"+fileOriginName);
//	        file[i].transferTo(f);
//	        if(i==0) {
//	        	fileMultiName += fileOriginName;
//	        }
//	        else{
//	        	fileMultiName += ","+fileOriginName;
//	        }
//	}
//	  System.out.println("*"+fileMultiName);
//	    product.setFileName(fileMultiName);
//	    
//	    this.socialService.insertAttachFiles();
//	    
//	    return "redirect:/social/profile?id="+user_id;
//	}
}
