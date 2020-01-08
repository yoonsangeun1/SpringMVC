package com.moving.controller;


import java.io.File;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.MUserVO;
import com.moving.service.MUserService;
import com.oreilly.servlet.MultipartRequest;

import pwdconv.PwdChange;

@Controller
public class MyPageController {

	@Autowired
	private MUserService mUserService;

	/** 헤더 */
	@RequestMapping(value="member_header")
	public ModelAndView member_header(HttpServletResponse response, HttpSession session) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}else {
			MUserVO db_img = this.mUserService.emailCheck(userid);
			ModelAndView m = new ModelAndView("include/header");
			m.addObject("db_img",db_img.getProfileImageUrl());
			return m;
		}
		return null;
	}
	
	
	/** 마이페이지 */
	@RequestMapping(value="member_mypage")	
	public ModelAndView member_mypage(HttpServletResponse response, HttpSession session, int mid) throws Exception{

		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}else {
			
//			MUserVO db_img = this.mUserService.emailCheck(userid);
//			String img = db_img.getProfileImageUrl();
			ModelAndView m = new ModelAndView("member/member_mypage");
//			m.addObject("db_img",img);
			MUserVO userInfo = this.mUserService.selectUserInfo(mid);
			int boardCount = this.mUserService.selectBoardCount(mid);
			
			m.addObject("boardCount",boardCount);
			m.addObject("mid",mid);
			m.addObject("userInfo",userInfo);
//			m.addObject("nplist",nplist);
			return m;
			
		}
		return null;
	}//member_mypage()


	/** 회원전환 페이지 */
	@RequestMapping(value="member_change")	
	public ModelAndView member_change(HttpServletResponse response, HttpSession session)throws Exception {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}else {
			ModelAndView m = new ModelAndView("member/member_change");
			MUserVO db_businessInfo = this.mUserService.emailCheck(userid);
			System.out.println(db_businessInfo.getBusinessName());
			System.out.println(db_businessInfo.getBusinessRegisterNo());
			System.out.println(db_businessInfo.getBusinessLicenseImagePath());
			m.addObject("businessName",db_businessInfo.getBusinessName());
			m.addObject("businessRegisterNo",db_businessInfo.getBusinessRegisterNo());
			m.addObject("businessLicenseImagePath",db_businessInfo.getBusinessLicenseImagePath());
			return m;
		}
		return null;
	}//member_mypage()

	/** 회원전환 완료 + 사업자 등록번호 이미지 업로드시 경로를 디비에 저장 */
	@RequestMapping(value="member_change_ok")
	public String member_change_ok(MUserVO m, HttpSession session,
				HttpServletResponse response, HttpServletRequest request) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		int id = (int)session.getAttribute("id");
		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}else {
			String saveFolder = request.getRealPath("resources/");
			/* 첨부파일 업로드경로 , 실제 톰캣프로젝트 경로를 반환 ->
			 * d:/spring_project/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtbwebapps/project/resources/business_License_Image/생성날짜 폴더
			 */
			int fileSize = 5 * 1024 * 1024; //첨부파일 최대크기(5M)
			MultipartRequest multi = null; //첨부파일을 가져오는 api
			multi = new MultipartRequest(request,saveFolder,fileSize,"UTF-8");

			String businessName = multi.getParameter("businessName");
			String businessRegisterNo = multi.getParameter("businessRegisterNo");
			//입력한 사업자명, 사업자등록번호를 가져옴.

			File UpFile = multi.getFile("mChange_file"); //첨부파일을 가져옴.
			if(UpFile != null) { //첨부한 파일이 있는경우
				String fileName = UpFile.getName(); //첨부한 파일명

				Calendar c = Calendar.getInstance();
				int year = c.get(Calendar.YEAR); //년값
				int month = c.get(Calendar.MONTH)+1; //월값, 1월은 0반환
				int date = c.get(Calendar.DATE); //일값

				String business_License_Img=saveFolder+File.separator+"business_License_Img"; //오늘 날짜 폴더경로 지정
				String homedir=business_License_Img+File.separator+year+"-"+month+"-"+date; //오늘 날짜 폴더경로 지정

				File file = new File(business_License_Img);
				if(!(file.exists())) {
					file.mkdir();
				}
				File afile = new File(homedir);
				if(!(afile.exists())) {
					afile.mkdir();
				}
				Random r = new Random();
				int random = r.nextInt(10000); //0이상 1억미만 사이의 정수숫자 난수 발생

				/** 첨부파일 확장자 구하기 */
				int index = fileName.lastIndexOf(".");
				//첨부한 파일에서 .를 맨오른쪽부터 찾아서 가장먼저 나오는 .의 위치번호를 왼쪽부터 세어서 번호값을 반환. 첫문자는 0
				String fileExtendsion = fileName.substring(index+1);
				//마침표 이후부터 마지막 문자까지 구함. 즉 확장자를 구함.
				String refilename = "("+businessName+")"+year+"-"+month+"-"+date+"_"+random+"."+fileExtendsion; //새로운 첨부파일명을 저장
				String fileDBName = "/moving.com/resources/business_License_Img/"+year+"-"+month+"-"+date+"/"+refilename; //DB에 저장되는 레코드값
				UpFile.renameTo(new File(homedir+"/"+refilename)); //바뀌어진 첨부파일명으로 업로드

				m.setBusinessLicenseImagePath(fileDBName); //DB에 사업자등록증이미지경로 저장

			}else { //mybatis는 컬럼에 null값 저장불가, 파일첨부를 하지 않았을때 null저장 방지
				m.setBusinessLicenseImagePath("");
			}
			m.setUserid(userid);
			m.setBusinessName(businessName);
			m.setName(businessName);
			m.setBusinessRegisterNo(businessRegisterNo);
			m.setId(id);
			this.mUserService.memberChange(m);


		}
		session.invalidate(); //세션만료 > 로그아웃

		out.println("<script>");
		out.println("alert('제작사 회원으로 전환하였습니다. 다시 로그인 해주세요 !');");
		out.println("location='member/login';");
		out.println("</script>");

		return null;
	}

	/** 사업자 등록번호 중복검색 */
	@ResponseBody
	@RequestMapping(value="check_businessName")
	public int check_businessName(String businessName, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		MUserVO db_businessName = this.mUserService.check_businessName(businessName); //사업자명 중복검색
		int re = -1; //중복 사업자명이 없을때 반환값
		if(db_businessName != null) { //중복된 사업자명이 있을경우
			re = 1;
		}
		return re;
	}//check_businessName()

	/** 사업자 등록번호 중복검색 */
	@ResponseBody
	@RequestMapping(value="check_businessRegisterNo")
	public int check_businessRegisterNo(String businessRegisterNo, HttpServletResponse response) throws Exception {

		response.setContentType("text/html;charset=UTF-8");
		MUserVO db_businessRegisterNo = this.mUserService.check_businessRegisterNo(businessRegisterNo); //사업자등록번호 중복검색
		int re = -1; //중복 사업자등록번호가 없을때 반환값
		if(db_businessRegisterNo != null) { //중복된 사업자등록번호가 있는경우
			re = 1;
		}
		return re;
	}//check_businessRegisterNo

	/** 회원설정 페이지 */
	@RequestMapping(value="member_infosetting")	
	public ModelAndView member_infosetting(HttpServletResponse response, HttpSession session) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}

		return new ModelAndView("member/member_infosetting");
	}//member_infosetting()

	/** 기본정보 설정 페이지 */
	@RequestMapping(value="member_basicInfoSetting")	
	public ModelAndView member_basicInfoSetting(MUserVO m,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session)throws Exception {	
		String [] phonelist2 = {"010","011","016","017","018","019"};

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}else {

			MUserVO db_phone = this.mUserService.emailCheck(userid);

			String phone02 = db_phone.getPhone().substring(4,8);
			String phone03 = db_phone.getPhone().substring(9);

			ModelAndView em = new ModelAndView("member/member_basicInfoSetting");
			em.addObject("userid",userid);
			em.addObject("phone02",phone02);
			em.addObject("phone03",phone03);
			em.addObject("phonelist2",phonelist2);

			return em;
		}
		return null;
	}//member_basicInfoSetting()

	/** 이메일변경 중복체크 */
	@RequestMapping(value="member/edit_emailCheck")
	@ResponseBody
	public int edit_emailcheck(String setting_email, HttpServletResponse response)throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		MUserVO db_email = this.mUserService.editEmailCheck(setting_email); //이메일 변경 중복체크
		int re = -1; //중복 이메일이 없을때 반환값
		if(db_email != null) { //중복 이메일이 있을때
			re=1;
		}
		return re;
	}

	/** 기본 정보설정 완료 */
	@RequestMapping("member_basicInfoSetting_ok")
	public String member_basicInfoSetting_ok(MUserVO m, String edit_phone01,
			String edit_phone02, String edit_phone03, HttpServletRequest request,
			HttpServletResponse response, HttpSession session)
					throws Exception {


		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		String setting_phone = edit_phone01 + "-" + edit_phone02 + "-" + edit_phone03;

		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}else {
			MUserVO member = this.mUserService.emailCheck(userid); //로그인된 세션값(이메일아이디)를 기준으로 회원검색

			if(member.getPhone().equals(setting_phone)) {
				out.println("<script>");
				out.println("alert('현재 휴대폰번호와 동일합니다 !');");
				out.println("history.back();");
				out.println("</script>");
			}else {
				MUserVO dm = new MUserVO();
				dm.setUserid(userid);
				dm.setPhone(setting_phone);
				this.mUserService.updatephone(dm); //휴대폰번호 정보 수정

				out.println("<script>");
				out.println("alert('정보수정완료 !');");
				out.println("location='member_infosetting';");
				out.println("</script>");
			}
		}
		return null;
	}


	/** 비밀번호 설정 페이지 */
	@RequestMapping(value="member_pwdSetting")
	public ModelAndView member_pwdSetting(HttpSession session, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}

		return new ModelAndView("member/member_pwdSetting");
	}//member_pwdSetting()

	/** 비밀번호 수정 완료 */
	@RequestMapping("member_pwdSetting_ok")
	public String memeber_pwdSetting_ok(MUserVO m, String password, String new_password,HttpServletRequest request,
			HttpSession session, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");

		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}else {
			password = PwdChange.getPassWordToXEMD5String(password); //비번암호화
			MUserVO db_pwd = this.mUserService.emailCheck(userid);
			if(!db_pwd.getPassword().equals(password)) {
				out.println("<script>");
				out.println("alert('현재 비밀번호가 일치하지 않습니다 !');");
				out.println("history.back();");
				out.println("</script>");
			}else {
				if(db_pwd.getPassword().equals(PwdChange.getPassWordToXEMD5String(new_password))) {
					out.println("<script>");
					out.println("alert('현재 비밀번호와 동일합니다 !');");
					out.println("history.back();");
					out.println("</script>");
				}else {
					MUserVO dm = new MUserVO();
					dm.setUserid(userid);
					dm.setPassword(PwdChange.getPassWordToXEMD5String(new_password));// 비번을 암호화해서 저장
					this.mUserService.updatePassword(dm); //비밀번호 정보 수정

					session.invalidate(); //세션만료 > 로그아웃

					out.println("<script>");
					out.println("alert('비밀번호 수정완료 ! 다시 로그인 해주세요!');");
					out.println("location='member/login';");
					out.println("</script>");
				}
			}
		}
		return null;
	}

	/** 프로필 설정 페이지 */
	@RequestMapping(value="member_profileSetting")
	public ModelAndView member_profileSetting(MUserVO m,HttpSession session, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		
		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}else {
			MUserVO db_genre = this.mUserService.emailCheck(userid);
			
			
			ModelAndView em = new ModelAndView("member/member_profileSetting");
			em.addObject("userid",userid);
			em.addObject("profile_image_url",db_genre.getProfileImageUrl());
			em.addObject("genre01",db_genre.getGenre01());
			em.addObject("genre02",db_genre.getGenre02());
			em.addObject("genre03",db_genre.getGenre03());
			return em;
		}
		return null;
	}
	
	/** 프로필 사진 등록 완료*/
	@RequestMapping("member_profileSetting_ok") 
	public String member_profileSetting_ok(MUserVO m,HttpSession session,
			HttpServletResponse response, HttpServletRequest request)throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		String nickname = (String)session.getAttribute("nickname");
		
		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}else {
			String saveFolder = request.getRealPath("resources/");
			/* 첨부파일 업로드경로 , 실제 톰캣프로젝트 경로를 반환 ->
			 * d:/spring_project/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtbwebapps/project/resources/profile_Image/생성날짜 폴더
			 */
			int fileSize = 5 * 1024 * 1024; //첨부파일 최대크기(5M)
			MultipartRequest multi = null; //첨부파일을 가져오는 api
			multi = new MultipartRequest(request,saveFolder,fileSize,"UTF-8");
			
			File UpFile = multi.getFile("profile_file"); //첨부파일을 가져옴.
			if(UpFile != null) { //첨부한 파일이 있는 경우
				String fileName = UpFile.getName(); //첨부한 파일명
				
				Calendar c = Calendar.getInstance();
				int year = c.get(Calendar.YEAR); //년값
				int month = c.get(Calendar.MONTH)+1; //월값, 1월은 0반환
				int date = c.get(Calendar.DATE); //일값
				
				String profile_Image = saveFolder+File.separator+"profile_Image";
				String homedir = profile_Image + File.separator +year+"-"+month+"-"+date; //오늘 날짜 폴더경로 지정
				
				File file = new File(profile_Image);
				if(!(file.exists())) {
					file.mkdir();
				}
				File afile = new File(homedir);
				if(!(afile.exists())) {
					afile.mkdir();
				}
				Random r = new Random();
				int random = r.nextInt(10000); //0이상 1만 사이의 정수숫자 난수 발생
				
				/** 첨부파일 확장자 구하기 */
				int index = fileName.lastIndexOf(".");
				//첨부한 파일에서 .를 맨 오른쪽부터 찾아서 가장먼저 나오는 .의 위치번호를 왼쪽부터 세어서 번호값을반환. 첫문자는 0
				String fileExtendsion = fileName.substring(index+1);
				//마침표 이후부터 마지막 문자까지 구함. 즉 확장자를 구함.
				String refilename = "("+nickname+")"+year+"-"+month+"-"+date+"_"+random+"."+fileExtendsion; //새로운 첨부파일명을 저장
				String fileDBName = "/moving.com/resources/profile_Image/"+year+"-"+month+"-"+date+"/"+refilename; //DB에 저장되는 레코드값
				UpFile.renameTo(new File(homedir+"/"+refilename)); //바뀌어진 첨부파일명으로 업로드
				
				m.setProfileImageUrl(fileDBName);
			}else {
				m.setProfileImageUrl("default");
			}
			m.setUserid(userid);
			m.setId((int)session.getAttribute("id"));
			this.mUserService.memberProfileUpload(m);
		}
			
		out.println("<script>");
		out.println("alert('프로필 사진이 등록되었습니다 !');");
        out.println("location='member_mypage?mid="+session.getAttribute("id")+"';");
		out.println("</script>");
		
		return null;
	}
	
	/** 회원탈퇴 페이지 */
	@RequestMapping("member_delete")
	public ModelAndView member_delete(HttpServletResponse response, HttpSession session) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}else {
			String [] deactivateReasonList = { "탈퇴 사유는 무엇인가요?",
					"재 가입을 위해",
					"콘텐츠 품질과 서비스 정보 부족",
					"고객 서비스의 불만",
					"프로젝트 진행안내 및 새소식",
					"시스템장애 (속도, 잦은장애)",
					"개인 정보(통신 및 신용정보) 노출 우려",
			"직접 입력" };
			ModelAndView m = new ModelAndView("member/member_delete");
			m.addObject("deactivateReasonList",deactivateReasonList);
			return m;
		}
		return null;
	}//member_delete()

	/** 탈퇴완료 */
	@RequestMapping("member_delete_ok")
	public String member_delete_ok(MUserVO m, String deactivateReason,
			String delete_password, HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}else {
			delete_password = PwdChange.getPassWordToXEMD5String(delete_password);
			MUserVO db_pwd = this.mUserService.emailCheck(userid);
			if(!db_pwd.getPassword().equals(delete_password)) {
				out.println("<script>");
				out.println("alert('비밀번호가 다릅니다!');");
				out.println("history.back();");
				out.println("</script>");
			}else {
				MUserVO dm = new MUserVO();
				dm.setUserid(userid);
				dm.setDeactivateReason(deactivateReason);
				this.mUserService.deleteUser(dm);

				System.out.println(deactivateReason);

				session.invalidate(); // 세션만료

				out.println("<script>");
				out.println("alert('MOVING 회원탈퇴를 완료했습니다. 그동안 이용해 주셔서 감사합니다 ');");
				out.println("location='main';");
				out.println("</script>");
			}
		}
		return null;
	}//member_delete_ok()
	
	/** 포인트 충전 페이지 */
	@RequestMapping(value="member_point")
	public ModelAndView member_point(HttpServletResponse response, HttpSession session) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}else {
			MUserVO db_point = this.mUserService.emailCheck(userid);
			ModelAndView m = new ModelAndView("member/member_point");
			m.addObject("db_point",db_point.getUserPoint());
			m.addObject("db_emailId",db_point.getUserid());
			return m;
		}
		return null;
	}
	
	/**포인트 충전*/
	@RequestMapping("member_point_charge_ok")
	public String member_point_charge_ok(MUserVO m, HttpSession session,
			HttpServletResponse response, HttpServletRequest request)throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)session.getAttribute("userid");
		int id=(int)session.getAttribute("id");
		if(userid==null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다 !');");
			out.println("location='member/login';");
			out.println("</script>");
		}else {
			m.setId(id);
			this.mUserService.pointCharge(m);
			session.setAttribute("user_point", m.getUserPoint());
			out.println("<script>");
			out.println("alert('포인트 충전이 완료되었습니다  !');");
			out.println("location='member_infosetting';");
			out.println("</script>");
		}
		return null;
	}
}	
