package com.moving.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.NormalPostDTO;
import com.moving.domain.NormalPostVO;
import com.moving.service.BoardFreeService;

@Controller
public class BoardFreeController {
	
	@Autowired
	private BoardFreeService boardFreeService;

	//게시판 목록 보기
	@RequestMapping("/board/free")
	public ModelAndView board_free_list(
			HttpServletRequest request,
			NormalPostVO bf) throws Exception{ 
		/*페이징 쪽나누기 코드*/
		int page=1; //현재 쪽번호
		int limit=10; //한페이지에 보여지는 목록 개수
		
		if(request.getParameter("page") != null) {
			page=Integer.parseInt(request.getParameter("page"));
			//get으로 전달된 페이지번호를 정수숫자로 바꿔서 저장
		}//if 
		
		bf.setStartrow((page-1)*10+1); //시작행번호
		bf.setEndrow(bf.getStartrow()+limit-1);//끝행번호
		
		int totalCount=this.boardFreeService.getTotalCount(); //총 게시물 수
		List<NormalPostDTO> bflist=this.boardFreeService.getBoardFreeList(bf);
		//게시물 목록을 가져옴
		
		//총페이지 수
		int maxpage=(int)((double)totalCount/limit+0.95);
		//시작 페이지
		int startpage=(((int)((double)page/10+0.9))-1)*10+1;
		//마지막 페이지
		int endpage=maxpage;
		
		if(endpage >  startpage+10-1) {
			endpage=startpage+10-1;
		}//if
		
		ModelAndView bfmlist=new ModelAndView(); //board free ModelAndView list
		
		bfmlist.addObject("totalCount",totalCount);//totalCount키이름에 총게시물 수 저장
		bfmlist.addObject("bflist",bflist);
		bfmlist.addObject("startpage",startpage);
		bfmlist.addObject("endpage",endpage);
		bfmlist.addObject("maxpage",maxpage);
		bfmlist.addObject("page",page);
		
		bfmlist.setViewName("board/board_free"); //뷰리졸브
		
		return bfmlist;
		
	}//board_free_list()
	
	//글쓰기로 이동
	@RequestMapping("/board/free_write")
	public ModelAndView board_free_write(
			HttpSession session,
			HttpServletResponse response,
			HttpServletRequest request) throws Exception{
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) {
		int id=(int)session.getAttribute("id");
		
		if(id==1) {
			return new ModelAndView("board/board_free_write");
		}//if
		
		}else {
			out.println("<script>");
			out.println("alert('글쓰기 권한이 없습니다!');");
			out.println("history.back();");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//free_write()
	
	//글쓰기 완료 후 리스트로 이동
	@RequestMapping("/board/free_write_ok")
	public String board_free_write_ok(NormalPostVO bf,
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		int user_id=(int)session.getAttribute("id");
		
		System.out.println(user_id); // user_id 값 잠시 확인할려고 사용
		
		String test=bf.getContent();
		
		System.out.println(test);
		
		bf.setUserId(user_id);
		this.boardFreeService.inBoardFree(bf);
	
		return "redirect:/board/free";
	}//board_free_write_ok()
	
	//내용보기+조회수 증가
	@RequestMapping("/board/free_cont")
	public ModelAndView board_free_cont(
			int id,
			int page) throws Exception{
		
		//번호에 해당하는 디비 레코드 값을 가져옴.
		NormalPostDTO bfdto=this.boardFreeService.getCont(id);
		
		ModelAndView cm=new ModelAndView("/board/board_free_cont");
		
		//cm.addObject("bf",bf);
		cm.addObject("bfdto",bfdto);
		cm.addObject("page",page);
		
		return cm;
		
	}//board_free_cont()
	
	//게시글 수정
	@RequestMapping("/board/free_edit")
	public String board_free_edit(int id, /*게시글 번호 id*/
			int page,
			Model m,
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();

		
		
		System.out.println(id);
		if(session.getAttribute("id") != null) { /*세션에 값이 있을경우*/
			
		NormalPostDTO bfdto=this.boardFreeService.getCont(id); //글번호 id를 기준으로 검색
		int m_userid=(int) session.getAttribute("id");
		
		
		if(m_userid == bfdto.getNormalPostVO().getUserId()) { //m_user의 id와 normal_post의
			//user_id가 일치한다면
			
			m.addAttribute("bfdto",bfdto);
			m.addAttribute("page",page);
			
			return "board/board_free_edit";
			
		}else { /*본인 게시글 수정이 아닐경우*/
			out.println("<script>");
			out.println("alert('본인 게시글만 수정 가능합니다!');");
			out.println("history.back();");
			out.println("</script>");
		}//if else
		
		}else { /*세션이 값이 없을 경우*/
			out.println("<script>");
			out.println("alert('수정 권한이 없습니다!');");
			out.println("history.back();");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_free_edit()
	
	
	//게시글 수정 완료
	@RequestMapping("/board/free_edit_ok")
	public String board_free_edit_ok(NormalPostVO bf,
			int page,
			HttpServletResponse response) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		
		this.boardFreeService.editBoardFree(bf);
		
		//SUCCESS해서 완료되었음을 알리기
		
		return "redirect:/board/free?page="+page;
		
	}//board_free_edit_ok()
	
	//게시글 삭제
	@RequestMapping("/board/free_del")
	public String board_free_del(int id,int page, //id는 게시물 번호, page는 게시물 페이지
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //session이 null이 아닐경우
			
		int id2=(int)session.getAttribute("id"); //세션 id값 담기
		//int user_id=this.boardFreeService.getCont(id);
		
		//this.boardFreeService.delBoardFree(user_id);
		
		}//if
		
		return "redirect:/board/free?page="+page;
		
	}//board_free_edl()
	
	
	
	
}//BoardFreeController class
