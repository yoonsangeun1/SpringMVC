package com.moving.controller;

import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.MUserVO;
import com.moving.service.MUserService;

import pwdconv.PwdChange;

@Controller
public class MemberController {


	@Autowired
	private MUserService mUserService;



	//로그인 뷰페이지
	@RequestMapping(value="member/login")	
	public ModelAndView member_login() {
		
		return new ModelAndView("member/member_login");
	}//member_login()

	//회원가입 뷰페이지
	@RequestMapping(value="member/join")	
	public ModelAndView member_join() {
		String [] phonelist = {"010","011","016","017","018","019"};
		ModelAndView m = new ModelAndView("member/member_join");
		m.addObject("phonelist",phonelist);
		
		return m;
	}//member_join()

	//닉네임 중복체크
	@RequestMapping(value="member/nickcheck")
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

	//회원저장
	@RequestMapping("member/member_join_ok")
	public String member_join_ok(MUserVO m, HttpServletRequest request) throws Exception {
		
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
		return "redirect:/member/login"; //로그인 폼으로 이동
	}//member_join_ok()
	
	//이메일 중복체크
	@RequestMapping(value="member/join_emailCheck")
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
	
	//이메일 및 비밀번호 찾기 공지창
	@RequestMapping("member/member_find")
	public String member_find() {
		return "member/member_find";
	}//member_find()
	
	//이메일 아이디 찾기 결과
	@RequestMapping("member/email_find_ok")
	public String email_find_ok(String find_name, String find_phone, HttpServletResponse response,HttpServletRequest request, MUserVO m, Model model) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		m.setName(find_name);
		m.setPhone(find_phone);
		MUserVO em = this.mUserService.emailFind(m);
		//이름과 폰번호를 기준으로 DB에서 이메일검색
		if(em==null) { //회원정보가 없다면
			out.println("<script>");
			out.println("alert('회원 정보를 찾을 수 없습니다 !');");
			out.println("history.back();");
			out.println("</script>");
		}else { //회원정보가 있다면
			String email = em.getEmail();
			model.addAttribute("email",email);
			return "member/email_find_ok";
		}
		return null;
	}
	
	//비밀번호 찾기 결과
	@RequestMapping("member/pwd_find_ok")
	public String pwd_find_ok(String find_email, String find_name, HttpServletResponse response, MUserVO m, Model model) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		m.setEmail(find_email);
		m.setName(find_name);
		MUserVO em = this.mUserService.pwdFind(m);
		//이메일과 이름을 기준으로 디비에서 비밀번호 검색
		if(em==null) {//회원정보가 없다면
			out.println("<script>");
			out.println("alert('회원 정보를 찾을 수 없습니다.!');");
			out.println("history.back();");
			out.println("</script>");
		}else {
			Random r = new Random();
			int pwd_random = r.nextInt(1000000); //임의의 정수난수 발생
			String ran_pwd = Integer.toString(pwd_random); //임시비번을 문자열로 변환
			m.setPassword(PwdChange.getPassWordToXEMD5String(ran_pwd)); //임시비번을 암호화
			this.mUserService.updatePwd(m); //임시비번수정
			
			model.addAttribute("ran_pwd",ran_pwd);
			return "member/pwd_find_ok";
		}
		return null;
	}
	
	//로그인 인증
	@RequestMapping("member/member_login_ok")
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
				session.setAttribute("id",dm.getId()); //세션 이메일아이디에 아이디값 저장
				session.setAttribute("userid",mLogin_email); //세션 이메일아이디에 아이디값 저장
				session.setAttribute("nickname",dm.getNickname()); //세션 닉네임에 VO객체저장
				session.setAttribute("name",dm.getName()); //세션 이름에 VO객체저장
				session.setAttribute("email",dm.getEmail()); //세션 이메일에 VO객체저장
				session.setAttribute("genre01",dm.getGenre01()); //세션 장르1에 VO객체저장
				session.setAttribute("genre02",dm.getGenre02()); //세션 장르2에 VO객체저장
				session.setAttribute("genre03",dm.getGenre03()); //세션 장르3에 VO객체저장
				session.setAttribute("phone",dm.getPhone()); //세션 휴대폰번호에 VO객체저장
				session.setAttribute("publishAvailability",dm.getPublishAvailability()); //세션 마이페이지 공개여부에 VO객체저장
				session.setAttribute("profileImageUrl",dm.getProfileImageUrl()); //세션 프로필사진에 VO객체저장
				session.setAttribute("userStatus",dm.getUserStatus()); //세션 회원상태에 VO객체저장
				session.setAttribute("userType",dm.getUserType()); //세션 회원유형에 VO객체저장
				session.setAttribute("userLv",dm.getUserLv()); //세션 회원등급에 VO객체저장
				session.setAttribute("userPoint",dm.getUserPoint()); //세션 회원포인트에 VO객체저장
				session.setAttribute("registerDate",dm.getRegisterDate()); //세션 회원가입날짜에 VO객체저장
				session.setAttribute("businessName",dm.getBusinessName()); //세션 사업자이름에 VO객체저장
				session.setAttribute("businessRegisterNo",dm.getBusinessRegisterNo()); //세션 사업자등록번호에 VO객체저장
				session.setAttribute("businessLicenseImagePath",dm.getBusinessLicenseImagePath()); //세션 사업자등록증이미지경로에 VO객체저장
				session.setAttribute("deactivateDate",dm.getDeactivateDate()); //세션 탈퇴날짜에 VO객체저장
				session.setAttribute("deactivateReason",dm.getDeactivateReason()); //세션 탈퇴사유 VO객체저장
				
				return "redirect:/main";
			}
		}
		return null;
	}
	
	//Header 출력
		@RequestMapping(value="header")	
		public ModelAndView header() {
			
			return new ModelAndView("include/header");
		}//member_login()
}
