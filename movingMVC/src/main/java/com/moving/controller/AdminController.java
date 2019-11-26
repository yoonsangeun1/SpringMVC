package com.moving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	/* 관리자 홈 */
	@RequestMapping(value="/admin_index",method=RequestMethod.GET)//GET방식으로 접근하는 매핑주소 처리-> board_write매핑주소 등록
	
	public ModelAndView admin_index() {
		return new ModelAndView("admin_index");
		//뷰 리졸브 경로-> /WEB-INF/views/admin_index.jsp
	}//admin_index()
	
	/* 게시판 관리 */
	@RequestMapping(value="/admin_board",method=RequestMethod.GET)//GET방식으로 접근하는 매핑주소 처리-> board_write매핑주소 등록
	
	public ModelAndView admin_board() {
		return new ModelAndView("admin/admin_board");
		//뷰 리졸브 경로-> /WEB-INF/views/admin/admin_board.jsp
	}//board_write()
	
	/* 펀딩 관리 */
	@RequestMapping(value="/admin_funding",method=RequestMethod.GET)//GET방식으로 접근하는 매핑주소 처리-> board_write매핑주소 등록
	
	public ModelAndView admin_funding() {
		return new ModelAndView("admin/admin_funding");
		//뷰 리졸브 경로-> /WEB-INF/views/admin/admin_funding.jsp
	}//board_write()
	
	/* 회원 관리 */
	@RequestMapping(value="/admin_member",method=RequestMethod.GET)//GET방식으로 접근하는 매핑주소 처리-> board_write매핑주소 등록
	
	public ModelAndView admin_member() {
		return new ModelAndView("admin/admin_member");
		//뷰 리졸브 경로-> /WEB-INF/views/admin/admin_member.jsp
	}//board_write()
	
	/* General */
	@RequestMapping(value="/admin_general",method=RequestMethod.GET)//GET방식으로 접근하는 매핑주소 처리-> board_write매핑주소 등록
	
	public ModelAndView admin_general() {
		return new ModelAndView("admin/admin_general");
		//뷰 리졸브 경로-> /WEB-INF/views/admin/admin_general.jsp
	}//board_write()
	
	/* 대쉬보드 */
	@RequestMapping(value="/admin_dashboard",method=RequestMethod.GET)//GET방식으로 접근하는 매핑주소 처리-> board_write매핑주소 등록
	
	public ModelAndView admin_dashboard() {
		return new ModelAndView("admin/admin_dashboard");
		//뷰 리졸브 경로-> /WEB-INF/views/board/admin_dashboard.jsp
	}//board_write()
	
	/* 영화 관리 */
	@RequestMapping(value="/admin_movie",method=RequestMethod.GET)//GET방식으로 접근하는 매핑주소 처리-> board_write매핑주소 등록
	
	public ModelAndView admin_movie() {
		return new ModelAndView("admin/admin_movie");
		//뷰 리졸브 경로-> /WEB-INF/views/admin/admin_movie.jsp
	}//board_write()
	
	/* 영화 관리 */
	@RequestMapping(value="/admin_movieUpload",method=RequestMethod.GET)//GET방식으로 접근하는 매핑주소 처리-> board_write매핑주소 등록
	
	public ModelAndView admin_movieUpload() {
		return new ModelAndView("admin/admin_movieUpload");
		//뷰 리졸브 경로-> /WEB-INF/views/admin/admin_movieUpload.jsp
	}//board_write()
	
}
