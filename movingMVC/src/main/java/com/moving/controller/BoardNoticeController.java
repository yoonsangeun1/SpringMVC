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
	
	/*//글쓰기로 이동
	@RequestMapping("/board/notice_write")
	public ModelAndView board_notice_write(
			HttpSession session,
			HttpServletResponse response,
			HttpServletRequest request) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //세션으로 id 값이 있을경우
			int id=(int)session.getAttribute("id");
			
			if(id != 0) {
				return new ModelAndView("board/board_notice_write");
			}//if
		}else {
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_notice_write()
	
	//글쓰기로 완료 후 리스트로 이동
	@RequestMapping("/board/notice_write_ok")
	public String board_free_write_ok(NormalPostVO bn,
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session,
			RedirectAttributes rttr) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) {
			
			int user_id=(int)session.getAttribute("id"); //세션으로 id를 user_id에 저장
			
			bn.setUserId(user_id); //NormalPostVO bn.setUserId에 id 값을 넣어둠.
			
			this.boardNoticeService.inBoardNotice(bn);//bn값을 기준으로 글쓰기 완료하기
			
			rttr.addFlashAttribute("msg","BOARD/NOTICE_INSERT");
			
			return "redirect:/board/notice"; //목록으로 이동
			
		}else { //넘겨온 id값이 없을경우, 또는 세션 만료되었을 경우
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_notice_write_ok()
*/	
	
	//내용보기+조회수 증가 //관리자쪽에선 조회수가 필요 없을 수도 있음?
	@RequestMapping("/board/notice_cont")
	public ModelAndView board_notice_cont(
			int id, //id는 게시글 시퀀스 id
			int page,
			String findField,
			String findName) throws Exception{
		
		//번호에 해당하는 디비 레코드값을 가져옴
		NormalPostVO bn=this.boardNoticeService.getCont(id);
		
		ModelAndView cm=new ModelAndView("/board/board_notice_cont");
		
		cm.addObject("findField",findField);
		cm.addObject("findName",findName);
		cm.addObject("bn",bn);
		cm.addObject("page",page);
		
		return cm;
		
	}//board_notice_cont()
	
	/*//게시글 수정
	@RequestMapping("/board/notice_edit")
	public String board_notice_edit(int id, //게시글 번호 id
			int page,						//페이지
			Model m,						
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //세션에 값이 있을 경우
			
			NormalPostVO bn=this.boardNoticeService.getCont(id); //글번호 id를 기준으로 검색
			
			int m_userid=(int)session.getAttribute("id"); //세션으로 받아온 id를 m_userid에 저장
			
			if(m_userid == bn.getUserId()) { //m_user의 id와 normal_post의
				//user_id가 일치한다면
				
				m.addAttribute("bn",bn);
				m.addAttribute("page",page);
				m.addAttribute("id",id);
				
				return "board/board_notice_edit"; //view페이지로 이동
				
			}else { //본인 게시글 수정이 아닐경우 // 즉 해당 글을 쓴 관리자만 수정 가능?하게
				out.println("<script>");
				out.println("alert('본인 게시글만 수정 가능합니다!');");
				out.println("history.back();");
				out.println("</script>");
			}// if else
			
		}else { //세션에 값이 없을 경우
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_notice_edit()
	
	//게시글 수정 완료
	@RequestMapping("/board/notice_edit_ok")
	public String board_notice_edit_ok(NormalPostVO bn,
			int page,
			int id,
			RedirectAttributes rttr) throws Exception{
		
		this.boardNoticeService.editBoardNotice(bn);
		
		rttr.addFlashAttribute("msg","BOARD/NOTICE_EDIT");
		
		return "redirect:/board/notice_cont?id="+id+"&page="+page; //해당 내용보기 페이지로 이동
		
	}//board_notice_edit_ok()
	
	//게시글 삭제
	@RequestMapping("/board/notice_del")
	public String board_notice_del(int id,int page,
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session,
			RedirectAttributes rttr) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //세션에 값이 있을 경우
			
			NormalPostVO bn=this.boardNoticeService.getCont(id); //글번호 id를 기준으로 검색
			
			int m_userid=(int)session.getAttribute("id"); //세션으로 받아온 id를 m_userid에 저장
			
			if(m_userid == bn.getUserId()) { //m_user의 id와 normal_post의 user_id가 일치한다면
				
				this.boardNoticeService.delBoardNotice(id);
				
				rttr.addFlashAttribute("msg","BOARD/NOTICE_DEL"); //삭제 msg 전달
				
				return "redirect:/board/notice?page="+page; //view 페이지로 이동
				
			}else { //본인 게시글 삭제가 아닐경우
				out.println("<script>");
				out.println("alert('본인 게시글만 삭제 가능합니다!');");
				out.println("history.back();");
				out.println("</script>");
			}//if else
			
		}else { //세션에 값이 없을 경우
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_notice_del()
*/
}//BoardNoticeController class
