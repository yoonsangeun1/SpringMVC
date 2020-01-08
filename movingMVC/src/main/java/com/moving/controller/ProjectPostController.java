package com.moving.controller;

import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.moving.domain.ProjectPostVO;
import com.moving.domain.RewardVO;
import com.moving.service.ProjectPostService;
import com.oreilly.servlet.MultipartRequest;

//@RequestMapping(value="/project")
@Controller
public class ProjectPostController {

	@Autowired
	private ProjectPostService projectPostService;

	//펀딩 메인 리스트
	@RequestMapping("project/list")
	public String main(Model listP, 
			ProjectPostVO projectPostVO, 
			HttpServletRequest request) {
		int page=1; 
		int limit=9; //한 페이지에 보여지는 목록 개수
		int category=Integer.parseInt(request.getParameter("category"));
		//int category=Integer.parseInt(request.getParameter("category"));//카테고리 받아오기
		projectPostVO.setCodeNo(category);
		String findName=request.getParameter("findName");
		String findField=request.getParameter("findField");
		//검색어, 검색 필드

		if(request.getParameter("page")!=null) {
			page=Integer.parseInt(request.getParameter("page"));
		}
		if(category == 20001 && findField == null && findName == null) {//전체 목록이고 검색을 하지 않았을 경우 페이징
			limit=3;
		}
		
		
		projectPostVO.setFindField(findField);
		projectPostVO.setFindName("%"+findName+"%");
		
		projectPostVO.setStartRow((page-1)*9+1); //시작행번호
		projectPostVO.setEndRow(projectPostVO.getStartRow()+limit-1);//끝행번호
		
		if(category == 20001 && findField == null && findName == null) {//전체 목록이고 검색을 하지 않았을 경우 페이징
			projectPostVO.setStartRow((page-1)*3+1); //시작행번호
			projectPostVO.setEndRow(projectPostVO.getStartRow()+limit-1);//끝행번호
		}
		
		//검색 전, 후 레코드 개수
		int totalCount=this.projectPostService.selectListCount(projectPostVO);
		//검색 전, 후 레코드 목록
		List<ProjectPostVO> plist=this.projectPostService.selectProjectList(projectPostVO);

		//메인에 띄울 move 수 가장 많은 프로젝트 하나, 
		ProjectPostVO bestOne=this.projectPostService.selectBestprojectInfo();
		//랜덤 프로젝트 띄우기
		List<ProjectPostVO> plist2=this.projectPostService.selectRandomProjectList(20);
			
			
		
		//총 페이지 수
		int maxpage=(int)((double)totalCount/limit+0.95);
		//시작 페이지
		int startpage=(((int)((double)page/10+0.9))-1)*10+1;
		//마지막 페이지
		int endpage=maxpage;
		if(endpage>startpage+10-1)
			endpage=startpage+10-1;
		
		
		listP.addAttribute("bestOne",bestOne);
		listP.addAttribute("plist",plist);
		listP.addAttribute("plist2",plist2);
		listP.addAttribute("page", page);
		listP.addAttribute("startpage", startpage);
		listP.addAttribute("endpage", endpage);
		listP.addAttribute("maxpage", maxpage);
		listP.addAttribute("listCount", totalCount);
		listP.addAttribute("findField", findField);
		listP.addAttribute("findName", findName);
		listP.addAttribute("category", category);
		
		if(category == 20001 && findField == null && findName == null) {
			return "project/project_main_list";
		}else {
			return "project/project_categoryList";
		}
	}//list()

	//펀딩 장르별 리스트
	//@RequestMapping("category/list")

	//펀딩 상세 페이지 내용 보기 + 조회수 증가
	@RequestMapping("project/content")
	public ModelAndView content(int id, HttpServletRequest request) throws Exception {
		HttpSession session=request.getSession();
		Integer sessionId=(Integer)session.getAttribute("id");
		
		int category=Integer.parseInt(request.getParameter("category"));
		//int category=Integer.parseInt(request.getParameter("category"));//카테고리 받아오기
		//projectPostVO.setCodeNo(category);
		String findName=request.getParameter("findName");
		String findField=request.getParameter("findField");
		String page=request.getParameter("page");
		
		ProjectPostVO projectInfo=projectPostService.selectprojectInfo(id);	//프로젝트 정보 불러오기
		ModelAndView m=new ModelAndView("project/project_content");	//뷰페이지 경로 설정

		//System.out.println(projectInfo.getId());
		m.addObject("projectInfo", projectInfo);
		m.addObject("sessionId", sessionId);
		m.addObject("findField", findField);
		m.addObject("findName", findName);
		m.addObject("category", category);
		m.addObject("page", page);
		return m;
	}//content()

