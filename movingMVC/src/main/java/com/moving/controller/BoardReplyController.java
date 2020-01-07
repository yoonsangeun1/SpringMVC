package com.moving.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.NormalPostVO;
import com.moving.domain.ReplyPostVO;
import com.moving.service.BoardReplyService;

@Controller
public class BoardReplyController { /*질문게시판 컨트롤러*/

	@Autowired
	private BoardReplyService boardReplyService;
	
	//게시판 목록
	@RequestMapping("/board/qna")
	public ModelAndView board_qna_list(
			HttpServletRequest request,
			ReplyPostVO bq) { //bq는 board_qna
		
		/* 페이징 쪽 나누기 */
		int page=1; //현재 쪽번호
		int limit=10; //한페이지에 보여지는 목록 개수
		
		if(request.getParameter("page") != null) {
			page=Integer.parseInt(request.getParameter("page"));
			//get으로 전달된 페이지번호를 정수숫자로 바꿔서 저장
		}//if
		
		String findField=request.getParameter("findField"); //검색필드(콤보박스)
		String findName=request.getParameter("findName"); //검색어
		
		bq.setFindField(findField);
		bq.setFindName("%"+findName+"%");
		
		bq.setStartrow((page-1)*10+1); //시작행번호
		bq.setEndrow(bq.getStartrow()+limit-1); //끝행번호
		
		int totalCount=this.boardReplyService.getTotalCount(bq); //검색 전 , 후 총 게시물 수
		List<NormalPostVO> bqlist=this.boardReplyService.getBoardQnaList(bq);
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
		
		ModelAndView bqmlist=new ModelAndView(); //board qna ModelAndView list
		
		bqmlist.addObject("totalCount",totalCount); //총 게시물 수
		bqmlist.addObject("bqlist",bqlist);
		bqmlist.addObject("startpage",startpage);
		bqmlist.addObject("endpage",endpage);
		bqmlist.addObject("maxpage",maxpage);
		bqmlist.addObject("page",page);
		bqmlist.addObject("findField",findField);
		bqmlist.addObject("findName",findName);
		
		bqmlist.setViewName("board/board_qna"); //뷰리졸브
		
		return bqmlist;
		
	}//board_qna
	
	//글쓰기
	@RequestMapping("/board/qna_write")
	public ModelAndView board_qna_write(
			int page,
			HttpSession session,
			HttpServletResponse response,
			HttpServletRequest request)throws Exception{
		
		response.setContentType("text/charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) {//세션 id값이 있을경우
			int id=(int)session.getAttribute("id");
			
			ModelAndView qw=new ModelAndView("board/board_qna_write");
			qw.addObject("page",page);
			
			if(id != 0) {
				return qw;
			}//if
			
		}else { //세션에 값이 없을경우
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_qna_write
	
	
	
	
}//BoardReplyController
