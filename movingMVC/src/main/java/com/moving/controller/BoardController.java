package com.moving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller //@Controller 애노테이션을 등록하면서 스프링 컨트롤러라는 것을 알려줌.
//@RequestMapping("/moving") //컨트롤러 클래스에 매핑주소 //굳이 안해도 되는데 해당 폴더 위치 알려주기 위해 넣어줌?
public class BoardController {

	/* @Autowired
	private BoardService boardService; 서비스 생성 후 작성*/ 
	
	//공지사항
	@RequestMapping(value="/board_notice")	
	public ModelAndView board_notice() {
		return new ModelAndView("board/board_notice");
		//뷰리졸브 경로=> /WEB-INF/views/board/board_notice.jsp
		//WEB-INF에 들어가는 이유는 보안성 때문이다.
	}//board_notice()
	
	//이벤트
	@RequestMapping(value="/board_event")
	public ModelAndView board_event() {
		return new ModelAndView("board/board_event");
		//뷰리졸브 경로=> /WEB-INF/views/board/board_event.jsp
	}//board_event()
	
	//FAQ
	@RequestMapping(value="/board_faq")
	public ModelAndView board_faq() {
		return new ModelAndView("board/board_faq");
		//뷰리졸브 경로 => /WEB-INF/views/board/board_faq.jsp
	}//board_faq()
	
	//배우모집
	@RequestMapping(value="/board_actors")
	public ModelAndView board_actors() {
		return new ModelAndView("board/board_actors");
		//뷰리졸브 경로=> /WEB-INF/views/board/board_actors.jsp
	}//board_actors()
	
	//시나리오 공모
	@RequestMapping(value="/board_contest")
	public ModelAndView board_board_contest() {
		return new ModelAndView("board/board_contest");
		//뷰리졸브 경로=> /WEB-INF/views/board/board_contest.jsp
	}//board_contest()
	
	//자유게시판
	@RequestMapping(value="/board_free")
	public ModelAndView board_free() {
		return new ModelAndView("board/board_free");
		//뷰리졸브 경로=> /WEB-INF/views/board/board_free.jsp
	}//board_free()
	
	//QnA
	@RequestMapping(value="board_qna")
	public ModelAndView board_qna() {
		return new ModelAndView("board/board_qna");
		//뷰리졸브 경로=> /WEB-INF/views/board/board_qna.jsp
	}//board_qna()
	
}//BoardController class
