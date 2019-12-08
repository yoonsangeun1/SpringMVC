package com.moving.controller;

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
		
		System.out.println(startpage+","+endpage);
		
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
		
		System.out.println(user_id); // user_id 값 잠시 확인할려고 사용함.
		
		NormalPostVO b=new NormalPostVO();
		b.setUserId(user_id);
		this.boardFreeService.inBoardFree(b);
	
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
	public String board_free_edit(int free_id,int page,Model m) {
		
		NormalPostDTO bfdto=this.boardFreeService.getCont(free_id);
		
		m.addAttribute("bfdto",bfdto);
		m.addAttribute("page",page);
		
		return "board/board_free_edit";
		
	}//board_free_edit()
	
	
	//게시글 수정 완료
	@RequestMapping("/board/free_edit_ok")
	public String board_free_edit_ok(NormalPostVO bf,int page) {
		
		this.boardFreeService.editBoardFree(bf);
		
		return "redirect:/board/free?page="+page;
		
	}//board_free_edit_ok()
	
	//게시글 삭제
	@RequestMapping("/board/free_del")
	public String board_free_del(int free_id,int page) {
		
		this.boardFreeService.delBoardFree(free_id);
		
		return "redirect:/board/free?page="+page;
		
	}//board_free_edl()
	
	
	
	
}//BoardFreeController class
