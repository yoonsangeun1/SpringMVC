//package com.moving.controller;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.moving.domain.NormalPostVO;
//
//@RequestMapping(value="/admin")
//@Controller
//public class AdminBoardController {
//
//	/* 게시판 관리 */
//	@RequestMapping(value="/board")
//	public ModelAndView board(@ModelAttribute NormalPostVO np,Model m,HttpServletRequest request) {
//		int page=1; // 쪽번호
//		int limit=10; // 한 페이지에 보여지는 목록 개수
//		if(request.getParameter("page") != null) { // get으로 전달된 페이지 번호가 있는 경우
//			page=Integer.parseInt(request.getParameter("page")); // 페이지 번호를 정수숫자로 바꿔서 저장
//		} // if
//		String findName=request.getParameter("findName"); // 검색어
//		String findField=request.getParameter("findField"); // 검색 필드
//		return new ModelAndView("admin/admin_board");
//	}//board()
//}
