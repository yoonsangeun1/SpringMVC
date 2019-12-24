package com.moving.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.NormalPostVO;
import com.moving.service.BoardNoticeService;

@Controller  
public class BoardNoticeController {

	@Autowired
	private BoardNoticeService boardNoticeService;
	
	//게시판 목록 보기
	@RequestMapping("/board/notice")
	public ModelAndView board_notice_list(
			HttpServletRequest request,
			NormalPostVO bn) throws Exception{ //bn은 board_notice여서 bn으로 했음.
		
		/*페이징 쪽나누기 코드 */
		int page=1; //현재 쪽번호
		int limit=10; //한페이지에 보여지는 목록 개수
		
		if(request.getParameter("page") != null) {
			page=Integer.parseInt(request.getParameter("page"));
			//get으로 전달된 페이지번호를 정수숫자로 바꿔서 저장
		}//if
		
		String findField=request.getParameter("findField"); //검색필드(콤보박스)
		String findName=request.getParameter("findName"); //검색어
		
		bn.setFindField(findField);
		bn.setFindName("%"+findName+"%"); //%는 오라클에서 앞,뒤 다른 글자 포함해서 찾을때 사용
		
		bn.setStartrow((page-1)*10+1); //시작행 번호
		bn.setEndrow(bn.getStartrow()+limit-1); //끝행번호
		
		int totalCount=this.boardNoticeService.getTotalCount(bn); //검색 전, 후 총 게시물 수
		List<NormalPostVO> bnlist=this.boardNoticeService.getBoardNoticeList(bn);
		//게시물 목록을 가져옴
		
		//총페이지 수
		int maxpage=(int)((double)totalCount/limit+0.95);
		//시작 페이지
		int startpage=(((int)((double)page/10+0.9))-1)*10+1;
		//마지막 페이지
		int endpage=maxpage;
		
		if(endpage > startpage+10-1) {
			endpage=startpage+10-1;
		}//if
		
		ModelAndView bnmlist=new ModelAndView(); //board notice ModelAndView list
		
		bnmlist.addObject("totalCount",totalCount); //totalCount 키이름에 총게시물 수 저장
		bnmlist.addObject("bnlist",bnlist);
		bnmlist.addObject("startpage",startpage);
		bnmlist.addObject("endpage",endpage);
		bnmlist.addObject("maxpage",maxpage);
		bnmlist.addObject("page",page);
		bnmlist.addObject("findField",findField);
		bnmlist.addObject("findName",findName);
		
		bnmlist.setViewName("board/board_notice"); //뷰리졸브
		
		return bnmlist;
		
	}//board_notice_list
	
	
}//BoardNoticeController class
