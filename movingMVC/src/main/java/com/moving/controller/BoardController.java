package com.moving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller //@Controller �ֳ����̼��� ����ϸ鼭 ������ ��Ʈ�ѷ���� ���� �˷���.
//@RequestMapping("/moving") //��Ʈ�ѷ� Ŭ������ �����ּ� //���� ���ص� �Ǵµ� �ش� ���� ��ġ �˷��ֱ� ���� �־���?
public class BoardController {

	/* @Autowired
	private BoardService boardService; ���� ���� �� �ۼ�*/ 
	
	//��������
	@RequestMapping(value="/board_notice")	
	public ModelAndView board_notice() {
		return new ModelAndView("board/board_notice");
		//�丮���� ���=> /WEB-INF/views/board/board_notice.jsp
		//WEB-INF�� ���� ������ ���ȼ� �����̴�.
	}//board_notice()
	
	//�̺�Ʈ
	@RequestMapping(value="/board_event")
	public ModelAndView board_event() {
		return new ModelAndView("board/board_event");
		//�丮���� ���=> /WEB-INF/views/board/board_event.jsp
	}//board_event()
	
	//FAQ
	@RequestMapping(value="/board_faq")
	public ModelAndView board_faq() {
		return new ModelAndView("board/board_faq");
		//�丮���� ��� => /WEB-INF/views/board/board_faq.jsp
	}//board_faq()
	
	//������
	@RequestMapping(value="/board_actors")
	public ModelAndView board_actors() {
		return new ModelAndView("board/board_actors");
		//�丮���� ���=> /WEB-INF/views/board/board_actors.jsp
	}//board_actors()
	
	//�ó����� ����
	@RequestMapping(value="/board_contest")
	public ModelAndView board_board_contest() {
		return new ModelAndView("board/board_contest");
		//�丮���� ���=> /WEB-INF/views/board/board_contest.jsp
	}//board_contest()
	
	//�����Խ���
	@RequestMapping(value="/board_free")
	public ModelAndView board_free() {
		return new ModelAndView("board/board_free");
		//�丮���� ���=> /WEB-INF/views/board/board_free.jsp
	}//board_free()
	
	//QnA
	@RequestMapping(value="board_qna")
	public ModelAndView board_qna() {
		return new ModelAndView("board/board_qna");
		//�丮���� ���=> /WEB-INF/views/board/board_qna.jsp
	}//board_qna()
	
}//BoardController class
