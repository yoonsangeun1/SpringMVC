package com.moving.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public String main() {
		return "project/project_main_list";
	}//list()
	
	//펀딩 장르별 리스트
	//@RequestMapping("category/list")
	
	//펀딩 상세 페이지 내용 보기 + 조회수 증가
	@RequestMapping("project/content")
	public ModelAndView content(int id, Locale locale) throws Exception {
		ProjectPostVO projectInfo=projectPostService.selectprojectInfo(id);	//프로젝트 정보 불러오기
		ModelAndView m=new ModelAndView("project/project_content");	//뷰페이지 경로 설정
		
		m.addObject("projectInfo", projectInfo);
		return m;
	}//content()
	
	
	//펀딩 글쓰기
	@RequestMapping("project/write")
	public String write() {
		return "project/funding_write";
	}//write()
}
