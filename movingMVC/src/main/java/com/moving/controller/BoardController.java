package com.moving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller 
//@RequestMapping("/board")
public class BoardController {

	/* @Autowired
	private BoardService boardService; 서비스 생성 후 작성*/ 

	//공지사항
	@RequestMapping(value="/board/notice")	
	public ModelAndView notice() {
		return new ModelAndView("board/board_notice");
	}//notice()

	//공모전
	@RequestMapping(value="/board/contest")
	public ModelAndView contest() {
		return new ModelAndView("board/board_contest");
	}//contest()

	//FAQ
	@RequestMapping(value="/board/faq")
	public ModelAndView faq() {
		return new ModelAndView("board/board_faq");
	}//faq()

	//배우 프로필
	@RequestMapping(value="/board/actors")
	public ModelAndView actors() {
		return new ModelAndView("board/board_actors");
	}//actors()

	//이벤트
	@RequestMapping(value="/board/event")
	public ModelAndView event() {
		return new ModelAndView("board/board_event");
	}//event()

	//자유게시판
	@RequestMapping(value="/board/free")
	public ModelAndView free() {
		return new ModelAndView("board/board_free");
	}//free()

	//QnA
	@RequestMapping(value="/board/qna")
	public ModelAndView qna() {
		return new ModelAndView("board/board_qna");
	}//qna()

	//글 작성
	@RequestMapping(value="/write")
	public ModelAndView write() {
		return new ModelAndView("board/board_write");
	}//write()

}//BoardController class
