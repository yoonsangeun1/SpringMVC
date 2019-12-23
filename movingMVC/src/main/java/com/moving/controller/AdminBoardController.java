package com.moving.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.NormalPostVO;
import com.moving.service.AdminBoardService;

@RequestMapping(value="/admin")
@Controller
public class AdminBoardController {
	
	@Autowired
	private AdminBoardService adminBoardService;
	
	/* 게시판 관리 목록 */
	@RequestMapping(value="/board")
	public ModelAndView board(@ModelAttribute NormalPostVO np,Model m,HttpServletRequest request) {
		int page=1; // 쪽번호
		int limit=10; // 한 페이지에 보여지는 목록 개수
		if(request.getParameter("page") != null) { // get으로 전달된 페이지 번호가 있는 경우
			page=Integer.parseInt(request.getParameter("page")); // 페이지 번호를 정수숫자로 바꿔서 저장
		} // if
		String findName=request.getParameter("findName"); // 검색어
		String findField=request.getParameter("findField"); // 검색 필드
		
		np.setFindField(findField);
		np.setFindName("%"+findName+"%");
		
		int boardCount=this.adminBoardService.boardCount(np); // 총 게시물 수
		np.setStartrow((page-1)*10+1);
		np.setEndrow(np.getStartrow()+limit-1);
		
		List<NormalPostVO> nplist=this.adminBoardService.boardList(np); // 총 게시물 목록
		
		int maxpage=(int)((double)boardCount/limit+0.95); // 총 페이지
		int startpage=(((int)((double)page/10+0.9))-1)*10+1; // 시작 페이지
		int endpage=maxpage; // 마지막 페이지
		
		if(endpage > startpage +10 -1)
			endpage=startpage +10 -1;
		
		ModelAndView npmlist=new ModelAndView();
		
		npmlist.addObject("nplist",nplist); // nplist 키 이름에 nplist 컬렉션 저장
		npmlist.addObject("page",page);
		npmlist.addObject("startpage",startpage);
		npmlist.addObject("endpage",endpage);
		npmlist.addObject("maxpage",maxpage);
		npmlist.addObject("boardCount",boardCount);
		npmlist.addObject("findField",findField);
		npmlist.addObject("findName",findName);
		npmlist.setViewName("admin/admin_board"); // 뷰 리졸브 경로
		
		return npmlist;
	}//board()
}
