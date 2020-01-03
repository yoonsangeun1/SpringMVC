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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
			NormalPostVO bf) throws Exception{  // bf는 boardfree 여서 bf이다.
		/*페이징 쪽나누기 코드*/
		int page=1; //현재 쪽번호
		int limit=10; //한페이지에 보여지는 목록 개수
		
		if(request.getParameter("page") != null) {
			page=Integer.parseInt(request.getParameter("page"));
			//get으로 전달된 페이지번호를 정수숫자로 바꿔서 저장
		}//if 
		
		String findField=request.getParameter("findField"); //검색필드(콤보박스)
		String findName=request.getParameter("findName"); //검색어
		
		bf.setFindField(findField);
		bf.setFindName("%"+findName+"%");// %는 오라클에서 앞이나 뒤에서  
		//다른 글자 포함해서? 찾을때 사용
		
		bf.setStartrow((page-1)*10+1); //시작행번호
		bf.setEndrow(bf.getStartrow()+limit-1);//끝행번호
		
		int totalCount=this.boardFreeService.getTotalCount(bf); //검색 전, 후 총 게시물 수
		List<NormalPostVO> bflist=this.boardFreeService.getBoardFreeList(bf);
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
		bfmlist.addObject("findField",findField);
		bfmlist.addObject("findName",findName);
		
		bfmlist.setViewName("board/board_free"); //뷰리졸브
		
		return bfmlist;
		
	}//board_free_list()
	
	//글쓰기로 이동
	@RequestMapping("/board/free_write")
	public ModelAndView board_free_write(
			int page,
			HttpSession session,
			HttpServletResponse response,
			HttpServletRequest request) throws Exception{
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //세션으로 id 값이 있을경우.
		int id=(int)session.getAttribute("id");
		
		ModelAndView fw=new ModelAndView("board/board_free_write");
		fw.addObject("page",page); //페이지 값을 넘겨줌.
		
		if(id != 0) {
			return fw;
		}//if
		
		}else {
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//free_write()
	
	//글쓰기 완료 후 리스트로 이동
	@RequestMapping("/board/free_write_ok")
	public String board_free_write_ok(NormalPostVO bf,
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session,
			RedirectAttributes rttr) throws Exception{
		//RedirectAttributes는 글쓰기 완료 후 값을 넘겨줌으로써, 넘겨 받은 메시지가
		//board/free에서 일치하는 메시지에 따른 알림창을 띄울 것임.
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) {
			
		int user_id=(int)session.getAttribute("id"); //세션으로 받아온 id를 user_id에 저장
		
		bf.setUserId(user_id); // NormalPostVO bf.setUserId에 id 값을 넣어둠.
		
		this.boardFreeService.inBoardFree(bf); //bf 값을 기준으로 글쓰기 완료하기
		
		rttr.addFlashAttribute("msg","BOARD/FREE_INSERT");
	
		return "redirect:/board/free"; //목록으로 이동
		
		}else { // 넘겨온 id 값이 없을경우, 또는 세션 만료되었을 경우?
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
		
	}//board_free_write_ok()
	
	//내용보기+조회수 증가
	@RequestMapping("/board/free_cont")
	public ModelAndView board_free_cont(
			int id,
			int page) throws Exception{
		
		//번호에 해당하는 디비 레코드 값을 가져옴.
		NormalPostVO bf=this.boardFreeService.getCont(id);
		
		ModelAndView cm=new ModelAndView("/board/board_free_cont");
		
		cm.addObject("bf",bf);
		cm.addObject("page",page);
		
		return cm;
		
	}//board_free_cont()
	
	//게시글 수정
	@RequestMapping("/board/free_edit")
	public String board_free_edit(int id, /*게시글 번호 id*/
			int page,					  /*페이지*/
			Model m,					  /*MODEL값만 넘길때 사용?하나봄.*/
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();

		if(session.getAttribute("id") != null) { /*세션에 값이 있을경우*/
			
		NormalPostVO bf=this.boardFreeService.getCont(id); //글번호 id를 기준으로 검색
		
		int m_userid=(int) session.getAttribute("id"); //세션으로 받아온 id를 m_userid에 저장
		
		if(m_userid == bf.getUserId()) { //m_user의 id와 normal_post의
			//user_id가 일치한다면
			
			m.addAttribute("bf",bf);
			m.addAttribute("page",page);
			m.addAttribute("id",id);
			
			return "board/board_free_edit"; //view 페이지로 이동.
			
		}else { /*본인 게시글 수정이 아닐경우*/
			out.println("<script>");
			out.println("alert('본인 게시글만 수정 가능합니다!');");
			out.println("history.back();");
			out.println("</script>");
		}//if else
		
		}else { /*세션이 값이 없을 경우*/
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_free_edit()
	
	
	//게시글 수정 완료
	@RequestMapping("/board/free_edit_ok")
	public String board_free_edit_ok(NormalPostVO bf,
			int page,
			int id,
			RedirectAttributes rttr) throws Exception {	
		
		this.boardFreeService.editBoardFree(bf);
		
		rttr.addFlashAttribute("msg","BOARD/FREE_EDIT");
		
		return "redirect:/board/free_cont?id="+id+"&page="+page; // 해당 내용보기 페이지로 이동
		
	}//board_free_edit_ok()
	
	//게시글 삭제
	@RequestMapping("/board/free_del")
	public String board_free_del(int id,int page, //id는 게시물 번호, page는 게시물 페이지
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session,
			RedirectAttributes rttr) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { /*세션에 값이 있을경우*/
			
			NormalPostVO bf=this.boardFreeService.getCont(id); //글번호 id를 기준으로 검색
			
			int m_userid=(int) session.getAttribute("id"); //세션으로 받아온 id를 m_userid에 저장		
			
			if(m_userid == bf.getUserId()) { //m_user의 id와 normal_post의
				//user_id가 일치한다면
				
				this.boardFreeService.delBoardFree(id);
				
				rttr.addFlashAttribute("msg","BOARD/FREE_DEL"); //삭제 msg 전달
				
				return "redirect:/board/free?page="+page; //view 페이지로 이동.
				
			}else { /*본인 게시글 삭제가 아닐경우*/
				out.println("<script>");
				out.println("alert('본인 게시글만 삭제 가능합니다!');");
				out.println("history.back();");
				out.println("</script>");
			}//if else
			
			}else { /*세션이 값이 없을 경우*/
				out.println("<script>");
				out.println("alert('로그인을 해주세요!');");
				out.println("location='/moving.com/member/login';");
				out.println("</script>");
			}//if else
		
			return null;
		
	}//board_free_del()
	
	
	
	
}//BoardFreeController class
