package com.moving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//@RequestMapping(value="/project")
@Controller
public class ProjectController {

	
	//펀딩 메인 리스트
	@RequestMapping("project/list")
	public String main() {
		return "project/project_main_list";
	}//list()
	
	//펀딩 장르별 리스트
	//@RequestMapping("category/list")
	
	//펀딩 상세 페이지
	@RequestMapping("project/content")
	public String content() {
		return "project/project_content";
	}//content()
	
	//펀딩 글쓰기
	@RequestMapping("project/write")
	public String write() {
		return "project/funding_write";
	}//write()
}
