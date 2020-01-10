package com.moving.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moving.service.AdminVideoService;

//@RequestMapping(value="/admin")
@Controller
public class AdminController {
	
	@Autowired
	private AdminVideoService adminVideoService;

	/* 관리자 홈 */
	@RequestMapping(value="/admin")
	public ModelAndView admin() {
		return new ModelAndView("admin/admin_member");
	}//admin()
	
//	/* 게시판 관리 */
//	@RequestMapping(value="/board")
//	public ModelAndView board() {
//		return new ModelAndView("admin/admin_board");
//	}//board()
	
	/* 프로젝트 관리 */
	@RequestMapping(value="/admin/project")
	public ModelAndView project() {
		return new ModelAndView("admin/admin_project");
	}//funding()
	
	/* 회원 관리 */
//	@RequestMapping(value="/member")
//	public ModelAndView member() {
//		return new ModelAndView("admin/admin_member");
//	}//member()
	
	/* General */
	@RequestMapping(value="/admin/general")
	public ModelAndView general() {
		return new ModelAndView("admin/admin_general");
	}//general()
	
	/* DashBoard */
	@RequestMapping(value="/admin/dashboard")
	public ModelAndView dashboard() {
		return new ModelAndView("admin/admin_dashboard");
		//뷰 리졸브 경로-> /WEB-INF/views/board/admin_dashboard.jsp
	}//dashboard()
	
//	/* 영화 관리 */
//	@RequestMapping(value="/movie")
//	public ModelAndView movie() {
//		return new ModelAndView("admin/admin_movie");
//	}//movie()
	
	/* 영화 업로드 */
	@RequestMapping(value="/admin/movie_upload")
	public ModelAndView insertMovie() {
		ModelAndView m = new ModelAndView("admin/admin_movieUpload");
		return m;
	}//insertMovie()
	
}
