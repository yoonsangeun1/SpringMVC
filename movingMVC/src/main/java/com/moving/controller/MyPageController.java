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

@Controller
public class MyPageController {

	@Autowired
	private MUserService mUserService;
	
	
	//마이페이지
	@RequestMapping(value="member/mypage")	
	public ModelAndView member_mypage() {
		
		return new ModelAndView("member/member_mypage");
	}//member_mypage()
	
//	//마이페이지
//	@RequestMapping(value="../member/mypage")	
//	public ModelAndView mypage() {
//			
//		return new ModelAndView("member/member_mypage");
//	}//member_mypage()
		
	//회원전환 페이지
	@RequestMapping(value="member_change")	
	public ModelAndView member_change() {
				
		return new ModelAndView("member/member_change");
	}//member_mypage()
	
//	//회원전환 완료
//	@RequestMapping("member_change_ok")
//	public String member_change_ok(String businessName, String businessRegisterNo,HttpServletRequest request, HttpSession session, MUserVO m,HttpServletResponse response) throws Exception {
//		response.setContentType("text/html;charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		String userid = (String)session.getAttribute("userid");
//		
//		if(userid==null) { //세션 없으면
//			out.println("<script>");
//			out.println("alert('다시 로그인 하세요!');");
//			out.println("location='member/login';");
//			out.println("</script>");
//		}else { //세션 있으면 = 로그인상태
//			m.setUserid(userid);
//			m.setBusinessName(businessName);
//			m.setBusinessRegisterNo(businessRegisterNo);
//			this.mUserService.memberChange(m);
//			return "redirect:/member/mypage";
//		}
//	
//		return null;
//		
//	}
	
	
	//회원전환 완료 + 사업자 등록번호 이미지 업로드시 경로를 디비에 저장
	   @RequestMapping(value="member_change_ok")
	   public String member_change_ok(MUserVO m, HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception {
	      
	      response.setContentType("text/html;charset=UTF-8");
	      PrintWriter out = response.getWriter();
	      String userid=(String)session.getAttribute("userid");
	      if(userid==null) {
	         out.println("<script>");
	         out.println("alert('다시 로그인 하세요 !');");
	         out.println("location='member/login';");
	         out.println("</script>");
	      }else {
	    	  String saveFolder = request.getRealPath("resources/Business_License_Image");
		      /* 첨부파일 업로드경로 , 실제 톰캣프로젝트 경로를 반환 ->
		       * d:/spring_project/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtbwebapps/project/resources/business_License_Image/생성날짜 폴더
		       */
		      int fileSize = 5 * 1024 * 1024; //첨부파일 최대크기(5M)
		      MultipartRequest multi = null; //첨부파일을 가져오는 api
		      multi = new MultipartRequest(request,saveFolder,fileSize,"UTF-8");
		      
//		      String businessLicenseImagePath = multi.getParameter("businessLicenseImagePath");
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
		         String homedir=saveFolder+"/"+year+"-"+month+"-"+date; //오늘 날짜 폴더경로 지정
		         
		         File path1 = new File(homedir);
		         if(!(path1.exists())) {
		            path1.mkdir(); //오늘날짜 폴더 생성
		            
		         }//if
		         
		         Random r = new Random();
		         int random = r.nextInt(100000000); //0이상 1억미만 사이의 정수숫자 난수 발생
		         
		         /** 첨부파일 확장자 구하기 */
		         int index = fileName.lastIndexOf(".");
		         //첨부한 파일에서 .를 맨오른쪽부터 찾아서 가장먼저 나오는 .의 위치번호를 왼쪽부터 세어서 번호값을 반환. 첫문자는 0
		         String fileExtendsion = fileName.substring(index+1);
		         //마침표 이후부터 마지막 문자까지 구함. 즉 확장자를 구함.
		         String refilename = "Business_License_Img("+businessName+")"+year+month+date+random+"."+fileExtendsion; //새로운 첨부파일명을 저장
		         String fileDBName = "/"+year+"-"+month+"-"+date+"/"+refilename; //DB에 저장되는 레코드값
		         UpFile.renameTo(new File(homedir+"/"+refilename)); //바뀌어진 첨부파일명으로 업로드
		         
		         m.setBusinessLicenseImagePath(fileDBName); //DB에 사업자등록증이미지경로 저장
		         
		      }else { //mybatis는 컬럼에 null값 저장불가, 파일첨부를 하지 않았을때 null저장 방지
		         m.setBusinessLicenseImagePath("");
		      }
		      m.setUserid(userid);
		      m.setBusinessName(businessName);
		      m.setName(businessName);
		      m.setBusinessRegisterNo(businessRegisterNo);
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
	   
	 //회원설정 페이지
		@RequestMapping(value="member_infosetting")	
		public ModelAndView member_infosetting() {
					
			return new ModelAndView("member/member_infosetting");
		}//member_mypage()
}
