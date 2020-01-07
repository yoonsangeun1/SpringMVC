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
import com.moving.domain.ReplyPostVO;
import com.moving.service.BoardReplyService;

@Controller
public class BoardQnaController { /*질문게시판 컨트롤러*/

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
		
		response.setContentType("text/html; charset=UTF-8");
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
	
	//글쓰기 완료 후 리스트로 이동
	@RequestMapping("/board/qna_write_ok")
	public String board_qna_write_ok(ReplyPostVO bq,
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session,
			RedirectAttributes rttr) throws Exception{
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //세션에 id가 있으면
			
			int user_id=(int)session.getAttribute("id");
			
			bq.setUserId(user_id);
			
			this.boardReplyService.inBoardQna(bq);
			
			rttr.addFlashAttribute("msg","BOARD/QNA_INSERT");
			
			return "redirect:/board/qna"; //목록으로 이동
			
		}else { //세션에 값이 없으면
			
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
			
		}//if else
		
		return null;
		
	}//board_qna_write_ok
	
	//내용보기+조회수 증가
	@RequestMapping("/board/qna_cont")
	public ModelAndView board_qna_cont(
			int id,
			int page,
			String findField,
			String findName) throws Exception{
		
		//번호에 해당하는 디비 레코드 값을 가져옴.
		ReplyPostVO bq=this.boardReplyService.getCont(id);
		
		ModelAndView cm=new ModelAndView("/board/board_qna_cont");
		
		cm.addObject("bq",bq);
		cm.addObject("page",page);
		cm.addObject("findField",findField);
		cm.addObject("findName",findName);
		
		return cm;
		
	}//board_qna_cont()
	
	//질문 게시글 수정
	@RequestMapping("/board/qna_edit")
	public String board_qna_edit(int id,
			int page,
			Model m,
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session) throws Exception{
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //세션 id가 있으면
			
			ReplyPostVO bq=this.boardReplyService.getCont2(id);
			
			int m_userid=(int) session.getAttribute("id");
			
			if(m_userid == bq.getUserId()) { //m_user의 id와 reply_post의 user_id가 일치한다면
				
				m.addAttribute("bq",bq);
				m.addAttribute("page",page);
				m.addAttribute("id",id);
				
				return "board/board_qna_edit";
				
			}else { /*본인 게시글이 아닌경우*/
				out.println("<script>");
				out.println("alert('본인 게시글만 수정 가능합니다!');");
				out.println("history.back();");
				out.println("</script>");
			}//if else
			
		}else { /*세션에 값이 없을 경우*/
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_qna_edit()
	
	//게시글 수정 완료
	@RequestMapping("/board/qna_edit_ok")
	public String board_qna_edit_ok(ReplyPostVO bq,
			int page,
			int id,
			RedirectAttributes rttr) throws Exception{
		
		this.boardReplyService.editBoardQna(bq);
		
		rttr.addFlashAttribute("msg","BOARD/QNA_EDIT");
		
		return "redirect:/board/qna_cont?id="+id+"&page="+page;
		
	}//board_qna_edit_ok
	
	@RequestMapping("/board/qna_del")	
	public String board_qna_del(int id,
			int page,
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session,
			RedirectAttributes rttr) throws Exception{
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //세션에 값이 있을 경우
			
			ReplyPostVO bq=this.boardReplyService.getCont2(id);
			
			int m_userid=(int) session.getAttribute("id");
			
			if(m_userid == bq.getUserId()) { /*본인 게시글일 경우*/
				
				int replycheck=this.boardReplyService.selectReply(id); //아이디를 기준으로 답변글이 있는지 확인하기 위함.
				
				if(replycheck >= 1) { /*1 이상일 경우 */
					out.println("<script>");
					out.println("alert('답변이 등록된 게시물이나 답변글은 삭제 불가능합니다!');");
					out.println("history.back();");
					out.println("</script>");
				}else { /* 0이상이 아닐경우 */
				
				this.boardReplyService.delBoardQna(id);
				
				rttr.addFlashAttribute("msg","BOARD/QNA_DEL");
				
				return "redirect:/board/qna?page="+page;
				
				}//if else
				
			}else { //본인 게시글이 아닐경우
				rttr.addFlashAttribute("msg","BOARD/QNA_CONT_X");
				return "redirect:/board/qna_cont?id="+id+"&page="+page;
			}//if else
			
		}else { //세션에 값이 없을 경우
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_qna_del()
	
	@RequestMapping("/board/qna_reply")
	public ModelAndView board_qna_reply(
			int id,
			int page,
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session) throws Exception{
		
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out=response.getWriter();
			session=request.getSession();
			String user_lv=(String)session.getAttribute("user_lv");
			if(session.getAttribute("id") != null && user_lv.equals("관리자")) { //세션 id가 있으면
				
				ReplyPostVO bq=this.boardReplyService.getCont2(id);
				
				int replycheck=this.boardReplyService.selectReply(id); //아이디를 기준으로 답변글이 있는지 확인하기 위함.
				
				System.out.println(id);
				System.out.println(replycheck);
				
				if(replycheck >= 1) { /*1 이상일 경우 */
					out.println("<script>");
					out.println("alert('답변글이 등록 된 게시글이거나 답변글에 답변글은 작성 불가능합니다!');");
					out.println("history.back();");
					out.println("</script>");
				}else { /* 0일 경우 */
					
				ModelAndView cm=new ModelAndView();
				
					cm.addObject("bq",bq);
					cm.addObject("page",page);
					cm.setViewName("board/board_qna_reply"); //reply 페이지 ,답변 페이지
					
					return cm;
					
				}//if else
	
			}else { /*세션에 값이 없을 경우*/
				out.println("<script>");
				out.println("alert('로그인을 해주세요!');");
				out.println("location='/moving.com/member/login';");
				out.println("</script>");
			}//if else
			
			return null;
		
	}//board_qna_reply()
	
	//답변 글쓰기 완료 후 목록보기로 이동
	@RequestMapping("/board/qna_reply_ok")
	public String board_qna_reply_ok(
			int id,
			int page,
			ReplyPostVO bq,
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session) throws Exception{
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) {
			
			int user_id=(int)session.getAttribute("id");
			
			System.out.println(id);
			
			bq.setUserId(user_id);
			bq.setReplyStep(id);
			
			this.boardReplyService.replyBoardQna(bq); //답변 저장
	
			return "redirect:/board/qna?page="+page;
			
		}else { // 넘겨온 id 값이 없을경우, 또는 세션 만료되었을 경우?
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;

	}//board_qna_reply_ok()
	
	
	
}//BoardReplyController
