package com.moving.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.ProjectPostVO;
import com.moving.service.ProjectPostService;

//@RequestMapping(value="/project")
@Controller
public class ProjectPostController {

	@Autowired
	private ProjectPostService projectPostService;

	//펀딩 메인 리스트
	@RequestMapping("project/list")
	public String main(Model listP, ProjectPostVO projectPostVO, HttpServletRequest request) {
		int page=1; 
		if(request.getParameter("page")!=null) {
			page=Integer.parseInt(request.getParameter("page"));
		}
		
		int limit=12; //한 페이지에 보여지는 목록 개수
		int category=Integer.parseInt(request.getParameter("category"));//카테고리 받아오기
		if(category == 20001) {
			limit=12;
		}
		String findName=request.getParameter("find_name");
		String findField=request.getParameter("find_field");
		//검색어, 검색 필드
		projectPostVO.setFindField(findField);
		projectPostVO.setFindName("%"+findName+"%");
		
		//검색 전, 후 레코드 개수
		int totalCount=this.projectPostService.selectListCount(projectPostVO);
		
		projectPostVO.setStartRow((page-1)*10+1);//시작 행 번호
		projectPostVO.setEndRow(projectPostVO.getStartRow()+limit-1);//끝 행 번호
		
		//검색 전, 후 레코드 목록
		List<ProjectPostVO> plist=this.projectPostService.selectProjectList(projectPostVO);
		
		//총 페이지 수
		int maxpage=(int)((double)totalCount/limit+0.95);
		//시작 페이지
		int startpage=(((int)((double)page/10+0.9))-1)*10+1;
		//마지막 페이지
		int endpage=maxpage;
		if(endpage>startpage+10-1)
			endpage=startpage+10-1;
		
		
		listP.addAttribute("plist",plist);
		listP.addAttribute("page", page);
		listP.addAttribute("startpage", startpage);
		listP.addAttribute("endpage", endpage);
		listP.addAttribute("maxpage", maxpage);
		listP.addAttribute("listCount", totalCount);
		listP.addAttribute("findField", findField);
		listP.addAttribute("findName", findName);
		listP.addAttribute("category", category);
		
		if(category == 20001 || category == 0) {
			return "project/project_main_list";
		}else {
			return "project/project_categoryList";
		}
	}//list()

	//펀딩 장르별 리스트
	//@RequestMapping("category/list")

	//펀딩 상세 페이지 내용 보기 + 조회수 증가
	@RequestMapping("project/content")
	public ModelAndView content(String id, HttpServletRequest request) throws Exception {
		HttpSession session=request.getSession();
		Integer sessionId=(Integer)session.getAttribute("id");
		ProjectPostVO projectInfo=projectPostService.selectprojectInfo(Integer.parseInt(id));	//프로젝트 정보 불러오기
		ModelAndView m=new ModelAndView("project/project_content");	//뷰페이지 경로 설정

		//System.out.println(projectInfo.getId());
		m.addObject("projectInfo", projectInfo);
		m.addObject("sessionId", sessionId);
		return m;
	}//content()


	//펀딩 소개
	@RequestMapping("project/introduce")
	public String introduce() {
		return "project/project_introduce";
	}//write()

	//펀딩 글쓰기
	@RequestMapping("project/write")
	public String write() {
		return "project/project_write";
	}//write()
	
	//펀딩 카테고리리스트
	@RequestMapping("project/category")
	public String categoryList() {
		return "project/project_categoryList";
	}//write()



}
