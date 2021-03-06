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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.AttachedFileVO;
import com.moving.domain.MUserVO;
import com.moving.domain.SocialPostVO;
import com.moving.domain.SocialProfileVO;
import com.moving.service.MUserService;
import com.moving.service.SocialService;

import pwdconv.PwdChange;

@Controller
public class adfads {

		/*
		@Autowired
		private SocialService socialService;
		
		@Autowired
		private MUserService mUserService;

		//소셜에서 유저 회원가입 페이지
		@RequestMapping(value="social/join")	
		public ModelAndView social_join() {
			String [] phonelist = {"010","011","016","017","018","019"};
			ModelAndView m = new ModelAndView("member/member_snsJoin");
			m.addObject("phonelist",phonelist);
			
			return m;
		}//member_join()
		
		//이메일 중복체크
		@RequestMapping(value="social/join_emailCheck")
		@ResponseBody
		public int memeber_emailcheck(String email, HttpServletResponse response) throws Exception {
			response.setContentType("text/html;charset=UTF-8");
			MUserVO db_email = this.mUserService.emailCheck(email); //이메일 중복검색
			int re = -1; //중복 이메일이 없을때 반환값
			if(db_email != null) { //중복 이메일이 있을때
					re=1;
			}
			return re;
		}//memeber_emailcheck()
			
		//닉네임 중복체크
		@RequestMapping(value="social/nickcheck")
		public String member_nickcheck(String nickname, HttpServletResponse response) throws Exception {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			MUserVO db_nickname = this.mUserService.nickCheck(nickname); //닉네임 중복검색
			int re = -1; //중복 닉네임이 없을때 반환값
		
			if(db_nickname != null) { //중복닉네임이 있을때
				re=1;
			}
			out.println(re); //값을 반환
			return null;
		}//member_nickcheck()
		
		//회원가입 완료
		@RequestMapping("/social/social_join_ok")
		public String member_join_ok(MUserVO m, HttpServletRequest request, HttpServletResponse response) throws Exception {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			m.setPassword(PwdChange.getPassWordToXEMD5String(m.getPassword())); // 비번을 암호화 하여 저장
			
			//회원가입시 입력한 휴대폰번호를 하나의 문자열로 합침
			String phone= request.getParameter("phone01") + "-" + request.getParameter("phone02") + "-" + request.getParameter("phone03");
			
			//회원가입시 선택한 선호장르를 DB에 저장
			String[] values=new String[3];
			if(request.getParameterValues("genre_like") != null) {
				values = request.getParameterValues("genre_like");

				System.out.println(values.length);
				
				int genre_count=3;
				
				switch(values.length) {
				case 3:
					m.setGenre03(values[2]);
					genre_count--;
				case 2:
					m.setGenre02(values[1]);
					genre_count--;
				case 1:
					m.setGenre01(values[0]);
					genre_count--;
					break;
				}
				switch(genre_count) {
				case 3:
					m.setGenre01("NULL");
				case 2:
					m.setGenre02("NULL");
				case 1:
					m.setGenre03("NULL");
					break;
				}
			}else {  
				m.setGenre01("NULL");			
				m.setGenre02("NULL");			
				m.setGenre03("NULL");			
			}	
			//하나의 문자열로 합친 휴대폰번호를 DB에 저장
			m.setPhone(phone);
			this.mUserService.insertUser(m); //회원저장
			
			out.println("<script>");
			out.println("alert('MOVING회원이 되신 것을 환영합니다 !');");
			out.println("location='/moving.com/social/login';");
			out.println("</script>");
			
			return null;
		}//member_join_ok()
		
		//소셜에서 로그인
		@RequestMapping("/social/login")
		public String social_login(){
			return "member/member_snsLogin";
		}
		
		//로그인 인증
		@RequestMapping("/social/social_login_ok")
		public String member_login_ok(String mLogin_email, String mLogin_password, MUserVO m,
				HttpServletResponse response, HttpServletRequest request, HttpSession session) throws Exception {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			session = request.getSession();

			MUserVO dm = this.mUserService.loginCheck(mLogin_email); //로그인 인증

			if(dm == null) { //
				out.println("<script>");
				out.println("alert('가입되지 않은 회원입니다 !');");
				out.println("history.back();");
				out.println("</script>");
			}else {
				if(!dm.getPassword().equals(PwdChange.getPassWordToXEMD5String(mLogin_password))) {
					out.println("<script>");
					out.println("alert('비밀번호가 일치하지 않습니다 !');");
					out.println("history.back();");
					out.println("</script>");
				}else {
					session.setAttribute("id",dm.getId()); //세션 id에 시퀀스번호값 저장
					session.setAttribute("userid",mLogin_email); //세션 이메일아이디에 아이디값 저장
					session.setAttribute("nickname",dm.getNickname()); //세션 닉네임에 VO객체저장
					session.setAttribute("name",dm.getName()); //세션 이름에 VO객체저장
					session.setAttribute("email",dm.getEmail()); //세션 이메일에 VO객체저장
					session.setAttribute("genre01",dm.getGenre01()); //세션 장르1에 VO객체저장
					session.setAttribute("genre02",dm.getGenre02()); //세션 장르2에 VO객체저장
					session.setAttribute("genre03",dm.getGenre03()); //세션 장르3에 VO객체저장
					session.setAttribute("phone",dm.getPhone()); //세션 휴대폰번호에 VO객체저장
					session.setAttribute("publish_availability",dm.getPublishAvailability()); //세션 마이페이지 공개여부에 VO객체저장
					session.setAttribute("profile_image_url",dm.getProfileImageUrl()); //세션 프로필사진에 VO객체저장
					session.setAttribute("user_status",dm.getUserStatus()); //세션 회원상태에 VO객체저장
					session.setAttribute("user_type",dm.getUserType()); //세션 회원유형에 VO객체저장

					if(dm.getUserLv()==1) {
						session.setAttribute("user_lv", "개인회원");
					}else if(dm.getUserLv()==2) {
						session.setAttribute("user_lv", "휴면회원");
					}else if(dm.getUserLv()==3) {
						session.setAttribute("user_lv", "제작사");
					}else {
						session.setAttribute("user_lv", "관리자");
					}
					//					session.setAttribute("user_lv",dm.getUserLv()); //세션 회원등급에 VO객체저장
					session.setAttribute("user_point",dm.getUserPoint()); //세션 회원포인트에 VO객체저장 
					session.setAttribute("register_date",dm.getRegisterDate()); //세션 회원가입날짜에 VO객체저장
					session.setAttribute("business_name",dm.getBusinessName()); //세션 사업자이름에 VO객체저장
					session.setAttribute("business_register_no",dm.getBusinessRegisterNo()); //세션 사업자등록번호에 VO객체저장
					session.setAttribute("business_license_image_path",dm.getBusinessLicenseImagePath()); //세션 사업자등록증이미지경로에 VO객체저장
					session.setAttribute("deactivate_date",dm.getDeactivateDate()); //세션 탈퇴날짜에 VO객체저장
					session.setAttribute("deactivate_reason",dm.getDeactivateReason()); //세션 탈퇴사유 VO객체저장

					SocialProfileVO svo = this.mUserService.findSocialAcount(dm.getId());
					if(svo!=null) {
						session.setAttribute("sessionSocial", svo);
					}
					out.println("<script>");
					out.println("alert('MOVING 로그인을 환영합니다 !');");
					out.println("location='/moving.com/social/main';");
					out.println("</script>");

					return null;
				}
			}
			return null;
		}//member_login_ok()

		//소셜 회원으로 전환
		@RequestMapping(value="/social/modify")	
		public ModelAndView social_modify() {
			System.out.println("아이고");
			ModelAndView m = new ModelAndView("social/social_modify");
			return m;
		}//social_join()

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
				out.println("location='/moving.com/social/login'");
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
				SocialProfileVO sessionSocial=(SocialProfileVO) session.getAttribute("sessionSocial");
				System.out.println("성공");
				System.out.println(sessionSocial.getId()); //id값 출력
				List<SocialPostVO> socialPostVO=socialService.selectSocialPost(); //id로 검색하여 게시글ㄹ
				m.addObject("s_post", socialPostVO);
				m.addObject("s_pro", sessionSocial);
				m.setViewName("social/social_main");
				return m;
			}
			else {
				System.out.println("아이디 없음");
				
				out.println("<script>");
				out.println("if(confirm('무빙 SNS를 이용하시려면 소셜 계정으로 전환하세요') == true){"
						+ "location='/moving.com/social/modify';"
						+ "}else{"
						+ "location='/moving.com/main';}");
				out.println("</script>");
				
				//m.setViewName("social/social_modify");
			}
			return null;
		}//social_main()
		
		//소셜회원 전환 완료
		@RequestMapping("social/social_modify_ok")
		public String social_modify_ok(SocialProfileVO s_pro, HttpServletRequest request) throws Exception {
			HttpSession session=request.getSession();//세션 값 전체를 가져온다.
			
			int using_id=(int)session.getAttribute("id");//세션에서 아이디값을 가져온다.
			String introduce=request.getParameter("introduce"); //자기소개
			String nickname=request.getParameter("nickname");  //닉네임
			
			if(using_id==0) {
//				out.println("<script>");
//				out.println("alert('로그인해주세요!')");
//				out.println("</script>");
				return "redirect:/main";
			}
			else {
				System.out.println("id : "+using_id);
				s_pro.setUserId(using_id);
				s_pro.setNickname(nickname);
				s_pro.setIntroduce(introduce);
		
				this.socialService.insertSocialProfile(s_pro);
				return "redirect:/social/profile?id="+s_pro.getId(); //프로필 폼으로 이동
			}
		}//social_modify_ok()
		
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
			
			//int using_id=(int)session.getAttribute("id");
			SocialProfileVO sessionSocial=(SocialProfileVO) session.getAttribute("sessionSocial");
			
			ModelAndView m=new ModelAndView();
			
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
			 첨부파일 업로드 경로, 실제 톰캣프로젝트 경로를 반환->
			 * d:\spring_work\.metadata\.plugins\org.eclipse.wst.
			 * server.core\tmp0\wtbwebapps\project\ 
			 * resources\ upload
			 
			int fileSize=200*1024*1024;//첨부파일 최대크기(5M)
			
			MultipartRequest multi=null;//첨부파일을 가져오는 api
			
			multi=new MultipartRequest(request,saveFolder,fileSize,"UTF-8");
			
//			String bbs_name=multi.getParameter("bbs_name");
//			String bbs_title=multi.getParameter("bbs_title");
//			String bbs_pwd=multi.getParameter("bbs_pwd");
//			String bbs_cont=multi.getParameter("bbs_cont");
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

				 첨부한 파일확장자 구함. 
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
*/
}
