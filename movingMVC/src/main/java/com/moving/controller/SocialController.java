package com.moving.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

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
import com.oreilly.servlet.MultipartRequest;

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
		if(session.getAttribute("id")==null){
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.');");
			out.println("location='/moving.com/main'");
			out.println("</script>");
			
			return null;
		}
		int id=(int)session.getAttribute("id");
		System.out.println("id="+id);

		ModelAndView m=new ModelAndView();

		SocialProfileVO db_id = socialService.checkId(id);

		int re=1;
		if(db_id == null ) re=-1;
		System.out.println(re);
		if(re == 1) //id값이 있을 경우
		{
			SocialProfileVO socialProfileVO=socialService.socialProfileInfo(id);
			System.out.println("성공");
			System.out.println(socialProfileVO.getUserId()); //id값 출력
			List<SocialPostVO> socialPostVO=socialService.selectSocialPost(); //id로 검색하여 게시글ㄹ
			m.addObject("s_post", socialPostVO);
			m.addObject("s_pro", socialProfileVO);
			m.setViewName("social/social_main");
		}
		else {
			System.out.println("아이디 없음");
			/*out.println("<script>");
			out.println("alert('소셜 계정으로 전환하세요');");
			out.println("location='/moving.com/social/join'");
			out.println("</script>");*/
			m.setViewName("social/social_join");
		}
		return m;
	}//social_main()
	
	@RequestMapping(value="/social/join")	
	public ModelAndView social_join() {
		System.out.println("아이고");
		ModelAndView m = new ModelAndView("social/social_join");
		return m;
	}//social_join()
	
	@RequestMapping("social/social_join_ok")
	public String social_join_ok(SocialProfileVO s_pro, HttpServletRequest request) throws Exception {
		HttpSession session=request.getSession();//세션 값 전체를 가져온다.
		
		int using_id=(int)session.getAttribute("id");//세션에서 아이디값을 가져온다.
		String introduce=request.getParameter("introduce"); //자기소개
		String nickname=request.getParameter("nickname");  //닉네임
		
		if(using_id==0) {
//			out.println("<script>");
//			out.println("alert('로그인해주세요!')");
//			out.println("</script>");
			return "redirect:/main";
		}
		else {
			System.out.println("id : "+using_id);
			s_pro.setUserId(using_id);
			s_pro.setNickname(nickname);
			s_pro.setIntroduce(introduce);
	
			this.socialService.insertSocialProfile(s_pro);
			return "redirect:/social/profile?id="+using_id; //프로필 폼으로 이동
		}
	}//social_join_ok()
	
	//메신저
	@RequestMapping(value="/social/messenger")
	public String social_messenger() {
		return "social/social_messenger";
	}//social_messenger()

	//프로필 페이지 매핑
	@RequestMapping(value="/social/profile")
	public ModelAndView social_profile(
			HttpServletRequest request,
			HttpServletResponse response, int id,
			HttpSession session
			) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		session=request.getSession();
		
		int using_id=(int)session.getAttribute("id");
		SocialProfileVO sessionSocial=this.socialService.selectIDFromUserID(using_id);//세션 아이디로 소셜 아이디를 검색한다.
		
		session.setAttribute("sessionSocial", sessionSocial);
		System.out.println(sessionSocial.getNickname());
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
		
		SocialProfileVO getSocial_id=this.socialService.selectIDFromUserID(using_id);
		
		int social_id=getSocial_id.getId();
		
		s_post.setSocialId(social_id);
		this.socialService.insertPost(s_post);
		
		if(id==0) {
			return "redirect:/social/main";
		}else {
			return "redirect:/social/profile?id="+id;
		}
	}
	
	@RequestMapping(value="/social/post_share_ok/{id}")
	public String social_post_share(
			HttpServletRequest request,
			HttpServletResponse response, @PathVariable("id") int id
			, SocialPostVO s_post
			,int post_id,
			int user_id
			)throws Exception{
		HttpSession session=request.getSession();//세션 값 전체를 가져온다.
		
		int using_id=(int)session.getAttribute("id");//세션에서 아이디값을 가져온다.
		if(id==0)
		{
			return "redirect:/main";
		}
		SocialProfileVO getSocial_id=this.socialService.selectIDFromUserID(using_id);//세션 아이디로 소셜 아이디를 검색한다.
		String user=request.getParameter("user_id");
		user_id=Integer.parseInt(user);
		//System.out.println(sharedPost.getContent());
		int social_id=getSocial_id.getId();
		s_post.setSocialId(social_id);
		String sharedPostContent=socialService.selectSocialPostOne(post_id).getContent();
		int re=1;
		//String sharedNickname=socialService.socialProfileInfo(user_id).getNickname();
		SocialProfileVO sharedNickname=socialService.socialProfileInfoWithId(user_id);
		if(sharedNickname == null) re=-1;
		System.out.println(re);
		s_post.setContent("<공유된 게시글입니다><br/>"+sharedPostContent+"<br/>"+"By. <a href='/moving.com/social/profile?id="+sharedNickname.getUserId()+"'>"+sharedNickname.getNickname()+"</a>");
		System.out.println(post_id);
		System.out.println("user_id : "+user_id);
		
		this.socialService.insertPost(s_post);
		
		if(id==0) {
			return "redirect:/social/main";
		}else {
			return "redirect:/social/profile?id="+id;
		}
	}
	
	@RequestMapping(value="social/post_del_ok/{id}")
	public String social_profile_delete(
			HttpServletRequest request,
			HttpServletResponse response, 
			int post_id,
			int user_id,
			int page_num,
			@PathVariable("id") int page_id,
			HttpSession session,Model m
			)throws Exception{
		session=request.getSession();//세션 값 전체를 가져온다.
		
		int using_id=(int)session.getAttribute("id");//세션에서 아이디값을 가져온다.
		
		SocialProfileVO getSocial_id=this.socialService.selectIDFromUserID(using_id);
		user_id=getSocial_id.getId();
		
		if(using_id==page_id) {
			this.socialService.deletePost(post_id);
			if(page_num==0) {
				return "redirect:/social/main";
			}
			else {
				return "redirect:/social/profile?id="+using_id;			
			}
		}
		else {
			return "redirect:/social/profile?id="+using_id;
		}
		
	}
	
	@RequestMapping("social_attach_ok")
	public String bbs_write_ok(AttachedFileVO aFile,HttpServletRequest request,
			HttpSession session,int page_num
			) throws Exception{
		
		String saveFolder=request.getRealPath("resources/upload");
		/* 첨부파일 업로드 경로, 실제 톰캣프로젝트 경로를 반환->
		 * d:\spring_work\.metadata\.plugins\org.eclipse.wst.
		 * server.core\tmp0\wtbwebapps\project\ 
		 * resources\ upload
		 */
		int fileSize=200*1024*1024;//첨부파일 최대크기(5M)
		
		MultipartRequest multi=null;//첨부파일을 가져오는 api
		
		multi=new MultipartRequest(request,saveFolder,fileSize,"UTF-8");
		
//		String bbs_name=multi.getParameter("bbs_name");
//		String bbs_title=multi.getParameter("bbs_title");
//		String bbs_pwd=multi.getParameter("bbs_pwd");
//		String bbs_cont=multi.getParameter("bbs_cont");
		//글쓴이,제목,비번,내용을 가져옴

		File UpFile=multi.getFile("bbs_file");//첨부한 파일을 가져옴.
		int using_id=(int)session.getAttribute("id");//세션에서 아이디값을 가져온다.
		
		if(UpFile != null) {//첨부한 파일이 있는경우
			String fileName=UpFile.getName();//첨부한 파일명
			Calendar c=Calendar.getInstance();
			int year=c.get(Calendar.YEAR);
			int month=c.get(Calendar.MONTH)+1;//+1을 한 이유는
			//1월이 0으로 반환되기 때문이다.
			int date=c.get(Calendar.DATE);//일값
			String homedir=saveFolder+"/"+year+"-"+month+"-"+date;
			//오늘 날짜 폴더경로 저장
			File path1=new File(homedir);
			if(!(path1.exists())) {
				path1.mkdir();//오늘 날짜 폴더 생성
			}//if
			Random r=new Random();
			int random=r.nextInt(100000000);//0이상 1억미만 사
			//이의 정수숫자 난수발생

			/* 첨부한 파일확장자 구함. */
			int index=fileName.lastIndexOf(".");//첨부한 파일
			//에서 .를 맨오른쪽부터 찾아서 가장먼저 나오는 .의 위치번
			//호를 왼쪽부터 세어서 번호값을 반환. 첫문자는 0부터 셈
			String fileExtendsion=fileName.substring(index+1);
			//마침표 이후부터 마지막 문자까지 구함.즉 확장자를 구함.
			String refilename="moving"+year+month+date+random+"."+fileExtendsion;//새로운 첨부파일명을 저장
			String fileDBName="/"+year+"-"+month+"-"+date+"/"+refilename;//디비에 저장될 레코드값
			UpFile.renameTo(new File(homedir+"/"+refilename));
			//바뀌어진 첨부파일명으로 업로드
			aFile.setFilePath(fileDBName);
		}else {//mybatis는 컬럼에 null을 저장못함.그러므로 파일을 첨부하지 않았을때 null값을 저장하는 것을 막기위해서 공백을 삽입한다.    	
			aFile.setFilePath("");    	
		}

		this.socialService.insertAttachFiles(aFile);//자료실 저장
		if(page_num==1) return "redirect:/social/main";
		else			return "redirect:/social/profile?id="+using_id;
	}//social_attach_ok()
}
