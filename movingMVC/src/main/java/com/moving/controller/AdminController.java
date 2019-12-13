package com.moving.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moving.service.AdminVideoService;

@RequestMapping(value="/admin")
@Controller
public class AdminController {
	
	@Autowired
	private AdminVideoService adminVideoService;

	/* 관리자 홈 */
	@RequestMapping(value="/")
	public ModelAndView admin() {
		return new ModelAndView("admin");
	}//admin()
	
	/* 게시판 관리 */
	@RequestMapping(value="/board")
	public ModelAndView board() {
		return new ModelAndView("admin/admin_board");
	}//board()
	
	/* 펀딩 관리 */
	@RequestMapping(value="/project")
	public ModelAndView funding() {
		return new ModelAndView("admin/admin_project");
	}//funding()
	
	/* 회원 관리 */
	@RequestMapping(value="/member")
	public ModelAndView member() {
		return new ModelAndView("admin/admin_member");
	}//member()
	
	/* General */
	@RequestMapping(value="/general")
	public ModelAndView general() {
		return new ModelAndView("admin/admin_general");
	}//general()
	
	/* DashBoard */
	@RequestMapping(value="/dashboard")
	public ModelAndView dashboard() {
		return new ModelAndView("admin/admin_dashboard");
		//뷰 리졸브 경로-> /WEB-INF/views/board/admin_dashboard.jsp
	}//dashboard()
	
	/* 영화 관리 */
	@RequestMapping(value="/movie")
	public ModelAndView movie() {
		return new ModelAndView("admin/admin_movie");
	}//movie()
	
	/* 영화 업로드 */
	@RequestMapping(value="/movie_upload")
	public ModelAndView insertMovie() {
		String[] genre = {"선택하세요.","범죄/스릴러","액션/어드벤쳐","다큐/드라마/청춘","역사/시대극",
				"판타지/SF","멜로/로맨스","코미디","애니메이션","기타"};
		String[] codeNo = {"30001","3000101","3000102","3000103","3000104","3000105",
				"3000106","3000107","3000108","3000109"};
		ModelAndView m = new ModelAndView("admin/admin_movieUpload");
		m.addObject("genre",genre);
		m.addObject("codeNo",codeNo);
		return m;
	}//insertMovie()
	
}