	//펀딩 삭제
	@RequestMapping("project/delete")
	public String delete(int id,int page, int category,
			String findName, String findField,
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session,
			RedirectAttributes rttr) throws Exception{

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();

		if(session.getAttribute("id") != null) { /*세션에 값이 있을경우*/
			projectPostService.deleteprojectPost(id);
			return "redirect:/project/list?category="+category; //view 페이지로 이동.
		}else { /*세션이 값이 없을 경우*/
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else

		return null;
	}//delete()
			
	
	//펀딩 소개
	@RequestMapping("project/introduce")
	public String introduce() {
		return "project/project_introduce";
	}//introduce()

	//펀딩 글쓰기
	@RequestMapping("project/write")
	public ModelAndView write(ProjectPostVO projectPostVO, 
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session) throws Exception {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		String nickname=(String)session.getAttribute("nickname");
		
		ModelAndView m=new ModelAndView();
		
		if(nickname == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요합니다!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}else {
			String userLv=(String)session.getAttribute("user_lv");
			
			if(!(userLv.equals("제작사") || userLv.equals("관리자"))) {
				out.println("<script>");
				out.println("alert('일반 회원이신가요? 제작사 회원으로 전환해주세요!');");
				out.println("location='/moving.com/member_change';");
				out.println("</script>");
			}else {
				if(request.getParameter("id") !=null) {//전달받은 id값이 있는 경우 
					int id=Integer.parseInt(request.getParameter("id"));
					projectPostVO=projectPostService.selectprojectInfo(id);//id를 기준으로 글 정보를 불러와서
					m.addObject("projectPostVO", projectPostVO);//모델엔뷰에 저장하여
					m.setViewName("/project/project_write");//정보를 가지고 글쓰기 페이지로 이동

					return m;
				}
				if(projectPostVO.getId() == 0) {//id값이 없는 경우 ( 새로 게시글 쓰는 경우 
					//System.out.println("전:"+projectPostVO.getId());
					projectPostVO.setUserId((int)session.getAttribute("id"));//세션에서 작성자 id 가져와서 저장하여
					projectPostService.insertSelectProjectPost(projectPostVO);//새로운 프로젝트 생성
					//System.out.println("후:"+projectPostVO.getId());
					m.addObject("projectPostVO", projectPostVO);//프로젝트 고유번호를 가지고 
					m.setViewName("/project/project_write");//글쓰기 페이지로 이동
					return m;
				}
			}
		}
		return null;
		
	}//write()
	
	//펀딩 글쓰기 완료
	@RequestMapping("project/write_ok")
	public String writeOk(ProjectPostVO projectPostVO, //int id, 
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session, Model m) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		String nickname=(String)session.getAttribute("nickname");

		String saveFolder=request.getRealPath("/"); // 파일 기본경로
		int fileSize=10*1024*1024; //첨부파일 최대크기(10MB)
		MultipartRequest multi=null;// 첨부파일을 가져오는 api
		String filePath=null;		//String들, 밑에 if문 밖에서도 사용하기 위해 미리 선언함.
		String todayFolder=null;
		String fileName=null;
		File fileyyyyMMFolder = null;
		String sFileInfo="";

		//ModelAndView m=new ModelAndView();

		if(nickname == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요합니다!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}else {
			String userLv=(String)session.getAttribute("user_lv");

			if(!(userLv.equals("제작사") || userLv.equals("관리자"))) {
				out.println("<script>");
				out.println("alert('일반 회원이신가요? 제작사 회원으로 전환해주세요!');");
				out.println("location='/moving.com/member_change';");
				out.println("</script>");
			}else {
				projectPostVO.setUserId((int)session.getAttribute("id"));

				//파일 저장 경로
				filePath = saveFolder + "resources" + File.separator +"project_thumbnail_image";

				multi=new MultipartRequest(request,filePath,fileSize,"UTF-8");
				File UpFile=multi.getFile("thumbnailImage"); //첨부한 파일을 가져옴.

				if(UpFile != null) {

					fileName=UpFile.getName(); //첨부한 파일명	
					SimpleDateFormat formatterFolder = new SimpleDateFormat("yyyyMM"); //년월만 저장
					todayFolder = formatterFolder.format(new java.util.Date()); //201912 이런식

					File file = new File(filePath); //기본 경로 폴더 생성하기
					if(!file.exists()) { //file 폴더가 없다면
						file.mkdirs();   //자동 생성
					}else {
						fileyyyyMMFolder = new File(filePath + File.separator + todayFolder +File.separator);
						if(!fileyyyyMMFolder.exists()) {//년월 폴더가 없다면
							fileyyyyMMFolder.mkdirs();
						}//if 	
					}//if else

					String realFileNm = "";
					SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
					String today= formatter.format(new java.util.Date());

					//해당 폴더에 생성될 이미지 파일 명
					realFileNm = today + UUID.randomUUID().toString() + fileName.substring(fileName.lastIndexOf("."));
					UpFile.renameTo(new File(fileyyyyMMFolder+"/"+realFileNm));

					///////////////// DB에 파일쓰기 /////////////////
					sFileInfo += "/moving.com/resources/project_thumbnail_image/"+
							todayFolder + File.separator + realFileNm;    

					projectPostVO.setId(Integer.parseInt(multi.getParameter("id")));
					projectPostVO.setThumbnailImage(sFileInfo); //파일 경로 저장
					projectPostVO.setTitle(multi.getParameter("title"));
					projectPostVO.setIntroduce(multi.getParameter("introduce"));
					projectPostVO.setTargetPrice(Integer.parseInt(multi.getParameter("targetPrice")));
					projectPostVO.setTargetLimit(multi.getParameter("targetLimit"));
					projectPostVO.setCodeNo(Integer.parseInt(multi.getParameter("codeNo")));

					this.projectPostService.updateProjectPost(projectPostVO);//프로젝트 수정사항 저장

					projectPostVO=projectPostService.selectprojectInfo(projectPostVO.getId());//프로젝트 정보 저장해서 
					int id=Integer.parseInt(multi.getParameter("id"));
					return  "redirect:/project/write?id="+id;
				}else {//첨부 파일이 없을 경우
					projectPostVO=projectPostService.selectprojectInfo(projectPostVO.getId());//프로젝트 정보 가져와서 
					projectPostVO.setThumbnailImage(projectPostVO.getThumbnailImage()); //이전 파일 경로를 다시 저장
					projectPostVO.setTitle(multi.getParameter("title"));
					projectPostVO.setIntroduce(multi.getParameter("introduce"));
					projectPostVO.setTargetPrice(Integer.parseInt(multi.getParameter("targetPrice")));
					projectPostVO.setTargetLimit(multi.getParameter("targetLimit"));
					projectPostVO.setCodeNo(Integer.parseInt(multi.getParameter("codeNo")));
					
					this.projectPostService.updateProjectPost(projectPostVO);//프로젝트 수정사항 저장

					projectPostVO=projectPostService.selectprojectInfo(projectPostVO.getId());//프로젝트 정보 저장해서 
					int id=Integer.parseInt(multi.getParameter("id"));
					return  "redirect:/project/write?id="+id;
				}
			}
		}
		return null;
	}//write()

		
	//펀딩 리워드 글쓰기 완료
	@RequestMapping("rewards/write_ok")
	public String rewardWriteOk(RewardVO rewardVO, 
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session) throws Exception {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		String nickname=(String)session.getAttribute("nickname");

		if(nickname == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요합니다!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}else {
			String userLv=(String)session.getAttribute("user_lv");

			if(!(userLv.equals("제작사") || userLv.equals("관리자"))) {
				out.println("<script>");
				out.println("alert('일반 회원이신가요? 제작사 회원으로 전환해주세요!');");
				out.println("location='/moving.com/member_change';");
				out.println("</script>");
			}else {
				int id=Integer.parseInt(request.getParameter("id"));
				rewardVO.setProjectPostId(id);
				projectPostService.insertProjectReward(rewardVO); 
				return "redirect:/project/write?id="+id;
			}
		}
		return null;
	}//write()
	
	//펀딩 리워드 글쓰기 완료
	@RequestMapping("rewards/edit_ok")
	public String rewardEditOk(RewardVO rewardVO, 
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session) throws Exception {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		String nickname=(String)session.getAttribute("nickname");

		if(nickname == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요합니다!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}else {
			String userLv=(String)session.getAttribute("user_lv");

			if(!(userLv.equals("제작사") || userLv.equals("관리자"))) {
				out.println("<script>");
				out.println("alert('일반 회원이신가요? 제작사 회원으로 전환해주세요!');");
				out.println("location='/moving.com/member_change';");
				out.println("</script>");
			}else {
				int id=Integer.parseInt(request.getParameter("id"));//리워드 id
				int projectPostId=rewardVO.getProjectPostId();
				rewardVO.setId(id);
				projectPostService.updateProjectReward(rewardVO); 
				return "redirect:/project/write?id="+projectPostId;
			}
		}
		return null;
	}//write()
		
	//펀딩 카테고리리스트
	@RequestMapping("project/category")
	public String categoryList() {
		return "project/project_categoryList";
	}//write()



}
